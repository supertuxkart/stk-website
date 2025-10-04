---
title: Translating STK
toc: true
---
**Link: [SuperTuxKart home at Transifex](https://app.transifex.com/supertuxkart/).**

SuperTuxKart translation is web-based and involves using the [Transifex web application](https://app.transifex.com/supertuxkart/) for translations.

## Join the translation group

**Important!** You need to join the translation group in order to be able to translate.

To join a team, first click the "Join team" button near the top of the page (unfortunately, joining is not instantaneous, you will need to wait for us to approve your join request. We usually approve within 24 hours but sometimes we need some more time). Then select the language you would like to translate under "Available languages" and click the "Join" button.

{% single_gallery /assets/wiki/Transifex_join_team.jpg %}

## Starting a new translation

To start a translation for a language that currently does not exist, simply click the "Request language" button near the top of the page. Then select the language you would like to request under "Languages" and click the "Request" button.

{% single_gallery /assets/wiki/Transifex_request.jpg %}

## Translating

You can start translating SuperTuxKart by first clicking the "Languages" tab in the left-hand side under "SuperTuxKart" or "SuperTuxKart Website" project, then click the language you want to translate and click the "Translate" button near the top of the page.

{% single_gallery /assets/wiki/Transifex_translate.jpg %}

## Format Strings

From time to time, you will meet some **format strings**:

* `%s`, `%i`, `%d`: something will be inserted instead of the `%x`, simply add the same format strings in the translation. Note that these format strings do not specify order, so they need to appear in your translation in the same order as in the original string
* `%0`, `%1`, etc.: Those are like the above ones, but are ordered (`%0` is the first inserted value, `%1` is the second inserted value, etc.). The advantage of those is that the translation does not need to insert the values in the same order as the original string. Note that you can use these format strings in your translation even if the original string uses the first (unordered) format string.
* `%1$s`, `%2$s`, etc.: Those are like the above ones, but are ordered (`%1$s` is the first inserted value, `%2$s` is the second inserted value, etc.). `%1$s` is equivalent to `%0`, `%2$s` is equivalent to `%1`, etc. The reason this syntax is supported is simply because it's more standard than the `%0` syntax described above.

## Special plural forms

Some languages, such as Gaelic or Russian, require plural forms different from the English pattern. We use **ngettext** to handle these. You can find the definition for your language's plural forms in the [Localization Guide](https://docs.translatehouse.org/projects/localization-guide/en/latest/l10n/pluralforms.html) or in the [Common Locale Data Repository](https://www.unicode.org/cldr/cldr-aux/charts/26/supplemental/language_plural_rules.html).

## Guides to translate SuperTuxKart Website project

* Markdown syntax should be preserved, like in \*\*text\*\*, both \*\* should not be removed
* Link inside brackets in Markdown should never be translated, which means **text** inside \[display\](text) should not be changed

