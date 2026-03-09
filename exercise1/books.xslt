<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
                xmlns:xs="http://www.w3.org/2001/XMLSchema"
                xmlns:array="http://www.w3.org/2005/xpath-functions/array"
                xmlns:map="http://www.w3.org/2005/xpath-functions/map"
                xmlns:math="http://www.w3.org/2005/xpath-functions/math"
                exclude-result-prefixes="#all"
                expand-text="yes"
                version="1.0">

  <xsl:template match="/">
    <html>
      <head>
      <title>Exercise 1</title>  
      </head>
      <body>
          <h2>Bookstore</h2>
          <table border="1">
			      <tr bgcolor="#9acd32">
              <th>title</th>
              <th>author</th>
              <th>year</th>
              <th>price</th>
            </tr>
          <xsl:for-each select="library/book">
            
          
            <tr>
              <td><xsl:value-of select="title"/></td>
              <td><xsl:value-of select="author"/></td>
              <td><xsl:value-of select="year"/></td>
              <td><xsl:value-of select="price"/></td>
            </tr>
          </xsl:for-each>
          </table>
      </body>  
    </html>
  </xsl:template>
</xsl:stylesheet>
