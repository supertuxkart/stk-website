require 'cgi'
require 'rouge'
require_relative 'po_utils'

# Templates from STK MediaWiki
module STKWebsite
    class PopupInfo < Liquid::Tag
        def render(context)
            result =
'<div class="popup-warning popup">
<div class="popup-info"><b><span class="translate">' +
PoUtils::translate_string(context['site'], context['page']['lang'], 'Info', 'Title of info popup which describes extra info', true) +
'</span></b></div>
<div class="popup-content" markdown="1">' + "\n" + @markup + "\n" +
'</div>
</div>'
            return result
        end
    end
    class PopupCode < Liquid::Tag
        def initialize(tag_name, markup, parse_context)
            super
            # check the first line if it contains language name for highlighting
            lang = markup.split("\n").first
            if lexer = Rouge::Lexer.find(lang) then
                formatter = Rouge::Formatters::HTMLInline.new('thankful_eyes')
                @content = formatter.format(lexer.lex(markup[lang.length + 1..]))
            else
                # Use CGI.escapeHTML so < > can be displayed inside code popup
                @content = CGI.escapeHTML(markup)
            end
        end
        def render(context)
            result =
'<div class="popup-code popup">
<div class="popup-code-info"><b><span class="translate">' +
PoUtils::translate_string(context['site'], context['page']['lang'], 'Code', 'Title of code popup which displays code snippet', true) +
'</span></b></div>
<div class="popup-code-line"><code>' + "\n" +
@content + "\n\n" +
'</code></div>
</div>'
            return result
        end
    end
    class PopupPrerequisite < Liquid::Tag
        def render(context)
            result =
'<div class="popup-warning popup">
<div class="popup-header-prerequisite"><b><span class="translate">' +
PoUtils::translate_string(context['site'], context['page']['lang'], 'Prerequisites', 'Title of prerequisites popup which describes prerequisites before reading some articles', true) +
'</span></b></div>
<div class="popup-content-prerequisite" markdown="1">' + "\n<span class=\"translate\">" +
PoUtils::translate_string(context['site'], context['page']['lang'], 'You should read the following articles prior to following this tutorial:', '', true) + "</span>\n\n" +
+ @markup + "\n" +
'</div>
</div>'
            return result
        end
    end
end

Liquid::Template.register_tag('popup_code', STKWebsite::PopupCode)
Liquid::Template.register_tag('popup_info', STKWebsite::PopupInfo)
Liquid::Template.register_tag('popup_prerequisite', STKWebsite::PopupPrerequisite)
