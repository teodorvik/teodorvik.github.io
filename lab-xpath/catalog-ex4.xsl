<xsl:stylesheet version="1.0"
   xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:output method="html"/>
	
	
<!--Make a template which matches "/" and, within a P-tag,
writes the number of books with genre Computer with a price less than 40 dollars
  -->

  <xsl:template match="/">
    <p>
      <xsl:if test ="//book/@genre = 'Computer'">
        <xsl:if test="price/@value&lt;40.0">
          <xsl:value-of select="@title"/>
        </xsl:if>
      </xsl:if>
    </p>
  </xsl:template>
  		
</xsl:stylesheet>