# Formation à la manipulation de données textuelles en Python

Ce repository contient les notebooks utlisés pour la formation *[manipulation de données textuelles en Python](https://www.ixxi.fr/agenda/evenements/formation-a-la-manipulation-de-donnees-textuelles-en-python-2023)* organisée pour l'IXXI et la MSH-LSE par Jean-Philippe Magué et Julien Velcin.
Cette formation est également encadrée par Orline Poulat et Alioscha Massein de la MSH-LSE.

Cette formation se déroule en 3 parties :

* Une première partie qui aborde les concepts et la manipulation pour le webscrapping
* Une seconde partie sur les principes de tokenisation, de lemmatisation et de manipulation de données textuelles
* Une dernière partie sur l’analyse de lexique des sujets étudiés. 

## Installation des dépendances

Pour installer les packages nécessaire à la formation, il existe plusieurs options : 

1. Vérifier que vous utilisez bien la version 3.11 de Python. Si ce n'est pas le cas, vous pouvez l'installer via [Anaconda](https://www.anaconda.com/products/distribution#download-section) ou via des gestionnaires de package comme [Homebrew](https://brew.sh/) (pour Mac) ou [Chocolatey](https://chocolatey.org/) (pour Windows).

```bash
brew install python3.11
choco install python311
```

### Installer les dépendances via pip
1. Créer votre environnement virtuel

Pip est un gestionnaire de packages pour Python. C'est l'outil qui est encore le plus utilisé, et il est installé automatiquemetn avec python. Pip permet de créer des environnements virtuels, qui sont des espaces de travail isolés pour vos projets Python. Cela vous permet d'installer des packages spécifiques à un projet sans interférer avec d'autres projets, ou avec votre ordinateur.

```bash
python3.11 -m venv votre_environnement 
```

Vous pouvez ensuite vous connecter à cette environnement virtuel avec la commande
```bash
# Sur MacOS ou Linux
source votre_environnement/bin/activate
# Sur Windows, sur l'invité de commande
votre_environnement\Scripts\activate
# Sur Windows, sur PowerShell
voter_environnement\Scripts\activate.ps1
```

Vous noterez que sur Windows, les chemins s'écrivant avec des `\` et non des `/`, qui sont utilisés sur MacOs et Linux.

2. Installer les dépendances

Une fois connecté à votre environnement virtuel, vous pouvez installer les dépendances nécessaires à la formation.

```bash
pip install -r requirements.txt
```

Le fichier requirements.txt contient la liste des packages nécessaires à la formation. Vous pouvez l'ouvrir avec n'importe quel éditeur de texte pour voir les packages qui seront installés.

### Avec UV

`uv` est une librairie qui permet de gérer l'installation et les environnements virtuels, tout comme pip, mais plus rapide et qui se met à jour automatiquement au lancement de script python. Dans le cas des notebooks, ce n'est pas forcément la solution la plus pratique, mais elle est plus efficace que pip. 

1. Installer uv

```bash
brew install uv
choco install uv
```

2. Créer votre environnement virtuel avec les dépendances installées automatiquement.

uv a l'avantage de pouvoir créer un environnement virtuel et d'installer les dépendances automatiquement. Il vous suffit de lancer la commande suivante dans le répertoire du projet :
```bash
uv sync
# ou
uv pip install -r requirements.txt
```
Ces commandes installent les dépendances et créent un environnement virtuel (nommé .venv), et s'assure que les packages sont bien à jour. 