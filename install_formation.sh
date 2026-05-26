#!/usr/bin/env bash

set -e

echo "=== Installation formation webscraping ==="

read -p "URL du repository Git : " REPO_URL

PROJECT_DIR="formation-webscraping"

echo "Système détecté : $(uname -s)"

# Vérifier Git
if ! command -v git &> /dev/null; then
    echo "Git n'est pas installé."
    echo "Installez-le puis relancez le script :"
    echo "- macOS : brew install git"
    echo "- Linux : sudo apt install git"
    echo "- Windows : installez Git for Windows"
    exit 1
fi

# Vérifier Python 3.11
if command -v python3.11 &> /dev/null; then
    PYTHON="python3.11"
elif command -v python &> /dev/null; then
    PYTHON="python"
else
    echo "Python n'est pas installé."
    echo "Installez Python 3.11 puis relancez le script."
    exit 1
fi

echo "Python utilisé : $($PYTHON --version)"

# Créer dossier parent
mkdir -p "$PROJECT_DIR"
cd "$PROJECT_DIR"

# Cloner ou mettre à jour
if [ -d ".git" ]; then
    echo "Repository déjà présent, mise à jour..."
    git pull
else
    echo "Clonage du repository..."
    git clone "$REPO_URL" .
fi

# Créer environnement virtuel
if [ ! -d ".venv" ]; then
    echo "Création de l'environnement virtuel..."
    $PYTHON -m venv .venv
fi

# Activer environnement selon OS
case "$(uname -s)" in
    MINGW*|MSYS*|CYGWIN*)
        source .venv/Scripts/activate
        ;;
    *)
        source .venv/bin/activate
        ;;
esac

echo "Mise à jour de pip..."
python -m pip install --upgrade pip

echo "Installation des dépendances..."
pip install -r requirements.txt

echo "Installation de Jupyter si nécessaire..."
pip install notebook ipykernel

echo "Création du kernel Jupyter..."
python -m ipykernel install --user --name formation-webscraping --display-name "Python - formation webscraping"

echo "Lancement de Jupyter Notebook..."
jupyter notebook
