---
page_type: sample
products:
- office-outlook
- office-365
languages:
- javascript
extensions:
  contentType: samples
  technologies:
  - Add-ins
  createdDate: 3/23/2016 3:48:52 PM
---
# Exemple de module d'extension Outlook pour les heures facturables
Cet exemple de complément Outlook 2016 pour Windows utilise le nouveau point d’extension \\<ExtensionPoint xsi:type="Module"> pour Outlook. Cet exemple de code intègre un complément d’heures facturables aux modules Outlook intégrés de courrier, de calendrier, de tâches, etc.

## Table des matières
* [Historique des modifications](#change-history)
* [Conditions préalables](#prerequisites)
* [Configuration du projet](#configure-the-project)
* [Exécutez le projet](#run-the-project)
* [Comprendre le code](#understand-the-code)
* [Questions et commentaires](#questions-and-comments)
* [Ressources supplémentaires](#additional-resources)

## Historique des modifications
31 mars 2016 :
* publication de la première version de l’exemple

04 avril 2016 :
* mise à jour du fichier LISEZMOI

## Conditions préalables

* Outlook 2016 pour Windows
* [NodeJS](https://nodejs.org/en) pour servir l’extension de module
* [npm](https://www.npmjs.com/) pour installer des dépendances. Cet élément est fourni avec NodeJS
* [GitBash](http://www.git-scm.com/downloads) pour exécuter des utilitaires de ligne de commande
* Clonez ce référentiel sur votre ordinateur local.

## Configuration du projet

Vous devez installer un certificat pour exécuter cet exemple, car les commandes de complément nécessitent HTTPS. Étant donné que le complément exige de ne pas avoir d'interface utilisateur, vous n’êtes pas invité(e) à accepter un certificat non valide.

1. Exécutez ```./gen-cert.sh``` pour créer un certificat.
2. Double-cliquez sur ```ca.crt``` et installez-le dans le magasin de l'autorité de certification racine de confiance

Démarrer un serveur web HTTPs local afin de servir les fichiers pour l’extension de module :

1. Installez le package de dépendances identifiées dans packages.json en exécutant ```npm install``` dans le répertoire racine du projet.
2. Démarrer le serveur local en exécutant ```node server.js```

## Exécutez le projet

1. Lancez Outlook
2. Choisissez l’onglet Fichier, puis choisissez Gérer des compléments
3. Une fois le gestionnaire de compléments ouvert, cliquez sur le symbole « + », puis sélectionnez Ajouter à partir d’un fichier
4. Sélectionnez Parcourir, puis accédez au répertoire contenant l’exemple
5. Sélectionnez le manifeste de module (outlook-add-in-javascript-moduleextension.xml), puis cliquez sur Ouvrir
6. Choisissez suivant, puis sélectionnez Installer pour l'installation du module.
7. Fermer le Gestionnaire de module

Il se peut que Outlook prenne quelques instants pour charger le nouveau module. Toutefois, lorsque votre nouveau module apparaît, celui-ci est ajouté aux raccourcis de la barre de navigation. À l’aide de la navigation compacte, les raccourcis se présentent comme suit :

![Affiche les commandes de complément dans la barre de navigation d’Outlook compacte.](/readme-images/Outlook-Compact-Navigation-Bar.png)

Si vous n'utilisez pas la navigation compacte, les raccourcis se présentent comme suit :

![Affiche une extension de module unique dans la barre de navigation étendue.](/readme-images/Outlook-Navigation-Bar.png)

Cliquez sur **Heures facturables** ou sur l’icône de module pour ouvrir l’extension de module.
Outlook change pour afficher l’interface utilisateur du module.

![Affiche l’interface utilisateur de l'extension de module.](/readme-images/Outlook-Billable-Hours-UI.png)

Le ruban comporte trois boutons. Cliquez sur l’une d’elles pour modifier le taux de facturation.
Les totaux dans l’interface utilisateur principale changent pour refléter le nouveau taux. 

## Comprendre le code

La nouvelle extension de module est activée dans votre fichier manifeste en définissant le type d’extension sur ```« Module »```. Cette partie est la [section du manifeste](https://github.com/chbighammsft/Outlook-Add-in-JavaScript-ModuleExtension-1/blob/98443386d33191e620631efac4f4f4045cb3b75a/outlook-add-in-javascript-moduleextension.xml#L70) que vous devez modifier :

    <!--New Extension Point - Module for a ModuleApp -->
        <ExtensionPoint xsi:type="Module">


## Questions et commentaires
Nous aimerions recueillir vos commentaires sur l’exemple Outlook-Add-in-JavaScript-ModuleExtension. Vous pouvez nous envoyer vos commentaires via la section [Problèmes](https://github.com/OfficeDev/Outlook-Add-in-JavaScript-ModuleExtension/issues) de ce référentiel.

Si vous avez des questions sur le développement d’Office 365, envoyez-les sur [Stack Overflow](http://stackoverflow.com/questions/tagged/Office365+API). Veillez à poser vos questions en incluant les balises [API] et [Office365].

## Ressources supplémentaires
* [Compléments Outlook d’extension de module](http://dev.office.com/docs/add-ins/outlook/extension-module-outlook-add-ins)
* [Présentation de la plateforme de compléments pour Office](https://msdn.microsoft.com/EN-US/library/office/jj220082.aspx)
* [Documentation sur les API Office 365](http://msdn.microsoft.com/office/office365/howto/platform-development-overview)
* [Outils de l'API Microsoft Office 365](https://visualstudiogallery.msdn.microsoft.com/a15b85e6-69a7-4fdf-adda-a38066bb5155)
* [Centre des développeurs Office](http://dev.office.com/)
* [Exemples de code et projets de lancement pour les API Office 365](http://msdn.microsoft.com/en-us/office/office365/howto/starter-projects-and-code-samples)

## Copyright
Copyright (c) 2016 Microsoft. Tous droits réservés.



Ce projet a adopté le [code de conduite Open Source de Microsoft](https://opensource.microsoft.com/codeofconduct/). Pour en savoir plus, reportez-vous à la [FAQ relative au code de conduite](https://opensource.microsoft.com/codeofconduct/faq/) ou contactez [opencode@microsoft.com](mailto:opencode@microsoft.com) pour toute question ou tout commentaire.
