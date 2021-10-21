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
end
