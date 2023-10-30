#!/bin/bash

echo "Quel type de projet voulez-vous créer ? (ran, inte, php, js, react)"

read projectType

echo "Quel est le nom du projet ?"

read projectName

echo "Création du dossier $projectType/$projectName..."

cd /home/bre01/sites/$projectType

mkdir $projectName

echo "Création des sous-dossiers..."

if [ "$projectType" == "php" || "$projectType" == "inte" ]
then 
	mkdir /home/bre01/sites/$projectType/$projectName/assets
	mkdir /home/bre01/sites/$projectType/$projectName/assets/css
	mkdir /home/bre01/sites/$projectType/$projectName/assets/js
	mkdir /home/bre01/sites/$projectType/$projectName/assets/img
	
elif [ "$projectType" == "js" ]
	mkdir /home/bre01/sites/$projectType/$projectName/assets
	mkdir /home/bre01/sites/$projectType/$projectName/assets/css
	mkdir /home/bre01/sites/$projectType/$projectName/assets/js
	mkdir /home/bre01/sites/$projectType/$projectName/assets/modules
	mkdir /home/bre01/sites/$projectType/$projectName/assets/img
	
else 
	echo "Erreur dans la création des sous-dossiers."  
fi

echo "Sous-dossiers créés..."