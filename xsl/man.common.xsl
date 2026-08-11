<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0"
  xmlns:d="http://docbook.org/ns/docbook"
  xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
  xmlns:fo="http://www.w3.org/1999/XSL/Format">
<xsl:import href="/Users/vdamewood/.local/share/xml/docbook/xslt/1.79.2/manpages/docbook.xsl"/>


<xsl:template name="write.chunk">
  <xsl:param name="filename" select="''"/>
  <xsl:param name="quiet" select="$chunk.quietly"/>
  <xsl:param name="suppress-context-node-name" select="0"/>
  <xsl:param name="message-prolog"/>
  <xsl:param name="message-epilog"/>

  <xsl:param name="method" select="$chunker.output.method"/>
  <xsl:param name="encoding" select="$chunker.output.encoding"/>
  <xsl:param name="indent" select="$chunker.output.indent"/>
  <xsl:param name="omit-xml-declaration"
             select="$chunker.output.omit-xml-declaration"/>
  <xsl:param name="standalone" select="$chunker.output.standalone"/>
  <xsl:param name="doctype-public" select="$chunker.output.doctype-public"/>
  <xsl:param name="doctype-system" select="$chunker.output.doctype-system"/>
  <xsl:param name="media-type" select="$chunker.output.media-type"/>
  <xsl:param name="cdata-section-elements"
             select="$chunker.output.cdata-section-elements"/>

  <xsl:param name="content"/>

  <xsl:if test="$quiet = 0">
    <xsl:message>
      <xsl:if test="not($message-prolog = '')">
        <xsl:value-of select="$message-prolog"/>
      </xsl:if>
      <xsl:text>Writing </xsl:text>
      <xsl:value-of select="$filename"/>
      <xsl:if test="name(.) != '' and $suppress-context-node-name = 0">
        <xsl:text> for </xsl:text>
        <xsl:value-of select="name(.)"/>
        <xsl:if test="@id or @xml:id">
          <xsl:text>(</xsl:text>
          <xsl:value-of select="(@id|@xml:id)[1]"/>
          <xsl:text>)</xsl:text>
        </xsl:if>
      </xsl:if>
      <xsl:if test="not($message-epilog = '')">
        <xsl:value-of select="$message-epilog"/>
      </xsl:if>
    </xsl:message>
  </xsl:if>

  <xsl:choose>
    <!-- Handle the permutations ... -->
    <xsl:when test="$media-type != ''">
      <xsl:choose>
        <xsl:when test="$doctype-public != '' and $doctype-system != ''">
          <xsl:result-document
                        href="{$filename}"
                        method="{$method}"
                        encoding="{$encoding}"
                        indent="{$indent}"
                        omit-xml-declaration="{$omit-xml-declaration}"
                        cdata-section-elements="{$cdata-section-elements}"
                        media-type="{$media-type}"
                        doctype-public="{$doctype-public}"
                        doctype-system="{$doctype-system}"
                        standalone="{$standalone}">
            <xsl:copy-of select="$content"/>
          </xsl:result-document>
        </xsl:when>
        <xsl:when test="$doctype-public != '' and $doctype-system = ''">
          <xsl:result-document
                        href="{$filename}"
                        method="{$method}"
                        encoding="{$encoding}"
                        indent="{$indent}"
                        omit-xml-declaration="{$omit-xml-declaration}"
                        cdata-section-elements="{$cdata-section-elements}"
                        media-type="{$media-type}"
                        doctype-public="{$doctype-public}"
                        standalone="{$standalone}">
            <xsl:copy-of select="$content"/>
          </xsl:result-document>
        </xsl:when>
        <xsl:when test="$doctype-public = '' and $doctype-system != ''">
          <xsl:result-document
                        href="{$filename}"
                        method="{$method}"
                        encoding="{$encoding}"
                        indent="{$indent}"
                        omit-xml-declaration="{$omit-xml-declaration}"
                        cdata-section-elements="{$cdata-section-elements}"
                        media-type="{$media-type}"
                        doctype-system="{$doctype-system}"
                        standalone="{$standalone}">
            <xsl:copy-of select="$content"/>
          </xsl:result-document>
        </xsl:when>
        <xsl:otherwise><!-- $doctype-public = '' and $doctype-system = ''"> -->
          <xsl:result-document
                        href="{$filename}"
                        method="{$method}"
                        encoding="{$encoding}"
                        indent="{$indent}"
                        omit-xml-declaration="{$omit-xml-declaration}"
                        cdata-section-elements="{$cdata-section-elements}"
                        media-type="{$media-type}"
                        standalone="{$standalone}">
            <xsl:copy-of select="$content"/>
          </xsl:result-document>
        </xsl:otherwise>
      </xsl:choose>
    </xsl:when>
    <xsl:otherwise>
      <xsl:choose>
        <xsl:when test="$doctype-public != '' and $doctype-system != ''">
          <xsl:result-document
                        href="{$filename}"
                        method="{$method}"
                        encoding="{$encoding}"
                        indent="{$indent}"
                        omit-xml-declaration="{$omit-xml-declaration}"
                        cdata-section-elements="{$cdata-section-elements}"
                        doctype-public="{$doctype-public}"
                        doctype-system="{$doctype-system}"
                        standalone="{$standalone}">
            <xsl:copy-of select="$content"/>
          </xsl:result-document>
        </xsl:when>
        <xsl:when test="$doctype-public != '' and $doctype-system = ''">
          <xsl:result-document
                        href="{$filename}"
                        method="{$method}"
                        encoding="{$encoding}"
                        indent="{$indent}"
                        omit-xml-declaration="{$omit-xml-declaration}"
                        cdata-section-elements="{$cdata-section-elements}"
                        doctype-public="{$doctype-public}"
                        standalone="{$standalone}">
            <xsl:copy-of select="$content"/>
          </xsl:result-document>
        </xsl:when>
        <xsl:when test="$doctype-public = '' and $doctype-system != ''">
          <xsl:result-document
                        href="{$filename}"
                        method="{$method}"
                        encoding="{$encoding}"
                        indent="{$indent}"
                        omit-xml-declaration="{$omit-xml-declaration}"
                        cdata-section-elements="{$cdata-section-elements}"
                        doctype-system="{$doctype-system}"
                        standalone="{$standalone}">
            <xsl:copy-of select="$content"/>
          </xsl:result-document>
        </xsl:when>
        <xsl:otherwise><!-- $doctype-public = '' and $doctype-system = ''"> -->
          <xsl:result-document
                        href="{$filename}"
                        method="{$method}"
                        encoding="{$encoding}"
                        indent="{$indent}"
                        omit-xml-declaration="{$omit-xml-declaration}"
                        cdata-section-elements="{$cdata-section-elements}"
                        standalone="{$standalone}">
            <xsl:copy-of select="$content"/>
          </xsl:result-document>
        </xsl:otherwise>
      </xsl:choose>
    </xsl:otherwise>
  </xsl:choose>
</xsl:template>

<xsl:param name="use.extensions" select="'0'"/>
<xsl:param name="exsl.node.set.available" select="'0'"/>
<xsl:param name="man.charmap.enabled"  select="'0'"/>
</xsl:stylesheet>
