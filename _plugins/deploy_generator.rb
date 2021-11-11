require 'poparser'
require_relative 'po_utils'

module STKWebsite
    class DeployGenerator < Jekyll::Generator
        priority :highest
        def generate(site)
            supported_languages = []
            site.data['js_translations'] = {}
            site.data['searchdata_translations'] = {}
            site.data['po'] = {}
            # Make 'No results found' in searchdata.js translatable
            searchdata_string = 'No results found'
            pot_file =
'
msgid ""
msgstr ""
"Project-Id-Version: stk-website\n"
"POT-Creation-Date: YEAR-MO-DA HO:MI+ZONE\n"
"PO-Revision-Date: YEAR-MO-DA HO:MI+ZONE\n"
"Last-Translator: FULL NAME <EMAIL@ADDRESS>\n"
"Language-Team: LANGUAGE <LL@li.org>\n"
"Language: ll\n"
"Content-Type: text/plain; charset=CHARSET\n"
"Content-Transfer-Encoding: 8bit\n"
"Plural-Forms: nplurals=INTEGER; plural=EXPRESSION;\n"

# Shown if empty search result
msgid "' + searchdata_string + '"
msgstr ""
'
            site.data['po']['stk-website'] = PoParser.parse(pot_file)
            Dir.foreach('_translations') do |po_file|
            next if po_file == '.' or po_file == '..' or po_file == 'en.po' or po_file == 'stk-website.pot'
                lang = File.basename(po_file, '.po')
                po = PoParser.parse_file('_translations/' + po_file)
                if po.stats[:translated] == 0 then
                    next
                end
                site.data['po'][lang] = po
                supported_languages.push(lang)
            end
            for lang in supported_languages do
                t = PoUtils::translate_string(site, lang, searchdata_string, '', false)
                if t != searchdata_string then
                    site.data['searchdata_translations'][lang] = t
                end
            end
            page_translations = {}
            extra_page = []
            site.pages.reverse_each do |page|
            next if not page.path.start_with?('wiki/') and
            not page.path.start_with?('wiki_translations/') and
            not page.path.start_with?('wiki_untranslated/')
                if File.extname(page.name) != '.md' then
                    page.data['layout'] = nil
                    next
                end
                basename = File.basename(page.name, '.md')
                if page.path.start_with?('wiki_translations/') then
                    # Remove first 18 characters and extract string before /
                    lang = page.path[18..].split('/')[0]
                    if supported_languages.include? lang then
                        page.data['lang'] = lang
                        page.data['permalink'] = '/' + lang + '/:basename'
                    else
                        # Remove page in language folder which doesn't have po file
                        site.pages.delete(page)
                        next
                    end
                elsif page.path.start_with?('wiki_untranslated/') then
                    # Handle wiki_untranslated pages
                    if page.content.include? '{%translate ' or page.content.include? '{%translate_sentence ' then
                        # If any translate liquid tag is included, expand the
                        # page to all supported languages, translate the title
                        # too
                        pot_file = site.data['po']['stk-website']
                        orig_title = page.data['title']
                        PoUtils::add_string_to_pot(pot_file, orig_title, '')
                        for lang in supported_languages do
                            new_page = page.dup
                            new_page.data = page.data.dup
                            translated_title =
                                PoUtils::po_translate(site.data['po'][lang],
                                orig_title)
                            if translated_title != '' then
                                new_page.data['title'] = translated_title
                            end
                            new_page.data['lang'] = lang
                            new_page.data['permalink'] = '/' + lang + '/:basename'
                            extra_page.push(new_page)
                            if page_translations.include?(basename) then
                                page_translations[basename].push(lang)
                            else
                                page_translations[basename] = [ lang ]
                            end
                        end
                    end
                    lang = 'en'
                    page.data['lang'] = lang
                else
                    lang = 'en'
                    page.data['lang'] = lang
                end
                if lang != 'en' then
                    if page_translations.include?(basename) then
                        page_translations[basename].push(lang)
                    else
                        page_translations[basename] = [ lang ]
                    end
                end
            end
            site.pages.concat(extra_page)
            site.pages.reverse_each do |page|
                # Move css to the last so content can be added based on previously rendered pages
                if File.extname(page.name) == '.css' then
                    site.pages.delete(page)
                    site.pages << page
                    next
                end
                if File.extname(page.name) != '.md' then
                    next
                end
                basename = File.basename(page.name, '.md')
                lang = page.data['lang']
                if lang then
                    if basename == 'Main_Page' then
                        if lang == 'en' then
                            page.data["redirect_from"] = ['/', '/en', 'en/Main_Page']
                        else
                            page.data["redirect_from"] = [ '/' + lang]
                        end
                    elsif lang == 'en' then
                        page.data["redirect_from"] = [ '/en/' + basename]
                    end
                    if lang == 'en' then
                        missing = supported_languages.dup
                        if page_translations.include?(basename) then
                            for page_translation in page_translations[basename] do
                                missing.delete_if {|i| i == page_translation }
                            end
                        end
                        for missing_translation in missing do
                            page.data["redirect_from"].push(missing_translation + '/' + basename)
                        end
                    end
                end
            end
        end
    end
end
