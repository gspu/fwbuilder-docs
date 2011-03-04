<?xml version='1.0'?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
<xsl:import href="chunkfast.xsl"/>
<!-- <xsl:import href="/usr/share/xml/docbook/stylesheet/nwalsh/html/chunk.xsl"/> -->
<xsl:output method="html" encoding="UTF-8" indent="yes"/>

<xsl:param name="base.dir" select="'./html/'"/>
<xsl:param name="html.stylesheet" select="'users_guide_4.css'"/>
<xsl:param name="section.autolabel" select="1"/>
<xsl:param name="section.label.includes.component.label" select="1"/>
<!-- <xsl:param name="admon.graphics" select="1"/> -->
<xsl:param name="chunker.output.encoding" select="'UTF-8'"/>
<xsl:param name="chunker.output.indent" select="'yes'"/>
<xsl:param name="chunk.section.depth" select="2"/>
<!-- <xsl:param name="chunk.first.sections" select="'yes'"/> -->
<xsl:param name="use.id.as.filename" select="1"/>
<xsl:param name="xref.with.number.and.title" select="0"/>

<!-- what level gets TOC and what goes there -->
<xsl:param name="generate.toc">
book toc
chapter toc
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

<xsl:template name="user.header.navigation">
  <xsl:comment>#include virtual="/4.0/ios_getting_started_page_header.html"</xsl:comment>
</xsl:template>

<xsl:template name="user.footer.navigation">
  <xsl:comment>#include virtual="/4.0/getting_started_page_footer.html"</xsl:comment>
</xsl:template>

<!--

    cutomized top navigation 
    Reduced width of the header to 60%, removed breadcumbs

-->

<xsl:template name="header.navigation">
  <xsl:param name="prev" select="/foo"/>
  <xsl:param name="next" select="/foo"/>
  <xsl:param name="nav.context"/>

  <xsl:variable name="home" select="/*[1]"/>
  <xsl:variable name="up" select="parent::*"/>

  <xsl:variable name="row1" select="$navig.showtitles != 0"/>
  <xsl:variable name="row2" select="count($prev) &gt; 0
                                    or (count($up) &gt; 0 
                                        and generate-id($up) != generate-id($home)
                                        and $navig.showtitles != 0)
                                    or count($next) &gt; 0"/>

  <xsl:if test="$suppress.navigation = '0' and $suppress.header.navigation = '0'">
    <div class="navheader">
      <xsl:if test="$row1 or $row2">
        <table width="100%" summary="Navigation header">
          <xsl:if test="$row1">
            <tr>
              <th colspan="3" align="center">
                <xsl:apply-templates select="." mode="object.title.markup"/>
              </th>
            </tr>
          </xsl:if>

          <xsl:if test="$row2">
            <tr>
              <td width="20%" align="left">
                <xsl:if test="count($prev)>0">
                  <a accesskey="p">
                    <xsl:attribute name="href">
                      <xsl:call-template name="href.target">
                        <xsl:with-param name="object" select="$prev"/>
                      </xsl:call-template>
                    </xsl:attribute>
                    <xsl:call-template name="navig.content">
                      <xsl:with-param name="direction" select="'prev'"/>
                    </xsl:call-template>
                  </a>
                </xsl:if>
                <xsl:text> </xsl:text>
              </td>
              <th width="60%" align="center">
                <xsl:choose>
                  <xsl:when test="count($up) > 0
                                  and generate-id($up) != generate-id($home)
                                  and $navig.showtitles != 0">
<!--
                    <xsl:apply-templates select="$up" mode="object.title.markup"/>
-->
                  </xsl:when>
                  <xsl:otherwise> </xsl:otherwise>
                </xsl:choose>
              </th>
              <td width="20%" align="right">
                <xsl:text> </xsl:text>
                <xsl:if test="count($next)>0">
                  <a accesskey="n">
                    <xsl:attribute name="href">
                      <xsl:call-template name="href.target">
                        <xsl:with-param name="object" select="$next"/>
                      </xsl:call-template>
                    </xsl:attribute>
                    <xsl:call-template name="navig.content">
                      <xsl:with-param name="direction" select="'next'"/>
                    </xsl:call-template>
                  </a>
                </xsl:if>
              </td>
            </tr>
          </xsl:if>
        </table>
      </xsl:if>
      <xsl:if test="$header.rule != 0">
        <hr/>
      </xsl:if>
    </div>
  </xsl:if>
</xsl:template>

</xsl:stylesheet>
