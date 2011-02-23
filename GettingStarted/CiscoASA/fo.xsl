<?xml version='1.0'?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
<xsl:import href="fo-docbook.xsl"/>

<!--

Stylesheet for the .fo format

Install package "fop" (on Ubuntu and Mac Ports) to be able to convert .fo
file to .pdf

-->

<xsl:param name="base.dir" select="'./pdf/'"/>
<xsl:param name="html.stylesheet" select="'users_guide_3.css'"/>
<xsl:param name="part.autolabel" select="1"/>
<xsl:param name="section.autolabel" select="1"/>
<xsl:param name="section.label.includes.component.label" select="1"/>
<xsl:param name="component.label.includes.part.label" select="1"/>
<!-- <xsl:param name="admon.graphics" select="1"/> -->
<xsl:param name="chunker.output.indent" select="'yes'"/>
<xsl:param name="chunk.section.depth" select="2"/>
<xsl:param name="use.id.as.filename" select="1"/>
<xsl:param name="xref.with.number.and.title" select="0"/>
<xsl:param name="keep.relative.image.uris" select="1"/>


<!-- what level gets TOC and what goes there -->
<xsl:param name="generate.toc">
book toc
</xsl:param>

<!-- figure floats do not work in the print output -->
<xsl:param name="default.float.class" select="none"/>

<xsl:attribute-set name="monospace.verbatim.properties">
  <xsl:attribute name="font-family">Courier</xsl:attribute>
  <xsl:attribute name="font-size">8pt</xsl:attribute>
  <xsl:attribute name="keep-together.within-column">always</xsl:attribute>
</xsl:attribute-set>


<xsl:param name="shade.verbatim" select="1"/>

<xsl:attribute-set name="shade.verbatim.style">
  <xsl:attribute name="background-color">#E0E0E0</xsl:attribute>
  <xsl:attribute name="border-width">0.5pt</xsl:attribute>
  <xsl:attribute name="border-style">solid</xsl:attribute>
  <xsl:attribute name="border-color">#575757</xsl:attribute>
  <xsl:attribute name="padding">3pt</xsl:attribute>
</xsl:attribute-set>

<!-- Ignore image scaling for HTML. It is hard to guess image scaling for
     html correctly unless each image is adjusted individually.
<xsl:param name="ignore.image.scaling"  select="1"/>
-->


<!--

Template name	        When it is called
================================================================
user.header.navigation	Called before standard navigational header.
header.navigation	The standard navigational header.
user.header.content	Called after standard navigational header but before any other content.
user.footer.content	Called after the chunk content but before the standard navigational footer.
footer.navigation	The standard navigational footer.
user.footer.navigation	Called after the standard navigational footer

-->

</xsl:stylesheet>
