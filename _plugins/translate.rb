require 'json'
require 'csv'
require_relative 'po_utils'

module STKWebsite
    class Translate < Liquid::Tag
        # Usage: {%translate Text to be translated%}
        # Usage: {%translate Text to be translated
        #        Next line, no comment is supported for newline message%}
        # Usage: {%translate Text to be translated,Comment for translator%}
        # Usage: {%translate """Text"", with quotes and comma to be translated",Comment for translator%}
        def initialize(tag_name, variables, tokens)
            super
            @comment = ''
            if variables.include?("\n") then
                @string = variables
            else
                data = CSV.parse(variables)
                @string = data[0][0]
                if data[0].length > 1 then
                    @comment = data[0][1]
                end
            end
            @js_translation = @string == 'Visit the main page'
        end
        def render(context)
            translation = PoUtils::translate_string(context['site'], context['page']['lang'], @string, @comment, @js_translation)
            "#{translation}"
        end
    end
    class TranslateSpan < Translate
        def initialize(tag_name, variables, tokens)
            super
            @js_translation = true
        end
        def render(context)
            "<span class=\"translate\">#{super}</span>"
        end
    end
end

Liquid::Template.register_tag('translate', STKWebsite::Translate)
Liquid::Template.register_tag('translate_span', STKWebsite::TranslateSpan)
