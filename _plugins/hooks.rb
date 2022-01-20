require 'cgi'
require 'poparser'
require_relative 'po_utils'

Jekyll::Hooks.register :site, :pre_render do |site|
    # Replace start_liquid and end_liquid tag: they are used to hide STK liquid tags from transifex
    # See https://github.com/transifex/openformats/issues/69#issuecomment-966003024
    for page in site.pages do
        new_content = page.content.gsub(/{%(-)?(\s*)?start_liquid(.*?)%}/).each do |sl|
            '{% ' + sl.scan(/start_liquid (.*?)%/)[0][0].strip
        end
        new_content.gsub!(/{%(-)?(\s*)?end_liquid(.*?)%}/, '%}')
        # Use {% wikitable %} in .md file to make transifex parser happy
        # Usage (notice newline after):
        # {% wikitable %}
        #
        # | column | column |
        new_content.gsub!(/{%(-)?(\s*)?wikitable(.*?)%}/, '<!-- wikitable -->')
        page.content = new_content
    end

    # Add page lang properties to redirection pages
    # So translate tag can be used on them
    for page in site.pages do
    next if page.data['layout'] != 'redirect'
        page.data['lang'] = 'en'
        page_lang = page.data['permalink'].split('/')[1]
        page.data['lang'] = page_lang if page_lang
    end

    for page in site.pages do
    next if page.data['layout'] != 'stk-wiki' or not page.data['lang']
        toc_include =
'<h2 id="toc_header" style="margin: 0px">{%translate_span Contents,Table of contents which display near the top of each page%}</h2>
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

Jekyll::Hooks.register :pages, :post_convert do |page|
    if page.data['layout'] != 'stk-wiki' or not page.data['lang'] then
        next
    end
    site = page.site
    # Add wikitable class to table if needed
    page.content.gsub!("<!-- wikitable -->\n\n<table>", "<table class=\"wikitable\">")

    # Hide table of contents if toc is false
    if not page.data.include?('toc') or page.data['toc'] == false then
        page.content.sub!('<h2 id="toc_header" style="margin: 0px"', '<h2 style="display: none;"');
        page.content.sub!('<ul id="markdown-toc">', '<ul style="display: none;" id="markdown-toc">');
    end

    # Remove tabs, replace newlines with whitespace, so paragraph is separated with whitespace
    article = page.content.delete("\t").gsub("\n", " ")
    first_paragraph = article.index('</p>')
    if first_paragraph != nil then
        article = article[0 .. first_paragraph + 4]
    end
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
        # Convert escaped entities
        :content => CGI.unescapeHTML(article_content)
    }
    site.data['searchdata'].push(data)
    # Mark missing page link as red and translate URL
    # This removes unneeded redirection in pages
    lang = page.data['lang']
    page_translations = site.data['page_translations']
    all_pages = site.data['all_pages']
    page.content.gsub!(/<a href=\"(.*?)\"/).each do |link|
        url = link[/"(.*?)"/].delete('"')
        url_without_number_sign = url.split("#")[0]
        missing_page = false
        if all_pages.include?(url_without_number_sign) then
            result = 'href="' + STKWebsite::translate_url(url, lang, site.baseurl, page_translations) + '"'
        else
            missing_page = true if not url.start_with?('#') and not url.include?('/')
            result = 'href="' + url + '"'
        end
        result = 'style="color: #ba0000;" ' + result if missing_page
        '<a ' + result
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
    pot_file = site.data['po']['stk-website']['pot']
    pot_file.path = '_translations/stk-website.pot'
    pot_file.save_file

    searchdata = site.pages.select {|page| page.name == 'searchdata.js'}[0]
    searchdata.output = 'var jsondata = ' + site.data['searchdata'].to_json + ";\n" +
        'var translations = ' + site.data['searchdata_translations'].to_json + ";\n" + searchdata.output
end
