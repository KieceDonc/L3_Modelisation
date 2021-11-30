<?xml version="1.0"?>

<xsl:stylesheet version="1.0"
xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:template match="/">
  <html>
  <body>
    <h1>Informations</h1>
    <xsl:for-each select="/gare/usager">
      <ul>
        <li>
          ID : <xsl:value-of select="current()/@id"/>
        </li>
        <li>
          Nom : <xsl:value-of select="current()/@nom"/>
        </li>
        <li>
          Prénom : <xsl:value-of select="current()/@prenom"/>
        </li>
        <li>
          Réservations :
          <ul>
            <li>
              Train : <xsl:value-of select="//resa[@id=current()/@id]/../../@numero"/>
            </li>
            <li>
              Voiture : <xsl:value-of select="//resa[@id=current()/@id]/../@numero"/>
            </li>
            <li>
              Numéro de place : <xsl:value-of select="//resa[@id=current()/@id]/@numero"/>
            </li>
          </ul>
        </li>
      </ul> 
    </xsl:for-each>
  </body>
  </html>
</xsl:template>

</xsl:stylesheet>