<xsl:stylesheet version="1.0"
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform">


<xsl:output method="html" version="1.0" indent="yes" encoding="utf-8"/>


<xsl:template match="para" mode="second">
  <entry><xsl:copy-of select="node()"/></entry>
<xsl:text>
</xsl:text>
</xsl:template>

<xsl:template match="listitem" mode="second">
<xsl:text>
</xsl:text>
  <row>
    <xsl:apply-templates mode="second"/>
  </row>
</xsl:template>


<xsl:template match="itemizedlist" mode="second">
<xsl:text>
</xsl:text>
  <xsl:apply-templates mode="second"/>
</xsl:template>







<xsl:template match="para">

<table frame="topbot" pgwide="0">
<title></title>
<xsl:text>
</xsl:text>
<tgroup cols="2" align="char" charoff="0.5in" char=" ">
<xsl:text>
</xsl:text>
<colspec colwidth="2in" colsep="1"/>
<xsl:text>
</xsl:text>
<colspec colwidth="4in"/>
<xsl:text>
</xsl:text>
<thead>
<xsl:text>
</xsl:text>
<row rowsep="1">
<xsl:text>
</xsl:text>
<entry>GUI control</entry>
<xsl:text>
</xsl:text>
<entry>Description</entry>
<xsl:text>
</xsl:text>
</row>
<xsl:text>
</xsl:text>
</thead>
<xsl:text>
</xsl:text>


<tbody>
<xsl:text>
</xsl:text>

<xsl:apply-templates mode="second"/>

<xsl:text>
</xsl:text>
</tbody>
<xsl:text>
</xsl:text>
</tgroup>
<xsl:text>
</xsl:text>
</table>
<xsl:text>
</xsl:text>

</xsl:template>

</xsl:stylesheet>
