<?xml version="1.0"?>

<xsl:stylesheet version="1.0"
xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:template match="/">
  <html>
  <body>
    <table>
      <tr>
        <td>Noms</td>
        <td>Description</td>
        <td>Prix</td>
      </tr>
      <xsl:for-each select="/catalogue/objet">
        <tr>
          <td>
            <xsl:value-of select="current()/nom[@lang='fr']"/>
          </td>
          <td>
            <xsl:value-of select="current()/description[@lang='fr']"/>
          </td>
          <td>              
            <xsl:value-of select="current()/prix"/>
          </td>
        </tr>
      </xsl:for-each>
    </table>
  </body>
  </html>
</xsl:template>

</xsl:stylesheet>