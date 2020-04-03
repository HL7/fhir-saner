<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:xs="http://www.w3.org/2001/XMLSchema" exclude-result-prefixes="xs f"
    xmlns="http://hl7.org/fhir" xmlns:f="http://hl7.org/fhir" version="2.0">
    <xsl:output indent="yes"/>
    <xsl:variable name="geo" select="document('US-States-Geocenters.xml')"/>
    <xsl:template match="/">
        <xsl:apply-templates select="results/result[position() &lt;= 10]"/>
    </xsl:template>
    <xsl:template match="result">
        <!-- For each result, find the matching MeasureResource and convert to MeasureReport with date and state from Measure -->
        <xsl:choose>
            <xsl:when test="position() = 1"><xsl:result-document href="Bundle-FEMA-example1.xml"><xsl:call-template name="result"/></xsl:result-document></xsl:when>
            <xsl:when test="position() = 2"><xsl:result-document href="Bundle-FEMA-example2.xml"><xsl:call-template name="result"/></xsl:result-document></xsl:when>
            <xsl:when test="position() = 3"><xsl:result-document href="Bundle-FEMA-example3.xml"><xsl:call-template name="result"/></xsl:result-document></xsl:when>
            <xsl:when test="position() = 4"><xsl:result-document href="Bundle-FEMA-example4.xml"><xsl:call-template name="result"/></xsl:result-document></xsl:when>
            <xsl:when test="position() = 5"><xsl:result-document href="Bundle-FEMA-example5.xml"><xsl:call-template name="result"/></xsl:result-document></xsl:when>
            <xsl:when test="position() = 6"><xsl:result-document href="Bundle-FEMA-example6.xml"><xsl:call-template name="result"/></xsl:result-document></xsl:when>
            <xsl:when test="position() = 7"><xsl:result-document href="Bundle-FEMA-example7.xml"><xsl:call-template name="result"/></xsl:result-document></xsl:when>
            <xsl:when test="position() = 8"><xsl:result-document href="Bundle-FEMA-example8.xml"><xsl:call-template name="result"/></xsl:result-document></xsl:when>
            <xsl:when test="position() = 9"><xsl:result-document href="Bundle-FEMA-example9.xml"><xsl:call-template name="result"/></xsl:result-document></xsl:when>
            <xsl:when test="position() = 10"><xsl:result-document href="Bundle-FEMA-example10.xml"><xsl:call-template name="result"/></xsl:result-document></xsl:when>
        </xsl:choose>
    </xsl:template>
    <xsl:template name="result">
        <xsl:variable name="state" select="state/@value"/>
        <xsl:variable name="date" select="date/@value"/>
        <Bundle>
            <id value="Bundle-FEMA-example{position()}"/>
            <identifier>
                <system value="http://example.com"/>
                <!-- TODO: This works for now, need to find a UUID generator see https://gist.github.com/azinneera/778f69ae6b0049b5edcd69da70072405 -->
                <value value="{generate-id()}"/>
            </identifier>
            <type value="collection"/>
            <xsl:for-each select="*[not(tokenize('date state negative pending hospitalized death total fips deathIncrease hospitalizedIncrease negativeIncrease',' ') = local-name())]">
                <xsl:variable name="measure" select="local-name()"/>
                <xsl:variable name="def"
                    select='document(concat("../output/Measure-SANER", $measure, ".xml"), $state)'/>
                <xsl:call-template name="convertMeasureToReport">
                    <xsl:with-param name="measure" select="$measure"/>
                    <xsl:with-param name="value" select="@value"/>
                    <xsl:with-param name="data" select="../*"/>
                    <xsl:with-param name="def" select="$def"/>
                    <xsl:with-param name="state" select="$state"/>
                    <xsl:with-param name="date" select="$date"/>
                </xsl:call-template>
                <xsl:if test='position()=last()'>
                    <xsl:call-template name="convertMeasureToReport">
                        <xsl:with-param name="measure" select="'positivePercent'"/>
                        <xsl:with-param name="value" select="@value"/>
                        <xsl:with-param name="data" select="../*"/>
                        <xsl:with-param name="def" select="$def"/>
                        <xsl:with-param name="state" select="$state"/>
                        <xsl:with-param name="date" select="$date"/>
                    </xsl:call-template>
                    <xsl:call-template name="convertMeasureToReport">
                        <xsl:with-param name="measure" select="'positivePercentIncrease'"/>
                        <xsl:with-param name="value" select="@value"/>
                        <xsl:with-param name="data" select="../*"/>
                        <xsl:with-param name="def" select="$def"/>
                        <xsl:with-param name="state" select="$state"/>
                        <xsl:with-param name="date" select="$date"/>
                    </xsl:call-template>
                </xsl:if>
            </xsl:for-each>
        </Bundle>
    </xsl:template>
    <xsl:template name="convertMeasureToReport">
        <xsl:param name="measure"/>
        <xsl:param name="data"/>
        <xsl:param name="date"/>
        <xsl:param name="state"/>
        <xsl:param name="value"/>
        <xsl:param name="def"/>

        <xsl:variable name="geoData" select="$geo/states/state[@PostalCode = $state]"/>

        <!-- If there is a definition for this measure -->
        <xsl:if test="$def and $value">
            <entry>
                <fullUrl value="http://example.com/fhir/MeasureReport/{generate-id($value)}"/>
                <resource>
                    <MeasureReport>
                        <id value="{generate-id($value)}"/>
                        <identifier>
                            <system value="http://example.com/{$state}/"/>
                            <value value="{generate-id(.)}"/>
                        </identifier>
                        <status value="complete"/>
                        <type value="summary"/>
                        <measure value="{$def/f:Measure/f:url/@value}"/>
                        <subject>
                            <!-- Make these useful for mapping -->
                            <extension url="http://hl7.org/fhir/StructureDefinition/geolocation">
                                <extension url="latitude">
                                    <valueDecimal value="{$geoData/@Lat}"/>
                                </extension>
                                <extension url="longitude">
                                    <valueDecimal value="{$geoData/@Long}"/>
                                </extension>
                            </extension>
                            <reference value="Location/states-{$state}"/>
                            <display value="State of {$geoData/@Name}"/>
                        </subject>
                        <date
                            value="{substring($date,1,4)}-{substring($date,5,2)}-{substring($date,7,2)}"/>
                        <reporter>
                            <reference value="Organization/{$state}-DPH"/>
                            <display value="{$geoData/@Name} Department of Public Health"/>
                        </reporter>
                        <period>
                            <start
                                value="{substring($date,1,4)}-{substring($date,5,2)}-{substring($date,7,2)}"/>
                            <end
                                value="{substring($date,1,4)}-{substring($date,5,2)}-{substring($date,7,2)}"
                            />
                        </period>
                        <xsl:apply-templates select="$def/f:Measure/f:group"
                            mode="copyMeasureToReport">
                            <xsl:with-param name="measure" select="$measure"/>
                            <xsl:with-param name="value" select="$value"/>
                        </xsl:apply-templates>
                    </MeasureReport>
                </resource>
            </entry>
        </xsl:if>
    </xsl:template>
    <xsl:template
        match="f:group | f:code | f:coding | f:system | f:text | f:population | f:stratifier | f:value"
        mode="copyMeasureToReport">
        <xsl:param name="measure"/>
        <xsl:param name="value"/>
        <xsl:copy>
            <xsl:copy-of select="@*"/>
            <xsl:apply-templates select="*" mode="copyMeasureToReport">
                <xsl:with-param name="measure" select="$measure"/>
                <xsl:with-param name="value" select="$value"/>
            </xsl:apply-templates>
        </xsl:copy>
        <xsl:if test="../self::f:group/f:population and position() = last()">
            <measureScore>
                <xsl:choose>
                    <xsl:when test="$measure = 'positivePercent'">
                        <value
                            value="{$value/ancestor::result/positive/@value / $value/ancestor::result/totalTestResults/@value}"/>
                        <unit value="%"/>
                        <system value="{//f:topic/f:coding/f:system/@value}"/>
                        <code value="%"/>
                    </xsl:when>
                    <xsl:when test="$measure = 'positivePercentIncrease'">
                        <value
                            value="{$value/ancestor::result/positiveIncrease/@value / $value/ancestor::result/totalTestResultsIncrease/@value}"/>
                        <unit value="%"/>
                        <system value="{//f:topic/f:coding/f:system/@value}"/>
                        <code value="%"/>
                    </xsl:when>
                    <xsl:otherwise>
                        <value value="{$value}"/>
                        <unit value="//f:topic/f:coding/f:display/@value"/>
                        <system value="{//f:topic/f:coding/f:system/@value}"/>
                        <code value="{//f:topic/f:coding/f:code/@value}"/>
                    </xsl:otherwise>
                </xsl:choose>
            </measureScore>
        </xsl:if>
        <xsl:if test="../self::f:population/f:code">
            <xsl:choose>
                <xsl:when
                    test="$measure = 'positivePercent' and f:coding/f:code/@value = 'numerator'">
                    <count value="{$value/ancestor::result/positive/@value}"/>
                </xsl:when>
                <xsl:when
                    test="$measure = 'positivePercent' and f:coding/f:code/@value = 'denominator'">
                    <count value="{$value/ancestor::result/totalTestResults/@value}"/>
                </xsl:when>
                <xsl:when
                    test="$measure = 'positiveIncreasePercent' and f:coding/f:code/@value = 'numerator'">
                    <count value="{$value/ancestor::result/positiveIncrease/@value}"/>
                </xsl:when>
                <xsl:when
                    test="$measure = 'positiveIncreasePercent' and f:coding/f:code/@value = 'denominator'">
                    <count value="{$value/ancestor::result/totalTestIncrease/@value}"/>
                </xsl:when>
                <xsl:when test="f:coding/f:code/@value = 'measure-population'">
                    <count value="{$value}"/>
                </xsl:when>
                <xsl:when test="f:coding/f:code/@value = 'initial-population'">
                    <count value="{$value/ancestor::result/totalTestResults/@value}"/>
                </xsl:when>
                <xsl:otherwise> </xsl:otherwise>
            </xsl:choose>
        </xsl:if>
    </xsl:template>
</xsl:stylesheet>
