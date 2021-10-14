---
layout: null
---
function getSuitableLang(lang, locale, supported_languages)
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

try
{
    // Prevent error when cookies disabled
    if (!sessionStorage.getItem('detected_lang'))
    {
        sessionStorage.setItem('detected_lang', 'true');

        // Skip redirect if en is supplied
        var site_url = '{{ site.url }}' + '{{ site.baseurl }}' + '/';
        var site_url_en = site_url + 'en';
        if (document.referrer.search(site_url_en) != -1)
            throw 'English page';

        var user_language = (((navigator.userLanguage || navigator.language).replace('-', '_')).toLowerCase()).split('_');
        var lang = user_language[0];
        var locale = '';
        if (user_language.length > 1)
            locale = user_language[1];
        var supported_languages = [];
        {% for translation in site.data.translations %}
            {% if translation[0] != 'en' %}
                supported_languages.push('{{ translation[0] }}');
            {% endif %}
        {% endfor %}
        var suitable_lang = getSuitableLang(lang, locale, supported_languages)
        if (suitable_lang == null)
            throw 'No suitable language';

        // Only redirect in pages without language prefix
        var page = window.location.href.substring(site_url.length);
        if (page.search('/') == -1)
            window.location.replace('{{ site.baseurl }}' + '/' + suitable_lang + '/' + page);
    }
} catch (error) {}
