require 'poparser'

Jekyll::Hooks.register :site, :post_render do |site|
    for page in site.pages do
    next if page.name != 'lang_redirect.js'
        page.output = 'var translations = ' +
            site.data['js_translations'].to_json + ";\n" + page.output
    end
    pot_file = site.data['po']['stk-website']
    pot_file.path = '_translations/stk-website.pot'
    pot_file.save_file

    # Put css inside each page, do it in post_render so liquid syntax can be
    # used in .css files too
    css = {}
    site.pages.reverse_each do |page|
    next if File.extname(page.name) != '.css'
        css[File.basename(page.name, '.css') + '.md'] = page.output
        site.pages.delete(page)
    end

    for page in site.pages do
    next if not css.include?(page.name)
        page.output.sub! "/* Add Page_Name.css with Page_Name.md */\n", css[page.name]
    end
end
