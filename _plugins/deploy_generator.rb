module STKWebsite
    class DeployGenerator < Jekyll::Generator
        priority :highest
        def generate(site)
            supported_languages = []
            for lang in site.data['translations'] do
                if lang[0] != 'en'
                    supported_languages.push(lang[0])
                end
            end
            page_translations = {}
            for page in site.pages do
                if page.path.start_with?('wiki') and File.extname(page.name) == '.md' then
                    lang = 'en'
                    page.data['lang'] = lang
                    basename = File.basename(page.name, '.md')
                    for supported_language in supported_languages do
                        if page.path == 'wiki_translations/' + supported_language + '/' + page.name then
                            lang = page.data['lang'] = supported_language
                            page.data['permalink'] = '/' + lang + '/:basename'
                            break
                        end
                    end
                    if lang != 'en' then
                        if page_translations.include?(basename) then
                            page_translations[basename].push(lang)
                        else
                            page_translations[basename] = [ lang ]
                        end
                    end
                end
            end
            for page in site.pages do
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
