<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:xs="http://www.w3.org/2001/XMLSchema"
    xmlns:html="http://www.w3.org/1999/xhtml"
    exclude-result-prefixes="xs"
    version="2.0">
    <!-- This stylesheet should be pointed to the toc.html page
         created by your IG build.  It will process that table of contents
         entries in that file to generate a single page html file which
         can subsequently be used to generate a pdf.
    -->
    <xsl:template match="/">
        <xsl:call-template name='readtoc'/>
    </xsl:template>
    
    <xsl:template name="readtoc">
        <html>
            <body>
                <xsl:copy-of select="//html:div[@id='segment-header']"/>
                <xsl:copy-of select="//html:p[@id='publish-box']"/>
                <xsl:apply-templates select="//html:div[@id='segment-content']//html:a" mode="process-toc"/>
                <xsl:copy-of select="//html:div[@id='segment-footer']"/>
            </body>
        </html>
    </xsl:template>
    
    <xsl:template match="html:a" mode="process-toc">
        <xsl:variable name="doc" select="document(@href)"/>
        <xsl:apply-templates select="$doc//html:div[@id='segment-content']" mode="copy"/>
    </xsl:template>
    
    <!-- do nothing with the publish box -->
    <xsl:template match="*[@id='publish-box']" mode="copy"/>
    <xsl:template match="@href">
        <xsl:choose>
            <xsl:when test="contains(.,':') or starts-with(.,'/')">
                <xsl:copy/>
            </xsl:when>
            <xsl:when test="contains(., '#')">
                <xsl:attribute name="href">
                    <xsl:value-of select='concat("#", substring-after(.,"#"))'/>
                </xsl:attribute>
            </xsl:when>
            <xsl:otherwise>
                <xsl:attribute name="href">
                    <xsl:value-of select='"#"'/>
                </xsl:attribute>
            </xsl:otherwise>
        </xsl:choose>
    </xsl:template>
    <xsl:template match="@*|node()" mode="copy">
        <xsl:copy>
            <xsl:apply-templates select="@*|node()" mode="copy"/>
        </xsl:copy>
    </xsl:template>
</xsl:stylesheet>