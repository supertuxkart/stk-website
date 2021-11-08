require 'poparser'
require_relative 'po_utils'

Jekyll::Hooks.register :site, :pre_render do |site|
    for page in site.pages do
    next if not page.data.include?('toc') or page.data['toc'] == false
        toc_include =
'<h2 style="margin: 0px">{%translate_span Contents,Table of contents which display near the top of each page%}</h2>
* TOC
{:toc}'
        first_header = page.content.index("\n##")
        if page.content.start_with?('## ') then
            page.content.insert(0, toc_include + "\n")
        elsif first_header != nil then
            page.content.insert(first_header, "\n" + toc_include)
        end
    end
end

Jekyll::Hooks.register :site, :post_render do |site|
    # Put css inside each page, do it in post_render so liquid syntax can be
    # used in .css files too
    css = {}
    site.pages.reverse_each do |page|
    next if File.extname(page.name) != '.css'
        css[File.basename(page.name, '.css') + '.md'] = page.output
        site.pages.delete(page)
    end

    markdown_match = '<ul id="markdown-toc">'
    for page in site.pages do
    next if not css.include?(page.name) and not page.output.include?(markdown_match)
        if position = page.output.index(markdown_match) then
            lang = page.data['lang']
            markdown_toggle = '<span id="markdown-opening-bracket"></span><input type="checkbox" id="markdown-callback"><label id="markdown-toggle" data-show-text="' +
PoUtils::translate_string(site, lang, 'Show', 'Toggle for table of contents', true) +
'" data-hide-text="' +
PoUtils::translate_string(site, lang, 'Hide', 'Toggle for table of contents', true) +
'" for="markdown-callback"></label><span id="markdown-closing-bracket"></span>
'
            page.output.insert(position, markdown_toggle)
        end
        if css.include?(page.name) then
            page.output.sub! "/* Add Page_Name.css with Page_Name.md */\n", css[page.name]
        end
    end

    for page in site.pages do
    next if page.name != 'lang_redirect.js'
        page.output = 'var translations = ' +
            site.data['js_translations'].to_json + ";\n" + page.output
    end
    pot_file = site.data['po']['stk-website']
    pot_file.path = '_translations/stk-website.pot'
    pot_file.save_file

    search_json = []
    for page in site.pages do
    next if not page.data['lang']
        # Remove tabs, replace newlines with whitespace so we can get content in article tag
        article = page.output.delete("\t").gsub("\n", " ").match(/<article>(.*)<\/article>/)[1]
        # Remove all HTML tags, leading and trailing whitespaces
        article_content = article.gsub(/<\/?[^>]*>/, "").squeeze(" ").lstrip.rstrip
        url = page.url
        if site.baseurl then
            url = site.baseurl + url
        end
        data =
        {
            :title => page.data['title'],
            :url => url,
            :content => article_content
        }
        search_json.push(data)
    end
    searchdata = site.pages.select {|page| page.name == 'searchdata.js'}[0]
    searchdata.output = 'var jsondata = ' + search_json.to_json + ";\n" +
        'var translations = ' + site.data['searchdata_translations'].to_json + ";\n" + searchdata.output
end
