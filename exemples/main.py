### IMPORT DES LIBRAIRIES
import requests
from bs4 import BeautifulSoup

### URL DE LA PAGE A SCRAPPER
url = 'https://www.msh-lse.fr/laboratoires/'

### REQUETE HTTP
response = requests.get(url)
html = response.text
print(html)