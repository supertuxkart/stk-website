require 'poparser'
require_relative 'po_utils'

module STKWebsite
    class DeployGenerator < Jekyll::Generator
        priority :highest
        def generate(site)
            supported_languages = []
            site.data['language_names'] =
            {
                "aa" => "ʿAfár af",
                "af" => "Afrikaans",
                "am" => "ኣማርኛ",
                "ar" => "العربية",
                "as" => "অসমীয়া",
                "ast" => "Asturianu",
                "ay" => "Aymar aru",
                "az" => "Azərbaycanca",
                "be" => "Беларуская мова",
                "bg" => "български",
                "bn" => "বাংলা",
                "bo" => "བོད་སྐད་",
                "br" => "Brezhoneg",
                "bs" => "Bosanski",
                "ca" => "Català",
                "co" => "Corsu",
                "cs" => "Čeština",
                "cs_CZ" => "Čeština (Česká Republika)",
                "cy" => "Welsh",
                "cy_GB" => "Welsh (Great Britain)",
                "da" => "Dansk",
                "da_DK" => "Dansk (Danmark)",
                "de" => "Deutsch",
                "de_AT" => "Deutsch (Österreich)",
                "de_CH" => "Deutsch (Schweiz)",
                "de_DE" => "Deutsch (Deutschland)",
                "dz" => "རྫོང་ཁ",
                "el" => "ελληνικά",
                "en" => "English",
                "en_AU" => "English (Australia)",
                "en_CA" => "English (Canada)",
                "en_GB" => "English (Great Britain)",
                "en_US" => "English (United States)",
                "en_ZA" => "English (South Africa)",
                "eo" => "Esperanto",
                "es" => "Español",
                "et" => "Eesti keel",
                "eu" => "Euskara",
                "fa" => "فارسى",
                "fi" => "Suomi",
                "fo" => "Føroyskt",
                "fr" => "Français",
                "fr_CA" => "Français (Canada)",
                "fr_CH" => "Français (Suisse)",
                "fr_FR" => "Français (France)",
                "fr_LU" => "Français (Luxembourg)",
                "fy" => "Frysk",
                "ga" => "Gaeilge",
                "gd" => "Gàidhlig",
                "gl" => "Galego",
                "gn" => "Avañe'ẽ",
                "gu" => "ગુજરાતી",
                "gv" => "Gaelg",
                "ha" => "حَوْسَ",
                "he" => "עברית",
                "hi" => "हिन्दी",
                "hr" => "Hrvatski",
                "hu" => "Magyar",
                "hy" => "Հայերեն",
                "ia" => "Interlingua",
                "id" => "Bahasa Indonesia",
                "is" => "Íslenska",
                "it" => "Italiano",
                "iu" => "ᐃᓄᒃᑎᑐᑦ/inuktitut",
                "ja" => "日本語",
                "ka" => "ქართული",
                "kk" => "Қазақша",
                "kl" => "Kalaallisut",
                "km" => "ភាសាខ្មែរ",
                "kn" => "ಕನ್ನಡ",
                "ko" => "한국어",
                "krl" => "Karjalan kieli",
                "ku" => "Kurdî",
                "kw" => "Kernowek",
                "ky" => "кыргызча",
                "la" => "Latina",
                "lo" => "ລາວ",
                "lt" => "Lietuvių",
                "lv" => "Latviešu",
                "jbo" => "La .lojban.",
                "mg" => "Malagasy",
                "mi" => "Māori",
                "mk" => "Македонски",
                "ml" => "മലയാളം",
                "mn" => "Монгол",
                "mn_MN" => "Монгол",
                "mr" => "मराठी",
                "ms" => "Bahasa Melayu",
                "mt" => "Malti",
                "my" => "မြန်မာဘာသာ",
                "nl" => "Nederlands",
                "nb" => "Norsk Bokmål",
                "nn" => "Norsk Nynorsk",
                "no" => "Norsk Bokmål",
                "oc" => "Occitan",
                "om" => "Oromoo",
                "or" => "ଓଡ଼ିଆ",
                "os" => "ирон ӕвзаг",
                "pa" => "ਪੰਜਾਬੀ",
                "pl" => "Polski",
                "pms" => "Piemontèis",
                "ps" => "پښتو",
                "pt" => "Português",
                "pt_BR" => "Português Brasileiro",
                "qu" => "Runa Simi",
                "rm" => "Rumantsch",
                "ro" => "Română",
                "ru" => "Русский",
                "rw" => "Kinyarwanda",
                "sc" => "Sardu",
                "sco" => "Scots",
                "se" => "Sámegiella",
                "sk" => "Slovenčina",
                "sl" => "Slovenščina",
                "sq" => "Shqip",
                "sr" => "Српски",
                "sv" => "Svenska",
                "sw" => "Kiswahili",
                "szl" => "Ślůnsko",
                "ta" => "தமிழ்",
                "th" => "ไทย",
                "tr" => "Türkçe",
                "tt" => "Татарча",
                "uk" => "Українська",
                "ur" => "اردو",
                "uz" => "Oʻzbek tili",
                "vi" => "Tiếng Việt",
                "yi" => "ייִדיש",
                "zh" => "中文",
                "zh_CN" => "简体中文",
                "zh_TW" => "繁體中文"
            }
            site.data['supported_languages'] = supported_languages
            site.data['js_translations'] = {}
            site.data['searchdata_translations'] = {}
            site.data['all_pages'] = []
            site.data['page_translations'] = {}
            site.data['po'] = {}
            site.data['searchdata'] = []
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
            site.data['po']['stk-website'] = {}
            pot = PoParser.parse(pot_file)
            site.data['po']['stk-website']['pot'] = pot
            site.data['po']['stk-website']['entries'] = {}
            site.data['po']['stk-website']['entries'][searchdata_string] = pot.entries[0]
            Dir.foreach('_translations') do |po_file|
            next if po_file == '.' or po_file == '..' or po_file == 'en.po' or po_file == 'stk-website.pot'
                lang = File.basename(po_file, '.po')
                po = PoParser.parse_file('_translations/' + po_file)
                if po.stats[:translated] == 0 then
                    next
                end
                po_hash = {}
                po.find_all do |entry|
                next if entry.msgstr.to_s == '' or entry.msgid.to_s == entry.msgstr.to_s
                    po_hash[entry.msgid.to_s] = entry.msgstr.to_s
                end
                site.data['po'][lang] = po_hash
                supported_languages.push(lang)
            end
            for lang in supported_languages do
                t = PoUtils::translate_string(site, lang, searchdata_string, '', false)
                if t != searchdata_string then
                    site.data['searchdata_translations'][lang] = t
                end
            end
            page_translations = site.data['page_translations']
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
                        pot_data = site.data['po']['stk-website']
                        orig_title = page.data['title']
                        PoUtils::add_string_to_pot(pot_data, orig_title, '')
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
                site.data['all_pages'].push(basename) if not site.data['all_pages'].include?(basename)
                lang = page.data['lang']
                if lang then
                    if basename == 'Main_Page' then
                        if lang == 'en' then
                            page.data["redirect_from"] = ['/', '/en', 'en/Main_Page']
                        else
                            page.data["redirect_from"] = [ '/' + lang]
                        end
                    end
                end
            end
        end
    end
end
