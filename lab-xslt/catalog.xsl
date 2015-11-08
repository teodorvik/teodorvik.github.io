<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:template match="catalog"> 
<html>
  
  <body>
    <xsl:for-each select="/"> <!-- For each child in catalog-->
      <h1>
        <xsl:value-of select ="name(.)"/>
      </h1>
      <ul>
        <xsl:for-each select="./*"> <!-- for each book/article in books/articles -->
          <li>
            <strong>
              <a>
                <xsl:attribute name="href">
                  <xsl:value-of select="link"/>
                </xsl:attribute>
                <xsl:value-of select="title"/>
              </a>
              : <xsl:value-of select="year"/>,
            </strong>
            <xsl:value-of select="description"/>
          </li>
        </xsl:for-each>
      </ul>
    </xsl:for-each>
  </body>
  
  </html>
</xsl:template> 


  
</xsl:stylesheet>

