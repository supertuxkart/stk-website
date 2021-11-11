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

    class QA < Liquid::Tag
        def render(context)
            question = @markup.split("\n").first
            answer = @markup[question.length + 2..]
            context['qa-callback'] = 0 if not context['qa-callback']
            id = context['qa-callback']
            context['qa-callback'] += 1
            input_id = 'qa' + id.to_s + '-callback'
            result =
'<div>
<input type="checkbox" id="' + input_id + '"><label class="qa-question" for="' + input_id + '">' + question + '</label>
<div class="qa-answer" markdown="1">
' + answer +
'</div>
</div>'
            page = context['page']
            # Only need to append css for original (in English) post
            if page['lang'] == 'en' then
                css_page = STKWebsite::get_css_page(context)
                css_page.content +=
'
input[id="' + input_id + '"] {
    display: none;
}

input[id="' + input_id + '"]:checked + .qa-question + .qa-answer {
    margin-bottom: 30px;
    padding-left: 20px;
    margin-top: 15px;
    font-size: 1rem;
    opacity: 1.0;
    transition: margin 0.25s, padding 0.25s, font-size 0.25s, opacity 0.25s 0.25s;
    user-select: text;
    -webkit-user-select: text;
    -khtml-user-select: text;
    -moz-user-select: text;
    -ms-user-select: text;
}
'
            end
            return result
        end
    end

    class BlogArticle < Liquid::Tag
        def render(context)
            data = Liquid::Template.parse(@markup).render(context)
            title = data.split("\n").first
            date = data.split("\n").last
            content = data[title.length + 2... - date.length - 2]
            result =
'<div class="article_main_title" markdown="1">
## ..:: ' + title + ' ::..
</div>
' + content + '
<div class="article_date" markdown="1">
' + date + '
</div>
'
            return result
        end
    end

    class MainTitle < Liquid::Tag
        def render(context)
            data = Liquid::Template.parse(@markup.delete("\n")).render(context)
            result =
'<h2 class="article_main_title">' + data + '</h2>
'
            return result
        end
    end

    class MinorTitle < Liquid::Tag
        def render(context)
            data = Liquid::Template.parse(@markup.delete("\n")).render(context)
            result =
'<h4 class="article_minor_title">' + data + '</h4>
'
            return result
        end
    end
end

Liquid::Template.register_tag('popup_code', STKWebsite::PopupCode)
Liquid::Template.register_tag('popup_info', STKWebsite::PopupInfo)
Liquid::Template.register_tag('popup_prerequisite', STKWebsite::PopupPrerequisite)
Liquid::Template.register_tag('qa', STKWebsite::QA)
Liquid::Template.register_tag('blog_article', STKWebsite::BlogArticle)
Liquid::Template.register_tag('main_title', STKWebsite::MainTitle)
Liquid::Template.register_tag('minor_title', STKWebsite::MinorTitle)
