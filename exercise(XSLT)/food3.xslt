<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
  
  <!-- Template principal -->
  <xsl:template match="/">
    <html>
      <head>
        <title>Ejercicio 4 - Apply Templates</title>
      </head>
      <body>
        <h2>Alimentos ordenados por fibra (usando apply-templates)</h2>
        <table border="1">
          <tr bgcolor="#9acd32">
            <th>Food Item</th>
            <th>Type</th>
            <th>Carbs (g)</th>
            <th>Fiber (g)</th>
            <th>Fat (g)</th>
            <th>Energy (kj)</th>
          </tr>
          
          <!-- APPLY-TEMPLATES: Selecciona verduras y frutas, ordenadas por fibra -->
          <xsl:apply-templates select="food_list/food_item[@type='vegetable' or @type='fruit']">
            <xsl:sort select="fiber_per_serving" data-type="number" order="descending"/>
          </xsl:apply-templates>
          
        </table>
      </body>  
    </html>
  </xsl:template>
  
  <!-- Template para cada food_item -->
  <xsl:template match="food_item">
    <tr>
      <!-- Color según el tipo -->
      <xsl:attribute name="bgcolor">
        <xsl:choose>
          <xsl:when test="@type='vegetable'">#90EE90</xsl:when>  <!-- Verde -->
          <xsl:when test="@type='fruit'">#FFB6C1</xsl:when>      <!-- Rosa -->
          <xsl:otherwise>white</xsl:otherwise>
        </xsl:choose>
      </xsl:attribute>
      
      <td><xsl:value-of select="name"/></td>
      <td><xsl:value-of select="@type"/></td>
      <td><xsl:value-of select="carbs_per_serving"/></td>
      <td><xsl:value-of select="fiber_per_serving"/></td>
      <td><xsl:value-of select="fat_per_serving"/></td>
      <td><xsl:value-of select="kj_per_serving"/></td>
    </tr>
  </xsl:template>
  
</xsl:stylesheet>