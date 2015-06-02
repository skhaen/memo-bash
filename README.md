memo bash
=========
`man bash` / Linux | Unix Bash Shell : `help` ou `help | less` / Liste des [commandes](https://fr.wikibooks.org/wiki/Programmation_Bash/Commandes_shell).

* `com1 & com2 & com3` - exécution en parallèle
* `com1 ; com2 ;` - exécution successive
* `com1 && com2` - exécution de com2 seulement si com1 se finit normalement (pas d'erreur)
* `com1 || com2` - exécution de com2 seulement si com1 ne se finit pas normalement (avec erreur)

Argument
--------

* `$0` : nom du script. paramètre `0` de la ligne de commande, équivalent de `argv[0]`
* `$1`, `$2`, ..., `$9` : respectivement 1er, 2ème, ..., 9ème paramètre de la ligne de commande
* `$*` : tous les paramètres vus comme un seul mot
* `$@` : tous les paramètres vus comme des mots séparés : `$@` équivaut à `$1` `$2`
* `$#` : nombre de paramètres sur la ligne de commande
* `$-` : options du shell
* `$?` : code de retour de la dernière commande (0 = succès / 1 = erreur)
* `$$` : PID du shell
* `$!` : PID du dernier processus lancé en arrière-plan
* `$_` : dernier argument de la commande précédente


Quotes (" ' \`)
------

* `"$something"` - noms des variables interprétés (`""`) par le shell
* `'$something'` - pas d'interprétation (`''`)
* \` `ls` \` - commande à exécuter (variables et commandes : (\` \`)

Redirection
-----------

* `>` redirige le flux de sortie de la commande pour la placer dans un fichier. `>` est équivalent à `1>`. Pour rediriger vers la  sortie d'erreur standard : `2>` (par exemple `mkdir /var/www/test 2> error.log`).
* `<` redirige le flux d'entrée de la commande pour la prendre dans un fichier,
* `|` redirige la sortie standard de la commande de gauche sur l’entrée standard de la commande de droite,
* `>>` redirige le flux de sortie de la commande pour l’ajouter à la fin d’un fichier existant.


Opérateurs de tests 
-------------------
Sur les variables :

* `[ expression1 ]` ou `test expression` fournit un code de retour valant 0 si l'expression est vraie et 1 si l'expression est fausse.

Sur les fichiers :

* `[ -e $FILE ]` - vrai si `$FILE` existe dans le répertoire courant,
* `[ -s $FILE ]` - vrai si `$FILE` existe dans le répertoire courant et si sa taille est supérieure à zéro,
* `[ -f $FILE ]` - vrai si `$FILE` est un fichier dans le répertoire courant,
* `[ -r $FILE ]` - vrai si `$FILE` est un fichier lisible dans le répertoire courant,
* `[ -w $FILE ]` - vrai si `$FILE` est un fichier inscriptible dans le répertoire courant,
* `[ -x $FILE ]` - vrai si `$FILE` est un fichier exécutable dans le répertoire courant,
* `[ -d $FILE ]` - vrai si `$FILE` est un répertoire dans le répertoire courant.

Sur les chaînes de caractères

* `[ c1 = c2 ]` - vrai si c1 et c2 sont égaux,
* `[ c1 != c2 ]` - vrai si c1 et c2 sont différents,
* `[ -z c ]` - vrai si c est la chaîne vide (Zero),
* `[ -n c ]` - vrai si c n'est pas la chaîne vide (Non zero).

Sur les nombres

* `[ n1 -eq n2 ]` - vrai si n1 et n2 sont égaux (**eq**ual),
* `[ n1 -ne n2 ]` - vrai si n1 et n2 sont différents (**n**ot **n**qual),
* `[ n1 -lt n2 ]` - vrai si n1 est strictement inférieur à n2 (**l**ess **t**han),
* `[ n1 -le n2 ]` - vrai si n1 est inférieur ou égal à n2 (**l**ess or **e**qual),
* `[ n1 -gt n2 ]` - vrai si n1 est strictement supérieur à n2 (**g**reater **t**han),
* `[ n1 -ge n2 ]` - vrai si n1 est supérieur ou égal à n2 (**g**reater or **e**qual).

Tests et logique
----------------

* `[ ! e ]` - vrai si e est faux. `!` est la négation.
* `[ e1 -a e2 ]` - vrai si e1 et e2 sont vrais. `-a` ou le et logique (**and**).
* `[ e1 -o e2 ]` - vrai si e1 ou e2 est vrai. `-o` ou le ou logique (**or**).

