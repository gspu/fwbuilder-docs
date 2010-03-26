<?xml version='1.0'?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
<xsl:import href="onechunk.xsl"/>
<xsl:output method="html" encoding="UTF-8" indent="yes"/>

<xsl:param name="base.dir" select="'./html/'"/>
<!-- <xsl:param name="html.stylesheet" select="'users_guide_4.css'"/> -->

<xsl:param name="chapter.autolabel" select="0"/>
<!-- <xsl:param name="section.autolabel" select="1"/> -->
<xsl:param name="section.label.includes.component.label" select="1"/>
<!-- <xsl:param name="admon.graphics" select="1"/> -->
<xsl:param name="chunker.output.encoding" select="'UTF-8'"/>
<xsl:param name="chunker.output.indent" select="'yes'"/>
<xsl:param name="chunk.section.depth" select="0"/>
<xsl:param name="chunk.first.sections" select="'no'"/>
<xsl:param name="use.id.as.filename" select="1"/>
<xsl:param name="root.filename" select="''"/>
<xsl:param name="xref.with.number.and.title" select="0"/>

<xsl:param name="olink.doctitle" select="'yes'"/>

<!-- what level gets TOC and what goes there -->
<xsl:param name="generate.toc">
book toc
</xsl:param>

<!-- Ignore image scaling for HTML. It is hard to guess image scaling for
     html correctly unless each image is adjusted individually.
-->
<xsl:param name="ignore.image.scaling"  select="1"/>

<!-- tablecolumns.extension is needed to be able to control table column width
     in HTML output. Unfortunately this does not work with xsltproc and 
     requires xalan or saxon XSLT processors
<xsl:param name="use.extensions" select="1"/>
<xsl:param name="tablecolumns.extension" select="1"/>
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
