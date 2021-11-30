<?xml version="1.0"?>

<xsl:stylesheet version="1.0"
xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:template match="/">
  <html>
  <body>
    <h1>Les personnages</h1>
    <xsl:for-each select="/jeu/personnage">
      <h2>Nom : <xsl:value-of select="current()/@nom"/></h2>
      <xsl:if test="current()/vie &lt; 8">
        <h3>Vie : <xsl:value-of select="current()/vie"/>, DANGER !</h3>
      </xsl:if>
      <xsl:if test="current()/vie &gt; 8">
        <h3>Vie : <xsl:value-of select="current()/vie"/></h3>
      </xsl:if>
      <ul>
        <li>
          Force : <xsl:value-of select="current()/force"/>
        </li>
        <li>
          Dexterite : <xsl:value-of select="current()/dexterite"/>
        </li>
        <li>
          Pouvoir : <xsl:value-of select="current()/pouvoir"/>
        </li>
        <li>
          Vie : <xsl:value-of select="current()/pouvoir"/>
        </li>
      </ul> 
    </xsl:for-each>
  </body>
  </html>
</xsl:template>

</xsl:stylesheet>