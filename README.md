<!---
IMPORTANT
=========
This README.md is displayed in the WebStore as well as within Jarvis app
Please do not change the structure of this file
Fill-in Description, Usage & Author sections
Make sure to rename the [en] folder into the language code your plugin is written in (ex: fr, es, de, it...)
For multi-language plugin:
- clone the language directory and translate commands/functions.sh
- optionally write the Description / Usage sections in several languages
-->
## Description
Ce plugin permet de consulter le programme télé a partir du site http://xmltv.dtdns.net.

Les chaines se nomment "une" pour TF1, "deux" pour france 2, etc... car la reconnaissance vocale ne fonctionne pas bien avec les noms des chaines télé.
Ceci est parametrable dans le fichier config.sh

## Ajouts récents
- permet de connaitre le programme télé de ce soir ou mainteant.
- répond avec le nom de la chaine télé (TF1, France2, etc..)
- si aucune réponse, la phrase " ahh, désolé je nai pas trouvé de programme télé pour la selection"
- filtre des programmes du soir par la durée (si les programmes trouvés autour de 21h font moins de 30 mins ils seront supprimés), ce temps est paramétrable dans le fichier config.sh

## Usage
```
You: donne le programme télé sur la une
Jarvis: le programme télé sur TF1 est ...
You: donne le programme télé de ce soir sur la deux
Jarvis: le programme télé de ce soir sur france 2 est ...
```

## Authors
[Byackee](https://github.com/byackee)
