<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
  
  
  <xsl:template match="/">
    <html>
      <body>
        <table border="1">
          <tr bgcolor="#00ff6a">
            <th>Food Item</th>
            <th>Carbs (g)</th>
            <th>Fiber (g)</th>
            <th>Fat (g)</th>
            <th>Energy (kj)</th>
          </tr>
          <!--<xsl:for-each select="food_list/food_item">-->
          <!--  <xsl:for-each select="food_list/food_item[@type='vegetable']">-->
          <xsl:for-each select="food_list/food_item[@type='vegetable' or @type='fruit']">
            <xsl:sort select="fiber_per_serving" data-type="number" order="descending"/>
            
            <tr>
              <xsl:attribute name="style">
                <xsl:choose>
                  <xsl:when test="@type='vegetable'">
                    <xsl:text>background-color: #90EE90;</xsl:text>
                  </xsl:when>
                  <xsl:when test="@type='fruit'">
                    <xsl:text>background-color: #FFB6C1;</xsl:text>
                  </xsl:when>
                </xsl:choose>
              </xsl:attribute>
              
              <td><xsl:value-of select="name"/></td>
              <td><xsl:value-of select="carbs_per_serving"/></td>
              <td><xsl:value-of select="fiber_per_serving"/></td>
              <td><xsl:value-of select="fat_per_serving"/></td>
              <td><xsl:value-of select="kj_per_serving"/></td>
            </tr>
          </xsl:for-each>
        </table>
      </body>  
    </html>
  </xsl:template>
  
  
</xsl:stylesheet>