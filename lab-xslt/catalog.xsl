<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:template match="catalog"> 
<html>
  
  <body>
    
    <xsl:for-each select="./*">
      <h1>Hej</h1>
    </xsl:for-each>
    <!--  h1 for each child in catalog 
        ul
          li for each child in books/articles
            strong
              a href -->
  </body>
  
  </html>
</xsl:template> 


  
</xsl:stylesheet>

