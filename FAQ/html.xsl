<?xml version='1.0'?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
<xsl:import href="docbook.xsl"/>
<!-- <xsl:import href="qandaset.xsl"/> -->

<xsl:output method="html" encoding="UTF-8" indent="yes"/>

<xsl:param name="base.dir" select="'./'"/>
<xsl:param name="qanda.in.toc" select="0"/>

<!-- what level gets TOC and what goes there -->
<!-- <xsl:param name="generate.toc" select="'book toc'"/> -->

<!--
<xsl:param name="html.stylesheet" select="'users_guide_4.css'"/>
<xsl:param name="section.autolabel" select="1"/>
<xsl:param name="section.label.includes.component.label" select="1"/>
<xsl:param name="chunker.output.encoding" select="'UTF-8'"/>
<xsl:param name="chunker.output.indent" select="'yes'"/>
<xsl:param name="chunk.section.depth" select="2"/>
<xsl:param name="chunk.first.sections" select="'yes'"/>
<xsl:param name="use.id.as.filename" select="1"/>
<xsl:param name="xref.with.number.and.title" select="0"/>
-->


<!-- Ignore image scaling for HTML. It is hard to guess image scaling for
     html correctly unless each image is adjusted individually.
<xsl:param name="ignore.image.scaling"  select="1"/>
-->

<!-- tablecolumns.extension is needed to be able to control table column width
     in HTML output. Unfortunately this does not work with xsltproc and 
     requires xalan or saxon XSLT processors
<xsl:param name="use.extensions" select="1"/>
<xsl:param name="tablecolumns.extension" select="1"/>
-->


</xsl:stylesheet>
