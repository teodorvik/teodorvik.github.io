<xsl:stylesheet version="1.0"
   xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:output method="html"/>
	
	
<!-- Gör	en	mall	som,	inom	P-taggar,	skriver	ut	titlarna	på	
     alla	böcker under	förutsättningen	att	de	är	
     billigare	än	30	dollar  -->

  <xsl:template match="//book">
    <xsl:if test="@value&lt;30.0">
      <p><xsl:value-of select="@title"/></p>
    </xsl:if>
  </xsl:template>

</xsl:stylesheet>