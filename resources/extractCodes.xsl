<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:xs="http://www.w3.org/2001/XMLSchema"
    xmlns:f="http://hl7.org/fhir"
    exclude-result-prefixes="xs"
    version="2.0">
    <xsl:output method="text"/>
    <xsl:template match="/">
        <xsl:variable name='codings' select="//f:coding[starts-with(f:system/@value,'http://hl7.org/fhir/us/saner/CodeSystem/')]"/>
        <xsl:for-each select="distinct-values($codings/f:system/@value)">
            <xsl:text>CodeSystem: </xsl:text>
            <xsl:value-of select="current()"/>
            <xsl:text>&#xA;</xsl:text>
            <xsl:for-each select="$codings[f:system/@value = current()]">
                <xsl:text> * #</xsl:text>
                <xsl:value-of select="f:code/@value"/>
                <xsl:text> "</xsl:text>
                <xsl:value-of select="f:display/@value"/>
                <xsl:text>"&#xA;</xsl:text>
            </xsl:for-each>
        </xsl:for-each>
    </xsl:template>
</xsl:stylesheet>