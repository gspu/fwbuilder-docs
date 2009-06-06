

<xsl:stylesheet version="1.0"
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
>


<xsl:output method="xml" version="1.0" 
   doctype-system="http://www.oasis-open.org/docbook/xml/4.2/docbookx.dtd" indent="yes" encoding="utf-8"/>

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

  </xsl:text>
  <xsl:comment>
  /chapter
  chapter
  </xsl:comment>
  <xsl:text>
      </xsl:text>
  <xsl:element name="title">
    <xsl:apply-templates select="node()"/>
  </xsl:element>
</xsl:template>

<xsl:template match="h2">
  <xsl:text>

  </xsl:text>
  <xsl:comment>
  /sect1
  sect1
  </xsl:comment>
  <xsl:text>
        </xsl:text>
  <xsl:element name="title">
    <xsl:apply-templates select="node()"/>
  </xsl:element>
  <xsl:text>

  </xsl:text>
</xsl:template>

<xsl:template match="h3">
  <xsl:text>

  </xsl:text>
  <xsl:comment>
  /sect2
  sect2
  </xsl:comment>
  <xsl:text>
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

<xsl:template match="em">
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
  <xsl:element name="note">
    <xsl:element name="para">
      <xsl:apply-templates select="node()"/>
    </xsl:element>
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
    <xsl:element name="title">
    </xsl:element>
    <xsl:element name="graphic">
      <xsl:attribute name="scale">50</xsl:attribute>
      <xsl:attribute name="fileref"><xsl:value-of select="$file"/></xsl:attribute>
    </xsl:element>
  </xsl:element>
</xsl:template>



<xsl:template match="a">
  <xsl:variable name="url" select="@href"/>
  <xsl:text>

  </xsl:text>
  <xsl:element name="ulink">
    <xsl:attribute name="url"><xsl:value-of select="$url"/></xsl:attribute>
    <xsl:apply-templates select="node()"/>
  </xsl:element>
</xsl:template>


<xsl:template match="table">
  <xsl:text>

        </xsl:text>
  <xsl:element name="table">
    <xsl:apply-templates select="node()"/>
  </xsl:element>
</xsl:template>



<xsl:template match="tr">
  <xsl:text>

        </xsl:text>
  <xsl:element name="row">
    <xsl:apply-templates select="node()"/>
  </xsl:element>
</xsl:template>



<xsl:template match="td">
  <xsl:text>

        </xsl:text>
  <xsl:element name="entry">
    <xsl:apply-templates select="node()"/>
  </xsl:element>
</xsl:template>



<xsl:template match="th">
  <xsl:text>

        </xsl:text>
  <xsl:element name="entry">
    <xsl:apply-templates select="node()"/>
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


<xsl:template match="body">
  <xsl:text>

  </xsl:text>
  <xsl:element name="book">
    <xsl:attribute name="id">Using</xsl:attribute>
    <xsl:apply-templates select="node()"/>
  </xsl:element>
</xsl:template>



<xsl:template match="html">
  <xsl:text>

  </xsl:text>
  <xsl:apply-templates select="node()"/>
</xsl:template>



</xsl:stylesheet>


