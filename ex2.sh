#!/usr/bin/env bash

#
# Affichez le contenu du fichier csv  suivant
# "data/ORGANISATION_DE_LETAT_ET_DES_SERVICES_PUBLICS.csv" dans le script
# bash suivant
#
# Pour accéder au contenu du fichier, il suffit de faire "cat" dans le shell

# Modifiez pour cla
#cat ex2.sh

#
# Pour extraire la colonne d'un fichier qui nous interesse, il faut utiliser
# le programme un programme Python qui va "splitter" la ligne qu'on lui donne
# sur l'entrée standard
#
# voir le fichier ex2.py pour voir. devra retourner sur la sortie standard
# la colonne du code postal
#
# Attention à la première ligne qui risque d'être la description du fichier
# csv. il faut donc avec le BASH supprimer cette ligne
# Nous vous conseillons, d'utiliser les commandes "head" ou "tail".

# Pour connaitre le comportement de head suivez la commande suivante

#head data/ORGANISATION_DE_LETAT_ET_DES_SERVICES_PUBLICS.csv

# puis

tail -n +2 data/ORGANISATION_DE_LETAT_ET_DES_SERVICES_PUBLICS.csv | python3 ex2.py

# Il manque une option. Mais laquelle ?

# Vous pouvez utiliser la redirection "pipe" pour plus de concision
# exemple:

#cat data/ORGANISATION_DE_LETAT_ET_DES_SERVICES_PUBLICS.csv | python3 ex2.py

# Maintenant, nous voulons que cette sortie standard soit utilisée pour écrire
# dans un fichier.
# Utilisez la redirection > pour le faire
#
# Ex:
#cat ex2.sh > ex2.bis.sh

# Le fichier devra s'appeller code-postaux.txt
