<<<<<<< HEAD
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
=======
# formation_webscraping



## Getting started

To make it easy for you to get started with GitLab, here's a list of recommended next steps.

Already a pro? Just edit this README.md and make it your own. Want to make it easy? [Use the template at the bottom](#editing-this-readme)!

## Add your files

- [ ] [Create](https://docs.gitlab.com/ee/user/project/repository/web_editor.html#create-a-file) or [upload](https://docs.gitlab.com/ee/user/project/repository/web_editor.html#upload-a-file) files
- [ ] [Add files using the command line](https://docs.gitlab.com/ee/gitlab-basics/add-file.html#add-a-file-using-the-command-line) or push an existing Git repository with the following command:

```
cd existing_repo
git remote add origin https://gitlab.huma-num.fr/msh-lse1/formation_webscraping.git
git branch -M main
git push -uf origin main
```

## Integrate with your tools

- [ ] [Set up project integrations](https://gitlab.huma-num.fr/msh-lse1/formation_webscraping/-/settings/integrations)

## Collaborate with your team

- [ ] [Invite team members and collaborators](https://docs.gitlab.com/ee/user/project/members/)
- [ ] [Create a new merge request](https://docs.gitlab.com/ee/user/project/merge_requests/creating_merge_requests.html)
- [ ] [Automatically close issues from merge requests](https://docs.gitlab.com/ee/user/project/issues/managing_issues.html#closing-issues-automatically)
- [ ] [Enable merge request approvals](https://docs.gitlab.com/ee/user/project/merge_requests/approvals/)
- [ ] [Set auto-merge](https://docs.gitlab.com/ee/user/project/merge_requests/merge_when_pipeline_succeeds.html)

## Test and Deploy

Use the built-in continuous integration in GitLab.

- [ ] [Get started with GitLab CI/CD](https://docs.gitlab.com/ee/ci/quick_start/index.html)
- [ ] [Analyze your code for known vulnerabilities with Static Application Security Testing (SAST)](https://docs.gitlab.com/ee/user/application_security/sast/)
- [ ] [Deploy to Kubernetes, Amazon EC2, or Amazon ECS using Auto Deploy](https://docs.gitlab.com/ee/topics/autodevops/requirements.html)
- [ ] [Use pull-based deployments for improved Kubernetes management](https://docs.gitlab.com/ee/user/clusters/agent/)
- [ ] [Set up protected environments](https://docs.gitlab.com/ee/ci/environments/protected_environments.html)

***

# Editing this README

When you're ready to make this README your own, just edit this file and use the handy template below (or feel free to structure it however you want - this is just a starting point!). Thanks to [makeareadme.com](https://www.makeareadme.com/) for this template.

## Suggestions for a good README

Every project is different, so consider which of these sections apply to yours. The sections used in the template are suggestions for most open source projects. Also keep in mind that while a README can be too long and detailed, too long is better than too short. If you think your README is too long, consider utilizing another form of documentation rather than cutting out information.

## Name
Choose a self-explaining name for your project.

## Description
Let people know what your project can do specifically. Provide context and add a link to any reference visitors might be unfamiliar with. A list of Features or a Background subsection can also be added here. If there are alternatives to your project, this is a good place to list differentiating factors.

## Badges
On some READMEs, you may see small images that convey metadata, such as whether or not all the tests are passing for the project. You can use Shields to add some to your README. Many services also have instructions for adding a badge.

## Visuals
Depending on what you are making, it can be a good idea to include screenshots or even a video (you'll frequently see GIFs rather than actual videos). Tools like ttygif can help, but check out Asciinema for a more sophisticated method.

## Installation
Within a particular ecosystem, there may be a common way of installing things, such as using Yarn, NuGet, or Homebrew. However, consider the possibility that whoever is reading your README is a novice and would like more guidance. Listing specific steps helps remove ambiguity and gets people to using your project as quickly as possible. If it only runs in a specific context like a particular programming language version or operating system or has dependencies that have to be installed manually, also add a Requirements subsection.

## Usage
Use examples liberally, and show the expected output if you can. It's helpful to have inline the smallest example of usage that you can demonstrate, while providing links to more sophisticated examples if they are too long to reasonably include in the README.

## Support
Tell people where they can go to for help. It can be any combination of an issue tracker, a chat room, an email address, etc.

## Roadmap
If you have ideas for releases in the future, it is a good idea to list them in the README.

## Contributing
State if you are open to contributions and what your requirements are for accepting them.

For people who want to make changes to your project, it's helpful to have some documentation on how to get started. Perhaps there is a script that they should run or some environment variables that they need to set. Make these steps explicit. These instructions could also be useful to your future self.

You can also document commands to lint the code or run tests. These steps help to ensure high code quality and reduce the likelihood that the changes inadvertently break something. Having instructions for running tests is especially helpful if it requires external setup, such as starting a Selenium server for testing in a browser.

## Authors and acknowledgment
Show your appreciation to those who have contributed to the project.

## License
For open source projects, say how it is licensed.

## Project status
If you have run out of energy or time for your project, put a note at the top of the README saying that development has slowed down or stopped completely. Someone may choose to fork your project or volunteer to step in as a maintainer or owner, allowing your project to keep going. You can also make an explicit request for maintainers.
>>>>>>> 58426abafaaaa6f06519528498b918979c2a48a2
