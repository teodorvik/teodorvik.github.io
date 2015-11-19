<xsl:stylesheet version="1.0"
   xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:output method="html"/>
	
	
<!--Make a template which matches "/" and, within a P-tag,
writes the number of books with genre Computer with a price less than 40 dollars
  -->

  <xsl:template match="/">
    
    <xsl:value-of select="count(//book[price/@value&lt;40.0]/type[@genre='Computer'])"/>

  </xsl:template>
  		
</xsl:stylesheet>