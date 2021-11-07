---
layout: null
---
var sjs = SimpleJekyllSearch({
    searchInput: document.getElementById('search-input'),
    resultsContainer: document.getElementById('results-container'),
    json: jsondata,
    searchResultTemplate: '<li><a href="{url}" title="{title}">{title}</a></li>',
    noResultsText: 'No results found',
    limit: 10,
    fuzzy: false,
    exclude: []
  })
