# KOmpilaThor.42 (╯°□°）╯︵ ┻━┻
Le KOmpilaThor est un script qui permet de corriger certains exercices de 42.

Le premier KOmpilaThor permettait de corriger la J02 de la piscine de 42, puis il y a eu ceux pour les J04/J05 qui nécessitaient de nombreux tests.
~~Actuellement le développement se fait sur le KOmpilaThor de la LIBFT.~~ **NO MORE DEVEL**

Chaque KOmpilaThor a un fonctionnement différente mais le principe globale reste le même:

Le script génère un fichier .c qui sera compilé avec l'exercice pointé (pour les Jxx) ou qui sera compilé avec la librairie.

Le fonctionnement est le suivant :

Pour les Jxx :
-------
* copier le script à la racine de la journéee, ou dans le dossier immédiatement supérieur.
* Lancer le script en mettant comme premier et seul argument le chemin jusqu'à le fichier source à tester (exercice par exercice).

Pour la LIBFT :
-------
* Copier le script dans le répertoire de la lib.
* Lancer le script
* Voir qu'on sait pas coder (づ￣ ³￣)づ

# Règles pour contribuer sur la **LIBFT**
Afin de garantir un fichier facilement maintenable, merci de respecter ces quelques règles de bon sens.
* Faire un pull avant toute modification
* Analyser le fonctionnement des fonctions déjà codé
* Copier-coller la fonction avec le fonctionnement le plus proche
* Modifier la variable EXO par le nom de la fonction (sans le ft, cf les exemples dans le fichier)
* *manger un carré de chocolat* (facultatif mais c'est bon)
* Éditer les variable en gardant le même type de nom de variable (val_send_XY) ou X correspond au n° de la fonction selon l'ordre de la LIBFT et Y correspond au n° de la variable dans la fonction
* Éditer les printf en fonction des variables et paramètres de la fonction
* Éditer la ligne d'appel de la fonction en fonction des paramètres envoyés et retourné mais vous n'avez pas besoin de modifier le nom de la fonction puisque cela est fait par la variable $EXO !
* Éditer le test des valeurs de retours
* **NE FAIRE UN PULL REQUEST / MERGE / PUSH QUE SI LA FONCTION CODÉ MARCHE** щ（ﾟДﾟщ）

Pour tout changement / amélioration en profondeur du fonctionnement, je vous invite à en parler sur le slack ou à envoyer un mail.
**Merci ! ( ˘ ³˘)♥**


ah j'oubliais... faites le ménage ! ┬─┬﻿ ノ( ゜-゜ノ)
