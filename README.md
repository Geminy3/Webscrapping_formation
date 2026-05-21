# Initation au webscrapping avec python & BeautifulSoup

Ce repository contient les notebooks utlisés pour la formation ***Initation au webscrapping avec python & BeautifulSoup*** organisée par MSH-LSE par Alioscha Massein.
Cette formation est tirée de précédentes itération de la [formation manipulation de données textuelles en Python](https://www.ixxi.fr/agenda/evenements/formation-a-la-manipulation-de-donnees-textuelles-en-python-2023) organisée pour l'IXXI et la MSH-LSE par Jean-Philippe Magué et Julien Velcin.

## Cloner le dossier (repository)

En premier lieu, il vous faut cloner ce dossier. Vous pouvez récupérer son url dans la barre d'adresse de votre navigateur, ou en cliquant sur le bouton "Code" en haut à droite de cette page.
Vérifier que git est bien installé sur votre machine. Sinon il vous faudra l'installer avec un des gestionnaires de package cités plus bas.
```bash
git clone <url_du_repository>
```

Sinon, vous pouvez télécharger ce dossier en cliquant sur le bouton "Code" puis "Download ZIP". Il vous faudra dézipper le dossier une fois téléchargé.

## Installation des dépendances

1. Vérifier que vous utilisez bien la version 3.11 de Python. Si ce n'est pas le cas, vous pouvez l'installer via [Anaconda](https://www.anaconda.com/products/distribution#download-section) ou via des gestionnaires de package comme [Homebrew](https://brew.sh/) (pour Mac) ou [Chocolatey](https://chocolatey.org/) (pour Windows).

```bash
brew install python3.11
choco install python311
```
Vous pouvez aussi gérer l'entièreté de vos installations de python avec `uv`, un petit gestionnaire de package python qui permet de gérer vos environnements de développement, vos version de python, mais aussi de vous accompagner dans le déploiement d'application ou de package. 

Si vous souhaitez installer python avec `uv` il faut installer `uv` sur votre ordinateur (ci-dessous) et lancer la commande suivante : 
```bash
uv python install 
# ou
uv python install 3.12.3 #specific version of python
```

Deux options s'offrent donc à vous pour l'installation des dépendances : via `uv` ou via `pip`.

*Nous n'avons pas détaillé l'installation via Anaconda, mais vous pouvez très bien créer un environnement virtuel avec conda et installer les dépendances via pip dans cet environnement.*

### Avec UV

`uv` est une librairie qui permet de gérer l'installation et les environnements virtuels, tout comme pip, mais plus rapide et qui se met à jour automatiquement au lancement de script python. Dans le cas des notebooks, ce n'est pas forcément la solution la plus pratique, mais elle est plus efficace que pip. 

1. Installer uv

```bash
brew install uv
choco install uv
```

Vous pouvez aussi installer `uv` via une autre ligne de commande détaillée dans la documentation du package : 
```bash
#Sur MacOs et Linux
curl -LsSf https://astral.sh/uv/install.sh | sh
````

```cmd
#Sur Windows
powershell -ExecutionPolicy ByPass -c "irm https://astral.sh/uv/install.ps1 | iex"
```

2. Créer votre environnement virtuel avec les dépendances installées automatiquement.

uv a l'avantage de pouvoir créer un environnement virtuel et d'installer les dépendances automatiquement. Il vous suffit de lancer la commande suivante dans le répertoire du projet :
```bash
uv sync
# ou
uv pip install -r requirements.txt
```
Ces commandes installent les dépendances et créent un environnement virtuel (nommé .venv), et s'assure que les packages sont bien à jour. 

#### Initialiser un nouveau projet

Si votre projet est tout nouveau, et que vous n'avez pas encore de fichier `uv.lock` et `pyproject.toml`, vous pouvez initialiser un nouveau projet de deux manière avec uv :
- Soit en créant un nouveau projet depuis `uv` : 
```bash
uv init mon_projet
```

En initialisation un nouveau projet, plusieurs fichiers sont créés : 

> drwxr-xr-x   9 alioscha  staff  288 21 mai   12:24 .git
> -rw-r--r--   1 alioscha  staff  109 21 mai   12:24 .gitignore
> -rw-r--r--   1 alioscha  staff    5 21 mai   12:24 .python-version
> -rw-r--r--   1 alioscha  staff   82 21 mai   12:24 main.py
> -rw-r--r--   1 alioscha  staff  150 21 mai   12:24 pyproject.toml
> -rw-r--r--   1 alioscha  staff    0 21 mai   12:24 README.md

- Soit en initialisant un projet dans un dossier :
```bash
uv init
```

Les mêmes fichiers qu'au dessus sont créés. 

#### Installer de nouvelles dépendances

Pour installer de nouvelles dépédances avec uv, il suffit d'utiliser la commande : 
```bash
uv add le_package_que_je_veux_installer
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
