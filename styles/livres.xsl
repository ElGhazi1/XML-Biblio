<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:output method="html" encoding="UTF-8" indent="yes"/>
    <xsl:template match="/">
        <html>
        <head>
            <title>Liste des livres</title>
        </head>
        <body>
            <table border="1">
                <tr>
                    <th>Titre</th>
                    <th>Auteur</th>
                    <th>Année</th>
                    <th>Genre</th>
                    <th>Prix</th>
                </tr>
                <xsl:for-each select="biblio/livre">
                    <tr>
                        <td><xsl:value-of select="titre"/></td>
                        <td><xsl:value-of select="auteur"/></td>
                        <td><xsl:value-of select="annee"/></td>
                        <td><xsl:value-of select="genre"/></td>
                        <td><xsl:value-of select="prix"/> <xsl:value-of select="prix/@devise"/></td>
                    </tr>
                </xsl:for-each>
            </table>
        </body>
        </html>
    </xsl:template>
</xsl:stylesheet>
