---
layout: null
---
// var translations will be added by _plugins/hooks.rb
var text = 'No results found';
preferred_lang = sessionStorage.getItem('preferred_lang');
if (preferred_lang != null && translations.hasOwnProperty(preferred_lang))
{
    text = translations[preferred_lang];
}

var sjs = SimpleJekyllSearch({
    searchInput: document.getElementById('search-input'),
    resultsContainer: document.getElementById('results-container'),
    json: jsondata,
    searchResultTemplate: '<li><a href="{url}" title="{title}">{title}</a></li>',
    noResultsText: text,
    limit: 10,
    fuzzy: false,
    exclude: []
  })
