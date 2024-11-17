# 📚 Projet : Gestion d'une bibliothèque numérique

# 🛠️ Prérequis

### Kali Linux (ou toute autre distribution Linux)
### xmllint (inclus par défaut avec libxml2-utils)

## 📋 Installation
Sur Kali Linux, xmllint est généralement déjà installé. Pour vérifier :
```
xmllint --version
```
#### Si ce n'est pas installé, utilisez la commande suivante :
```
sudo apt update
sudo apt install libxml2-utils
```

## 📁 Structure du projet
```
bibliotheque/
├── data/
│   ├── livres.xml
│   ├── livres.dtd
│   ├── livres.xsd
├── styles/
│   └── livres.xsl
└── README.md
```

## 📄 Exemple de fichier XML (```livres.xml```)
```
<?xml version="1.0" encoding="UTF-8"?>
<bibliotheque>
    <livre>
        <titre>Le Petit Prince</titre>
        <auteur>Antoine de Saint-Exupéry</auteur>
        <annee>1943</annee>
        <genre>Fiction</genre>
        <prix devise="EUR">15.99</prix>
    </livre>
    <livre>
        <titre>1984</titre>
        <auteur>George Orwell</auteur>
        <annee>1949</annee>
        <genre>Science Fiction</genre>
        <prix devise="USD">12.99</prix>
    </livre>
</bibliotheque>

```

## 🔍 Utilisation de xmllint avec XPath

### 1. Lister tous les titres de livres
```
xmllint --xpath "//livre/titre/text()" data/livres.xml
```
### 2. Trouver les livres dont le prix est supérieur à 13
```
xmllint --xpath "//livre[prix > 13]/titre/text()" data/livres.xml
```
### 3. Lister les livres avec la devise en EUR
```
xmllint --xpath "//livre[prix/@devise='EUR']/titre/text()" data/livres.xml
```
### 4. Extraire tous les auteurs
```
xmllint --xpath "//auteur/text()" data/livres.xml
```
### 5. Trouver les livres publiés avant l'année 1950
```
xmllint --xpath "//livre[annee < 1950]/titre/text()" data/livres.xml
```
## 🧪 Validation du fichier XML avec DTD et XSD
### Validation avec DTD
```
xmllint --noout --dtdvalid data/livres.dtd data/livres.xml
```
### Validation avec XSD
```
xmllint --noout --schema data/livres.xsd data/livres.xml
```
## 🖥️ Transformation en HTML avec XSLT

### Pour générer une page HTML à partir du fichier XML avec un stylesheet XSL :

```
xsltproc styles/livres.xsl data/livres.xml -o output/livres.html
```