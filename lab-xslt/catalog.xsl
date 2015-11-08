<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:template match="catalog"> 
<html>
  
  <body>
    <xsl:for-each select="./*"> <!-- For each child in catalog-->
        <xsl:if test="local-name()='books'">
          <h1>Books</h1>
          <ul>
            <xsl:for-each select="./*">
              <!-- for each book/article in books/articles -->
              <li>
                <strong>
                  <a>
                    <xsl:attribute name="href">
                      <xsl:value-of select="link"/>
                    </xsl:attribute>
                    <xsl:value-of select="title"/>
                  </a>: 
                  <xsl:value-of select="publish_date/year"/>,
                </strong>
                <xsl:value-of select="description"/>
              </li>
            </xsl:for-each>
          </ul>
        </xsl:if>

      <xsl:if test="local-name()='articles'">
        <h1>Articles</h1>
        <ul>
          <xsl:for-each select="./*">
            <!-- for each book/article in books/articles -->
            <li>
              <strong>
                <a>
                  <xsl:attribute name="href">
                    <xsl:value-of select="link"/>
                  </xsl:attribute>
                  <xsl:value-of select="title"/>
                </a>: 
                <xsl:for-each select="author">
                  <xsl:value-of select="."/>, 
                </xsl:for-each>
              </strong>
              <xsl:value-of select="year"/>.
              <xsl:value-of select="description"/>
            </li>
          </xsl:for-each>
        </ul>
      </xsl:if>

      
    </xsl:for-each>
  </body>
  
  </html>
</xsl:template> 


  
</xsl:stylesheet>

