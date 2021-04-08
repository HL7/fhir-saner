<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:fn="fn"
    xmlns:xs="http://www.w3.org/2001/XMLSchema" version="2.0" exclude-result-prefixes="xs fn">
    <!-- This stylesheet orginates with work by Andrew J Welch 
        See http://andrewjwelch.com/code/xslt/csv/csv-to-xml_v2.html
        
        Changes by Keith W. Boone
        * Turned main template into a function
        * Enabled element naming derived from first row
        * Enabled renaming of wrapper elements
        -->
    <xsl:output indent="yes" encoding="US-ASCII"/>
    <!--xsl:template name="main" match="/">
        <xsl:call-template name="getSheetAsXML">
            <xsl:with-param name="names" select="('results', 'result')"/>
            <xsl:with-param name="attribute">value</xsl:with-param>
            <xsl:with-param name="useFieldNames" select="true()"/>
            <xsl:with-param name="pathToCSV"
                >TheCovidTrackingProjectDataTo2020-04-07.csv</xsl:with-param>
        </xsl:call-template>
    </xsl:template -->
    <xsl:function name="fn:getTokens" as="xs:string+">
        <xsl:param name="str" as="xs:string"/>
        <xsl:analyze-string select="concat(translate($str, '&#xD;', ''), ',')"
            regex='(("[^"]*")+|[^,]*),'>
            <xsl:matching-substring>
                <xsl:sequence select='replace(regex-group(1), "^""|""$|("")""", "$1")'/>
            </xsl:matching-substring>
        </xsl:analyze-string>
    </xsl:function>

    <xsl:function name="fn:getSheetAsXML">
        <xsl:param name="pathToCSV"/>
        <xsl:value-of select="fn:getSheetAsXML($pathToCSV, true(), false(), ('root', 'row'))"/>
    </xsl:function>

    <xsl:template name="fn:getSheetAsXML">
        <xsl:param name="pathToCSV"/>
        <xsl:param name="useFieldNames" select="true()"/>
        <xsl:value-of
            select="fn:getSheetAsXML($pathToCSV, $useFieldNames, false(), ('root', 'row'))"/>
    </xsl:template>

    <xsl:template name="getSheetAsXML">
        <xsl:param name="pathToCSV"/>
        <xsl:param name="useFieldNames"/>
        <xsl:param name="attribute"/>
        <xsl:param name="names"/>
        <xsl:param name="omitEmpty" select="true()"/>
        <xsl:variable name="csv" select="if (unparsed-text-available($pathToCSV)) then unparsed-text($pathToCSV) else ($pathToCSV)"/>
        <xsl:variable name="lines" select="tokenize($csv, '&#xA;')" as="xs:string+"/>
        <xsl:variable name="elemNames" select="fn:getTokens($lines[1])" as="xs:string+"/>
        <xsl:element name="{$names[1]}">
            <xsl:for-each select="$lines[position() &gt; 1]">
                <xsl:variable name="lineItems" select="fn:getTokens(.)" as="xs:string+"/>
                <xsl:if test="string-length(string-join(.,'')) != 0 or not($omitEmpty)">
                    <xsl:element name="{$names[2]}">
                        <xsl:for-each select="$elemNames">
                            <xsl:variable name="pos" select="position()"/>
                            <xsl:variable name="elemName"
                                select="
                                    if ($useFieldNames) then
                                        .
                                    else
                                        'elem'"/>
                            <xsl:if
                                test="string-length($lineItems[$pos]) != 0 or not($omitEmpty)">
                                <xsl:element name="{$elemName}">
                                    <xsl:if test="not($useFieldNames)">
                                        <xsl:attribute name="name" select="."/>
                                    </xsl:if>
                                    <xsl:choose>
                                        <xsl:when test="$attribute">
                                          <xsl:attribute name="{$attribute}"
                                          select="$lineItems[$pos]"/>
                                        </xsl:when>
                                        <xsl:otherwise>
                                          <xsl:value-of select="$lineItems[$pos]"/>
                                        </xsl:otherwise>
                                    </xsl:choose>
                                </xsl:element>
                            </xsl:if>
                        </xsl:for-each>
                    </xsl:element>
                </xsl:if>
            </xsl:for-each>
        </xsl:element>
    </xsl:template>
    <xsl:function name="fn:getSheetAsXML">
        <xsl:param name="pathToCSV"/>
        <xsl:param name="useFieldNames"/>
        <xsl:param name="attribute"/>
        <xsl:param name="names"/>
        <xsl:call-template name="getSheetAsXML">
            <xsl:with-param name="pathToCSV" select="$pathToCSV"/>
            <xsl:with-param name="useFieldNames" select="$useFieldNames"/>
            <xsl:with-param name="attribute" select="$attribute"/>
            <xsl:with-param name="names" select="$names"/>
        </xsl:call-template>
    </xsl:function>

    <xsl:function name="fn:getSheet">
        <xsl:param name="sheet"/>
        <xsl:param name="cv"/>
        <xsl:copy-of select="if ( ends-with($sheet, '.csv')) then (fn:loadCSV($sheet,$cv)) else document($sheet,$cv)"/>
    </xsl:function>
    
    <xsl:function name="fn:loadCSV">
        <xsl:param name="sheet"/>
        <xsl:param name="cv"/>
        <xsl:call-template name="getSheetAsXML">
            <xsl:with-param name="names" select="('results', 'result')"/>
            <xsl:with-param name="attribute">value</xsl:with-param>
            <xsl:with-param name="useFieldNames" select="true()"/>
            <xsl:with-param name="pathToCSV" select="$sheet" />
        </xsl:call-template>
    </xsl:function>
</xsl:stylesheet>
