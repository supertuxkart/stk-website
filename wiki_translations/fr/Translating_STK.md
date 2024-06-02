---
title: Traduction STK
toc: true
---
**Lien: [SuperTuxKart chez Transifex](https://www.transifex.com/supertuxkart/supertuxkart).**

La traduction de SuperTuxKart est effectuée sur Internet et implique l'utilisation de l'[application web Transifex](https://www.transifex.com/supertuxkart/supertuxkart) pour les traductions.

## Rejoindre le groupe de traduction

**Important!** Vous devez rejoindre le groupe de traduction pour pouvoir traduire.

Pour rejoindre une équipe, cliquez d'abord sur le bouton " Join team " en haut de la page (malheureusement, l'adhésion n'est pas instantanée, vous devrez attendre que nous approuvions votre demande d'adhésion. Nous approuvons généralement votre demande dans les 24 heures, mais nous avons parfois besoin d'un peu plus de temps). Sélectionnez ensuite la langue que vous souhaitez traduire dans la liste des langues disponibles et cliquez sur le bouton "Rejoindre".

{% single_gallery /assets/wiki/Transifex_join_team.jpg %}

## Démarrer une nouvelle traduction

Pour commencer une traduction dans une langue qui n'existe pas encore, il suffit de cliquer sur le bouton " Request language " (Demander une langue) en haut de la page. Sélectionnez ensuite la langue que vous souhaitez demander dans la rubrique "Languages" et cliquez sur le bouton "Request".

{% single_gallery /assets/wiki/Transifex_request.jpg %}

## Traduction

Vous pouvez commencer à traduire SuperTuxKart en cliquant d'abord sur l'onglet "Languages" dans la partie gauche sous le projet "SuperTuxKart" ou "SuperTuxKart Website", puis en cliquant sur la langue que vous voulez traduire et en cliquant sur le bouton "Translate" en haut de la page.

{% single_gallery /assets/wiki/Transifex_translate.jpg %}

## Format des chaînes de caractères

De temps en temps, vous rencontrerez des **chaînes de formatage**

* `%s`, `%i`, `%d`: quelque chose sera inséré à la place du `%x`, ajoutez simplement les mêmes chaînes de format dans la traduction. Notez que ces chaînes de format ne précisent pas l'ordre, elles doivent donc apparaître dans votre traduction dans le même ordre que dans la chaîne originale
* `%0`, `%1`, etc.: Ces chaînes sont semblables aux précédentes, mais elles sont ordonnées (`%0` est la première valeur insérée, `%1` est la deuxième valeur insérée, etc.) L'avantage de ces chaînes est que la traduction n'a pas besoin d'insérer les valeurs dans le même ordre que la chaîne originale. Notez que vous pouvez utiliser ces chaînes de format dans votre traduction même si la chaîne originale utilise la première chaîne de format (non ordonnée).
* `%1$s`, `%2$s`, etc.: Ceux-ci sont comme les précédents, mais sont ordonnés (`%1$s` est la première valeur insérée, `%2$s` est la deuxième valeur insérée, etc.) `%1$s` est équivalent à `%0`, `%2$s` est équivalent à `%1`, etc. La raison pour laquelle cette syntaxe est supportée est simplement qu'elle est plus standard que la syntaxe `%0` décrite ci-dessus.

## Formes spéciales du pluriel

Certaines langues, comme le gaélique ou le russe, requièrent des formes de pluriel différentes du modèle anglais. Nous utilisons **ngettext** pour les gérer. Vous trouverez la définition des formes plurielles de votre langue dans le [Guide de localisation](https://docs.translatehouse.org/projects/localization-guide/en/latest/l10n/pluralforms.html) ou dans le [Common Locale Data Repository](https://www.unicode.org/cldr/cldr-aux/charts/26/supplemental/language_plural_rules.html).

## Guides de traduction du projet Site Internet SuperTuxKart

* La syntaxe Markdown doit être préservée, comme dans \*\*text\*\*, les deux \*\* ne doivent pas être supprimés.
* Les liens entre parenthèses en Markdown ne doivent jamais être traduits, ce qui signifie que le **texte** à l'intérieur de \[display\](texte) ne doit pas être modifié.

