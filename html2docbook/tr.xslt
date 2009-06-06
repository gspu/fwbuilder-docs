

<xsl:stylesheet version="1.0"
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
>


<xsl:output method="xml" version="1.0" 
   doctype-system="fwbuilder.dtd" indent="yes" encoding="utf-8"/>

<xsl:template match="node() | @*">
  <xsl:copy>
    <xsl:apply-templates select="node() | @*"/>
  </xsl:copy>
</xsl:template>

<xsl:template match="span">
    <xsl:apply-templates select="node()"/>
</xsl:template>


<xsl:template match="h1">
  <xsl:text>

  ================ Start section 1
  </xsl:text>
  <xsl:element name="title">
    <xsl:apply-templates select="node()"/>
  </xsl:element>
</xsl:template>

<xsl:template match="h2">
  <xsl:text>

  ================ Start section 2
  </xsl:text>
  <xsl:element name="title">
    <xsl:apply-templates select="node()"/>
  </xsl:element>
  <xsl:text>

  </xsl:text>
</xsl:template>

<xsl:template match="h3">
  <xsl:text>

  ================ Start section 3
  </xsl:text>
  <xsl:element name="title">
    <xsl:apply-templates select="node()"/>
  </xsl:element>
</xsl:template>


<xsl:template match="b">
  <xsl:element name="emphasis">
    <xsl:apply-templates select="node()"/>
  </xsl:element>
</xsl:template>

<xsl:template match="i">
  <xsl:apply-templates select="node()"/>
</xsl:template>


<xsl:template match="pre">
  <xsl:text>

  </xsl:text>
  <xsl:element name="screen">
    <xsl:apply-templates select="node()"/>
  </xsl:element>
</xsl:template>


<xsl:template match="blockquote">
  <xsl:text>

  </xsl:text>
  <xsl:element name="remark">
    <xsl:apply-templates select="node()"/>
  </xsl:element>
  <xsl:text>
  </xsl:text>
</xsl:template>


<xsl:template match="ul">
  <xsl:text>

  </xsl:text>
  <xsl:element name="itemizedlist">
    <xsl:apply-templates select="node()"/>
  </xsl:element>
</xsl:template>


<xsl:template match="li">
  <xsl:text>

  </xsl:text>
  <xsl:element name="item">
    <xsl:element name="para">
      <xsl:text>
  </xsl:text>
    <xsl:apply-templates select="node()"/>
    </xsl:element>
    <xsl:text>
  </xsl:text>
  </xsl:element>
  <xsl:text>
  </xsl:text>
</xsl:template>


<xsl:template match="img">
  <xsl:variable name="file" select="@src"/>
  <xsl:text>

  </xsl:text>
  <xsl:element name="figure">
    <xsl:attribute name="float">1</xsl:attribute>
    <xsl:element name="graphic">
      <xsl:attribute name="scale">50</xsl:attribute>
      <xsl:attribute name="filereg"><xsl:value-of select="$file"/></xsl:attribute>
    </xsl:element>
  </xsl:element>
</xsl:template>



<xsl:template match="p">
  <xsl:text>

  </xsl:text>
  <xsl:element name="para">
  <xsl:text>
  </xsl:text>
    <xsl:apply-templates select="node()"/>
    <xsl:text>
  </xsl:text>
  </xsl:element>
  <xsl:text>
  </xsl:text>
</xsl:template>


</xsl:stylesheet>


