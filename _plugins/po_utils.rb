require 'poparser'

module PoUtils
    def PoUtils::add_string_to_pot(pot_file, string, comment)
        current_entry = nil
        pot_file.find_all do |entry|
            if entry.msgid.to_s == string then
                current_entry = entry
                break
            end
        end
        if not current_entry
            entry = { msgid: string, msgstr: "" }
            if comment != '' then
                entry[:translator_comment] = comment
            end
            pot_file.add(entry)
        elsif comment != '' and not current_entry.translator_comment then
            current_entry.translator_comment = comment
        end
    end
    def PoUtils::po_translate(po_file, string)
        if not po_file then
            return ''
        end
        po_file.find_all do |entry|
            if entry.msgid.to_s == string and entry.msgstr.to_s != '' then
                return entry.msgstr.to_s
            end
        end
        return ''
    end
    def PoUtils::translate_string(site, lang, string, comment, js_translation)
        translation = string
        # Only update translation source for english page
        if lang == 'en' then
            pot_file = site.data['po']['stk-website']
            add_string_to_pot(pot_file, string, comment)
        else
            result = po_translate(site.data['po'][lang], string)
            if result != ''
                translation = result
            end
        end
        translations = site.data['js_translations']
        if js_translation and not translations.include?(string) then
            translations[string] = {}
            site.data['po'].each do |lang, po_file|
            next if lang == 'stk-website'
                result = po_translate(po_file, string)
                if result != '' and result != string then
                    translations[string][lang] = result
                end
            end
        end
        return translation
    end
end
