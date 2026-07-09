<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0"
  xmlns:d="http://docbook.org/ns/docbook"
  xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
  xmlns:fo="http://www.w3.org/1999/XSL/Format">

<xsl:import href="/Users/vdamewood/.local/share/xml/docbook/xslt/1.79.2/fo/docbook.xsl"/>

<xsl:template match="d:guibutton">
    <xsl:call-template name="inline.italicseq"/>
</xsl:template>

<xsl:template match="d:guilabel">
    <xsl:call-template name="inline.italicseq"/>
</xsl:template>

<xsl:template match="d:guimenu">
    <xsl:call-template name="inline.italicseq"/>
</xsl:template>

<xsl:template match="d:guimenuitem">
    <xsl:call-template name="inline.italicseq"/>
</xsl:template>

<xsl:template match="d:type">
    <xsl:call-template name="inline.monoseq"/>
</xsl:template>

<xsl:template match="d:symbol">
    <xsl:call-template name="inline.monoseq"/>
</xsl:template>

<xsl:template match="d:production" mode="label.markup">
    <xsl:number count="d:production" level="single"/>
</xsl:template>

<xsl:template match="d:cmdsynopsis">
  <fo:block xsl:use-attribute-sets="normal.para.spacing">
    <xsl:call-template name="inline.monoseq"/>
  </fo:block>
</xsl:template>

<xsl:template match="d:cmdsynopsis/d:command">
  <xsl:apply-templates/>
  <xsl:text> </xsl:text>
</xsl:template>

<xsl:template match="d:group|d:arg" name="group-or-arg">
  <xsl:variable name="choice" select="@choice"/>
  <xsl:variable name="rep" select="@rep"/>
  <xsl:variable name="sepchar">
    <xsl:choose>
      <xsl:when test="ancestor-or-self::*/@sepchar">
        <xsl:value-of select="ancestor-or-self::*/@sepchar"/>
      </xsl:when>
      <xsl:otherwise>
        <xsl:text> </xsl:text>
      </xsl:otherwise>
    </xsl:choose>
  </xsl:variable>
  <xsl:if test="preceding-sibling::*">
    <xsl:value-of select="$sepchar"/>
  </xsl:if>
  <fo:inline font-weight="bold">
  <xsl:choose>
    <xsl:when test="$choice='plain'">
      <xsl:value-of select="$arg.choice.plain.open.str"/>
    </xsl:when>
    <xsl:when test="$choice='req'">
      <xsl:value-of select="$arg.choice.req.open.str"/>
    </xsl:when>
    <xsl:when test="$choice='opt'">
      <xsl:value-of select="$arg.choice.opt.open.str"/>
    </xsl:when>
    <xsl:otherwise>
      <xsl:value-of select="$arg.choice.def.open.str"/>
    </xsl:otherwise>
  </xsl:choose>
  <xsl:apply-templates/>
  <xsl:choose>
    <xsl:when test="$rep='repeat'">
      <xsl:value-of select="$arg.rep.repeat.str"/>
    </xsl:when>
    <xsl:when test="$rep='norepeat'">
      <xsl:value-of select="$arg.rep.norepeat.str"/>
    </xsl:when>
    <xsl:otherwise>
      <xsl:value-of select="$arg.rep.def.str"/>
    </xsl:otherwise>
  </xsl:choose>
  <xsl:choose>
    <xsl:when test="$choice='plain'">
      <xsl:value-of select="$arg.choice.plain.close.str"/>
    </xsl:when>
    <xsl:when test="$choice='req'">
      <xsl:value-of select="$arg.choice.req.close.str"/>
    </xsl:when>
    <xsl:when test="$choice='opt'">
      <xsl:value-of select="$arg.choice.opt.close.str"/>
    </xsl:when>
    <xsl:otherwise>
      <xsl:value-of select="$arg.choice.def.close.str"/>
    </xsl:otherwise>
  </xsl:choose>
  </fo:inline>
</xsl:template>

<xsl:template match="d:cmdsynopsis/d:arg/d:replaceable">
  <fo:inline font-weight="normal">
  <xsl:call-template name="inline.italicmonoseq"/>
  </fo:inline>
</xsl:template>

<xsl:param name="default.table.width" select="'100%'"/>
<xsl:param name="use.extensions" select="'0'"/>
<xsl:param name="admon.graphics" select="'1'"/>
<xsl:param name="admon.graphics.extension" select="'.svg'"/>
<xsl:param name="title.font.family">Myriad Pro Condensed</xsl:param>
<xsl:param name="body.font.family">Garamond Premier Pro</xsl:param>
<xsl:param name="monospace.font.family">Letter Gothic Std</xsl:param>

<xsl:param name="generate.toc">
    /appendix toc,title
    article/appendix  nop
    /article  nop
    book      toc,title,figure,table,example,equation
    /chapter  toc,title
    part      nop
    /preface  toc,title
    reference toc,title
    /sect1    toc
    /sect2    toc
    /sect3    toc
    /sect4    toc
    /sect5    toc
    /section  toc
    set       toc,title
</xsl:param>
</xsl:stylesheet>
