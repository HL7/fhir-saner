<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:xs="http://www.w3.org/2001/XMLSchema"
    exclude-result-prefixes="xs"
    version="2.0">
    <xsl:template match="/">
        <xsl:variable name="vs">
            <valuesets>
                <xsl:value-of select="unparsed-text('../temp/pages/_includes/list-byid-valuesets-xml.xhtml')" disable-output-escaping="yes"/>
            </valuesets>
        </xsl:variable>
        <xsl:variable name="cs">
            <valuesets>
                <xsl:value-of select="unparsed-text('../temp/pages/_includes/list-byid-codesystems-xml.xhtml')" disable-output-escaping="yes"/>
            </valuesets>
        </xsl:variable>
        <xsl:variable name="cm">
            <valuesets>
                <xsl:value-of select="unparsed-text('../temp/pages/_includes/list-byid-conceptmaps-xml.xhtml')" disable-output-escaping="yes"/>
            </valuesets>
        </xsl:variable>
        
        <xsl:call-template name="makeSection">
            <xsl:with-param name="list" select="$vs"/>
            <xsl:with-param name="title" select="'Value Set'"></xsl:with-param>
        </xsl:call-template>
        <xsl:call-template name="makeSection">
            <xsl:with-param name="list" select="$cs"/>
            <xsl:with-param name="title" select="'Code System'"></xsl:with-param>
        </xsl:call-template>
        <xsl:call-template name="makeSection">
            <xsl:with-param name="list" select="$cs"/>
            <xsl:with-param name="title" select="'Concept Map'"></xsl:with-param>
        </xsl:call-template>
    </xsl:template>
    <xsl:template name="makeSection">
        <xsl:param name="list"/>
        <xsl:param name="title"/>
        
    </xsl:template>
</xsl:stylesheet>