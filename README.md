# 📚 Projet : Gestion d'une bibliothèque numérique

## 📝 Description du projet

Dans ce projet, vous allez créer une bibliothèque numérique qui utilise des fichiers XML pour stocker des informations sur des livres. Vous allez apprendre à structurer, valider, interroger et transformer des documents XML à l'aide des outils suivants : DTD, XSD, XPath, XSLT, et l'outil xmllint.

## 🛠️ Prérequis

Pour ce projet, vous aurez besoin des éléments suivants :
### Système d'exploitation :

####    Kali Linux (ou toute autre distribution Linux compatible).

### Outils nécessaires :

####    xmllint : Outil en ligne de commande pour valider et interroger des fichiers XML (généralement inclus par défaut avec libxml2-utils).


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
│   ├── livre.dtd
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
Assurez-vous que vos fichiers XML sont correctement structurés et valident en utilisant les fichiers DTD et XSD fournis.

### Validation avec DTD
```
xmllint --noout --dtdvalid data/livre.dtd data/livres.xml
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



## 🎯 Conclusion

### À la fin de ce projet, vous aurez appris à :

####    Créer des documents XML bien structurés.
####    Valider des fichiers XML avec DTD et XSD.
####    Interroger des fichiers XML avec XPath.
####    Transformer des fichiers XML en HTML avec XSLT.

### Cela vous donnera une compréhension solide des concepts XML et des outils xmllint utilisés dans le monde réel pour le traitement de données.