---
layout: null
---
// var translations will be added by _plugins/translate.rb
var supported_languages = {{ site.data.supported_languages | jsonify }};
var page_translations = {{ site.data.page_translations | jsonify }};

function getSuitableLang(lang, locale)
{
    // Special handling for possible tranditional chinese locales to avoid
    // displaying simplified chinese for those users
    if (lang == 'zh')
    {
        if (locale.search('hk') != -1 || locale.search('mo') != -1 ||
            locale.search('tw') != -1 || locale.search('hant') != -1)
            locale = 'TW';
        else
            locale = 'CN';
    }
    locale = locale.toUpperCase();
    for (var i = 0; i < supported_languages.length; i++)
    {
        var lang_locale = lang + '_' + locale;
        if (supported_languages[i] == lang_locale)
            return supported_languages[i];
    }
    for (var i = 0; i < supported_languages.length; i++)
    {
        var lang_only = supported_languages[i].split('_')[0]
        if (lang_only == lang)
            return supported_languages[i];
    }
    return null;
}

var preferred_lang = document.documentElement.lang.replace("-", "_");
var site_url = '{{ site.url }}' + '{{ site.baseurl }}' + '/';
try
{
    // Prevent error when cookies disabled
    if (!sessionStorage.getItem('preferred_lang'))
    {
        sessionStorage.setItem('preferred_lang', 'en');

        var user_language = (((navigator.userLanguage || navigator.language).replace('-', '_')).toLowerCase()).split('_');
        var lang = user_language[0];
        var locale = '';
        if (user_language.length > 1)
            locale = user_language[1];
        var suitable_lang = getSuitableLang(lang, locale)
        if (suitable_lang != null)
            sessionStorage.setItem('preferred_lang', suitable_lang);
    }

    // Override preferred language if language tag is supplied in url
    // or the referrer
    var all_lang = supported_languages;
    all_lang.push('en');
    for (var i = 0; i < all_lang.length; i++)
    {
        var site_url_lang = site_url + all_lang[i];
        if (window.location.href.search(site_url_lang) != -1)
        {
            sessionStorage.setItem('preferred_lang', all_lang[i]);
            break;
        }
        else if (document.referrer.search(site_url_lang) != -1)
        {
            sessionStorage.setItem('preferred_lang', all_lang[i]);
            break;
        }
    }
    preferred_lang = sessionStorage.getItem('preferred_lang');
} catch (error) {}

var doc_lang = document.documentElement.lang.replace("-", "_");
if (doc_lang == 'en' && doc_lang != preferred_lang)
{
    // Only redirect if page translation exists, other translate the layout
    // texts and links
    var page = window.location.href.substring(site_url.length).split("/").pop();
    var success = false;
    if (page_translations.hasOwnProperty(page))
    {
        var arr = page_translations[page];
        for (var i = 0; i < arr.length; i++)
        {
            if (preferred_lang == arr[i])
            {
                window.location.replace(site_url + preferred_lang + '/' + page);
                success = true;
                break;
            }
        }
    }
    if (!success && doc_lang == 'en')
    {
        var logo = document.getElementsByClassName('logo noselect')[0];
        var logo_text = logo.getAttribute('title');
        if (translations.hasOwnProperty(logo_text) &&
            translations[logo_text].hasOwnProperty(preferred_lang))
            logo.setAttribute('title', translations[logo_text][preferred_lang]);

        // Table of contents markdown toggle [Show] / [Hide] handling
        var markdown_toggle = document.getElementById('markdown-toggle');
        if (markdown_toggle != null)
        {
            var show_text = markdown_toggle.getAttribute('data-show-text');
            if (translations.hasOwnProperty(show_text) &&
                translations[show_text].hasOwnProperty(preferred_lang))
                markdown_toggle.setAttribute('data-show-text', translations[show_text][preferred_lang]);
            var hide_text = markdown_toggle.getAttribute('data-hide-text');
            if (translations.hasOwnProperty(hide_text) &&
                translations[hide_text].hasOwnProperty(preferred_lang))
                markdown_toggle.setAttribute('data-hide-text', translations[hide_text][preferred_lang]);
        }

        var elements = document.getElementsByClassName("translate");
        for (var i = 0; i < elements.length; i++)
        {
            var element_text = elements[i].textContent;
            if (translations.hasOwnProperty(element_text) &&
                translations[element_text].hasOwnProperty(preferred_lang))
                elements[i].textContent = translations[element_text][preferred_lang];
        }
        var links = document.links;
        for (var i = 0; i < links.length; i++)
        {
            if (!links[i].href.startsWith(site_url))
                continue;
            var link_page = links[i].href.split("/").pop();
            if (!page_translations.hasOwnProperty(link_page))
                continue;
            var arr = page_translations[link_page];
            for (var j = 0; j < arr.length; j++)
            {
                if (preferred_lang == arr[j])
                {
                    links[i].href = site_url + preferred_lang + '/' + link_page;
                    break;
                }
            }
        }
    }
}
