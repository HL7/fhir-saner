<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:xs="http://www.w3.org/2001/XMLSchema" exclude-result-prefixes="xs f"
    xmlns:s="https://github.com/FHIR/sushi" xmlns="http://hl7.org/fhir"
    xmlns:f="http://hl7.org/fhir" version="2.0">
    <xsl:output indent="yes" method="text" />
    <xsl:strip-space elements="*"/>
    <xsl:variable name="geo" select="document('US-States-Geocenters.xml')"/>
    
    <xsl:variable name="measures" select="
        document('../output/Measure-Beds.xml') | document('../output/Measure-Vents.xml') | document('../output/Measure-C19Pats.xml') |
        document('../output/Measure-C19Testing.xml') | document('../output/Measure-C19CumulativeTesting.xml') |
        document('../output/Measure-CDAReporting.xml') | document('../output/Measure-FEMAReporting.xml')"/>
    
    <xsl:variable name="base" select="'http://hl7.org/fhir/us/saner/'"/>
    <xsl:template match="/">
        <xsl:apply-templates select="results/result[state/@value != 'AS'][position() &lt;= 10]"/>
    </xsl:template>
    <xsl:template match="result">
        <!-- For each result, find the matching MeasureResource and convert to MeasureReport with date and state from Measure -->
        <xsl:choose>
            <xsl:when test="position()=1"><xsl:result-document href="../fsh/MeasureReportBundle1.fsh"><xsl:call-template name="result"/></xsl:result-document></xsl:when>
            <xsl:when test="position()=2"><xsl:result-document href="../fsh/MeasureReportBundle2.fsh"><xsl:call-template name="result"/></xsl:result-document></xsl:when>
            <xsl:when test="position()=3"><xsl:result-document href="../fsh/MeasureReportBundle3.fsh"><xsl:call-template name="result"/></xsl:result-document></xsl:when>
            <xsl:when test="position()=4"><xsl:result-document href="../fsh/MeasureReportBundle4.fsh"><xsl:call-template name="result"/></xsl:result-document></xsl:when>
            <xsl:when test="position()=5"><xsl:result-document href="../fsh/MeasureReportBundle5.fsh"><xsl:call-template name="result"/></xsl:result-document></xsl:when>
            <xsl:when test="position()=6"><xsl:result-document href="../fsh/MeasureReportBundle6.fsh"><xsl:call-template name="result"/></xsl:result-document></xsl:when>
            <xsl:when test="position()=7"><xsl:result-document href="../fsh/MeasureReportBundle7.fsh"><xsl:call-template name="result"/></xsl:result-document></xsl:when>
            <xsl:when test="position()=8"><xsl:result-document href="../fsh/MeasureReportBundle8.fsh"><xsl:call-template name="result"/></xsl:result-document></xsl:when>
            <xsl:when test="position()=9"><xsl:result-document href="../fsh/MeasureReportBundle9.fsh"><xsl:call-template name="result"/></xsl:result-document></xsl:when>
            <xsl:when test="position()=10"><xsl:result-document href="../fsh/MeasureReportBundle10.fsh"><xsl:call-template name="result"/></xsl:result-document></xsl:when>
        </xsl:choose>
        <xsl:call-template name="result"/>
    </xsl:template>
    <xsl:function name="s:name">
        <xsl:param name="f"/>
        <xsl:param name="v"/>
        <xsl:text>* </xsl:text>
        <xsl:value-of select="string-join($f, '')"/>
        <xsl:text> = </xsl:text>
        <xsl:value-of select="string-join($v, '')"/>
        <xsl:text>&#xA;</xsl:text>
    </xsl:function>
    <xsl:function name="s:string">
        <xsl:param name="f"/>
        <xsl:param name="v"/>
        <xsl:text>* </xsl:text>
        <xsl:value-of select="string-join($f, '')"/>
        <xsl:text> = "</xsl:text>
        <xsl:value-of select="string-join($v, '')"/>
        <xsl:text>"&#xA;</xsl:text>
    </xsl:function>
    <xsl:function name="s:code">
        <xsl:param name="f"/>
        <xsl:param name="c"/>
        <xsl:param name="s"/>
        <xsl:text>* </xsl:text><xsl:value-of select="string-join($f, '')"/><xsl:text> = </xsl:text>
        <xsl:value-of select="$s"/>#<xsl:value-of select="string-join($c, '')"/>
        <xsl:text>&#xA;</xsl:text>
    </xsl:function>
    <xsl:function name="s:def">
        <xsl:param name="n"/>
        <xsl:param name="v"/>
        <xsl:value-of select="concat($n, ': ',string-join($v, ''),'&#xA;')"/>
    </xsl:function>
    <xsl:function name="s:instance">
        <xsl:param name="n"/>
        <xsl:param name="t"/>
        <xsl:param name="d"/>
        <xsl:text>&#xA;</xsl:text>
        <xsl:value-of select="s:def('Instance', $n)"/>
        <xsl:value-of select="s:def('InstanceOf', $t)"/>
        <xsl:value-of select="concat('Description : &quot;',string-join($d, ''),'&quot;&#xA;')"/>
    </xsl:function>
    <xsl:function name="s:hasMeasure">
        <xsl:param name="measure"/>
        <xsl:param name="state"/>
        <xsl:variable name="def"
            select='document(concat("../output/Measure-SANER", $measure, ".xml"), $state)'/>
        <xsl:if test="$def"><xsl:value-of select="string-join(($measure, ' '))"/></xsl:if>
    </xsl:function>
    <xsl:template name="result">
        <xsl:variable name="state" select="state/@value"/>
        <xsl:variable name="date" select="date/@value"/>
        <xsl:variable name="measureable" select="*[not(tokenize('date state negative pending hospitalized death total fips deathIncrease hospitalizedIncrease negativeIncrease', ' ') = local-name())]"/>
        <xsl:variable name="examples">
            <xsl:for-each select="$measureable">
                <xsl:if test="document(concat('../output/Measure-SANER', local-name(.), '.xml'), $state)">
                    <xsl:value-of select="s:hasMeasure(local-name(.), $state)"/>
                </xsl:if>
            </xsl:for-each>
            <xsl:if test="positive and (totalTestResults/@value &gt; 0)">
                <xsl:value-of select="s:hasMeasure('positivePercent', $state)"/>
            </xsl:if>
            <xsl:if test="positiveIncrease and (totalTestResultsIncrease/@value &gt; 0)">
                <xsl:value-of select="s:hasMeasure('positiveIncreasePercent', $state)"/>
            </xsl:if>
        </xsl:variable>
        <!-- Generate State and Organization Records -->
        <xsl:variable name="geoData" select="$geo/states/state[@PostalCode = $state]"/>
        <xsl:value-of
            select="s:instance(concat('states-', $state), 'Location', concat('Example Location for the State of ', $geoData/@Name))"/>
        <xsl:value-of select="s:string(('id'), ('states-',$state))"/>
        <xsl:value-of select="s:string(('identifier.system'), 'https://www.census.gov/geographies')"/>
        <xsl:value-of select="s:string(('identifier.value'), fips/@value)"/>
        <xsl:value-of select="s:string(('name'), ($geoData/@Name))"/>
        <xsl:value-of select="s:name(('position.latitude'), ($geoData/@Lat))"/>
        <xsl:value-of select="s:name(('position.longitude'), ($geoData/@Long))"/>

        <xsl:value-of
            select="s:instance(concat($state, '-DPH'), 'Organization', concat('Example Organization for the ', $geoData/@Name, ' Department of Public Health'))"/>
        <xsl:value-of select="s:string(('id'), ($state,'-DPH'))"/>
        <xsl:value-of select="s:string(('name'), ($geoData/@Name, ' Department of Public Health'))"/>
        

            <!-- Generate Instances -->
        
        <xsl:for-each
            select="*[not(tokenize('date state negative pending hospitalized death total fips deathIncrease hospitalizedIncrease negativeIncrease', ' ') = local-name())]">
            <xsl:variable name="measure" select="local-name()"/>
            <xsl:variable name="def"
                select='document(concat("../output/Measure-SANER", $measure, ".xml"), $state)'/>
            <xsl:if test="$def and @value">
                <xsl:call-template name="convertMeasureToReport">
                    <xsl:with-param name="measure" select="$measure"/>
                    <xsl:with-param name="value" select="@value"/>
                    <xsl:with-param name="data" select="../*"/>
                    <xsl:with-param name="def" select="$def"/>
                    <xsl:with-param name="state" select="$state"/>
                    <xsl:with-param name="date" select="$date"/>
                </xsl:call-template>
            </xsl:if>
            <xsl:if test="position() = last()">
                <xsl:if test="../positive and ../totalTestResults/@value &gt; 0">
                    <xsl:call-template name="convertMeasureToReport">
                        <xsl:with-param name="measure" select="'positivePercent'"/>
                        <xsl:with-param name="value" select="@value"/>
                        <xsl:with-param name="data" select="../*"/>
                        <xsl:with-param name="def"
                            select="document('../output/Measure-positivePercent.xml', $state)"/>
                        <xsl:with-param name="state" select="$state"/>
                        <xsl:with-param name="date" select="$date"/>
                    </xsl:call-template>
                </xsl:if>
                <xsl:if test="../positiveIncrease and ../totalTestResultsIncrease/@value &gt; 0">
                    <xsl:call-template name="convertMeasureToReport">
                        <xsl:with-param name="measure" select="'positiveIncreasePercent'"/>
                        <xsl:with-param name="value" select="@value"/>
                        <xsl:with-param name="data" select="../*"/>
                        <xsl:with-param name="def"
                            select="document('../output/Measure-positiveIncreasePercent.xml', $state)"/>
                        <xsl:with-param name="state" select="$state"/>
                        <xsl:with-param name="date" select="$date"/>
                    </xsl:call-template>
                </xsl:if>
            </xsl:if>
        </xsl:for-each>
        
        <!-- Generate the Bundle -->
        <xsl:value-of
            select="s:instance(concat('FEMAexample', $state), 'Bundle', concat('Example MeasureReport bundle for ', $state))"/>
        <xsl:value-of select="s:string(('id'), ('FEMAexample', $state))"/>
        <xsl:value-of select="s:string(('identifier.value'), generate-id())"/>
        <xsl:value-of select="s:string(('identifier.system'),('http://example.com'))"/>
        <xsl:value-of select="s:code(('type'), 'collection', null)"/>        <xsl:for-each select="tokenize($examples, ' ')">
            <xsl:variable name="measure" select="."/>
            <xsl:variable name="def"
                select='document(concat("../output/Measure-SANER", $measure, ".xml"), $state)'/>
            <xsl:if test="$def">
                <xsl:value-of
                    select="s:name(('entry[', position()-1, '].resource'), ('FEMAexample', $state, '-', $measure))"
                />
                <xsl:value-of
                    select="s:string(('entry[', position()-1, '].fullUrl'), ($base, 'MeasureReport/FEMAexample', $state, '-', $measure))"
                />
                
            </xsl:if>
        </xsl:for-each>
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
            <xsl:value-of
                select="s:instance(('FEMAexample', $state, '-', $measure), 'MeasureReport', ('Example MeasureReport of ', $measure, ' for ', $state, ' on ', (substring($date, 5, 2), '/', substring($date, 7, 2), '/', substring($date, 1, 4))))"/>
            <!--xsl:value-of select="s:def('Usage', '#inline')"/-->
            <xsl:value-of select="s:string(('id'), ('FEMAexample', $state, '-', $measure))"/>
            <xsl:value-of select="s:string(('identifier.system'), 'https://www.census.gov/geographies')"/>
            <xsl:value-of select="s:string(('identifier.value'), $value/../../fips/@value)"/>
             
            <xsl:value-of select="s:code(('status'), 'complete', null)"/>
            <xsl:value-of select="s:code(('type'), 'summary', null)"/>
            <xsl:value-of select="s:string(('measure'), ($def/f:Measure/f:url/@value))"/>
            <xsl:value-of
                select="s:string(('subject.extension.url'), ('http://hl7.org/fhir/StructureDefinition/geolocation'))"/>
            <xsl:value-of select="s:string(('subject.extension.extension[0].url'), ('latitude'))"/>
            <xsl:value-of
                select="s:name(('subject.extension.extension[0].valueDecimal'), ($geoData/@Lat))"/>
            <xsl:value-of select="s:string(('subject.extension.extension[1].url'), ('longitude'))"/>
            <xsl:value-of
                select="s:name(('subject.extension.extension[1].valueDecimal'), ($geoData/@Long))"/>
            <xsl:value-of select="s:string(('subject.reference'), ('Location/states-', $state))"/>
            <xsl:value-of select="s:string(('subject.display'), ('State of ', $geoData/@Name))"/>
            <xsl:value-of
                select="s:string(('date'), (substring($date, 1, 4), '-', substring($date, 5, 2), '-', substring($date, 7, 2)))"/>
            <xsl:value-of
                select="s:string(('reporter.reference'), ('Organization/', $state, '-DPH'))"/>
            <xsl:value-of
                select="s:string(('reporter.display'), ($geoData/@Name, ' Department of Public Health'))"/>
            <xsl:value-of
                select="s:string(('period.start'), (substring($date, 1, 4), '-', substring($date, 5, 2), '-', substring($date, 7, 2)))"/>
            <xsl:value-of
                select="s:string(('period.end'), (substring($date, 1, 4), '-', substring($date, 5, 2), '-', substring($date, 7, 2)))"/>
            <xsl:apply-templates select="$def/f:Measure/f:group" mode="copyMeasureToReport">
                <xsl:with-param name="measure" select="$measure"/>
                <xsl:with-param name="value" select="$value"/>
            </xsl:apply-templates>
        </xsl:if>
    </xsl:template>
    <xsl:function name="s:getName">
        <xsl:param name="s"/>
        <xsl:if test="not($s/self::f:group)">
            <xsl:value-of select="s:getName($s/..)"/>
            <xsl:text>.</xsl:text>
        </xsl:if>
        <xsl:value-of select="local-name($s)"/>
        <xsl:if test="count($s/preceding-sibling::f:*[local-name() = local-name($s)]) != 0">
            <xsl:text>[</xsl:text>
            <xsl:value-of select="count($s/preceding-sibling::f:*[local-name() = local-name($s)])"/>
            <xsl:text>]</xsl:text>
        </xsl:if>
    </xsl:function>
    <xsl:template match="@value" mode="copyMeasureToReport">
        <xsl:variable name="name" select="s:getName(..)"/>
        <xsl:choose>
            <xsl:when test="contains(local-name(../..), 'coding')">
                <xsl:value-of select="s:code(s:getName(../..), ., ../../f:system/@value)"/>
            </xsl:when>
            <xsl:when test="contains(local-name(..), 'code')">
                <xsl:value-of select="s:code($name, ., null)"/>
            </xsl:when>
            <xsl:when test="contains(local-name(..), 'text')">
                <xsl:value-of select="s:string($name, (.))"/>
            </xsl:when>
            <xsl:otherwise>
                <xsl:value-of select="s:name($name, .)"/>
            </xsl:otherwise>
        </xsl:choose>
    </xsl:template>
    <xsl:template
        match="f:group | f:code[not(../f:coding)] | f:coding | f:text | f:population | f:stratifier | f:value"
        mode="copyMeasureToReport">
        <xsl:param name="measure"/>
        <xsl:param name="value"/>
        <xsl:apply-templates select="@*" mode="copyMeasureToReport"/>
        <xsl:apply-templates select="*" mode="copyMeasureToReport">
            <xsl:with-param name="measure" select="$measure"/>
            <xsl:with-param name="value" select="$value"/>
        </xsl:apply-templates>
        <xsl:if test="../self::f:group and position() = last()">
            <xsl:choose>
                <xsl:when test="$measure = 'positivePercent'">
                    <xsl:variable name='num' select='$value/ancestor::result/positive/@value'/>
                    <xsl:variable name='denom' select='$value/ancestor::result/totalTestResults/@value'/>
                    <xsl:value-of
                        select="s:name((s:getName(..), '.measureScore.value'), round( 10000 * $num div $denom) div 100)"/>
                    <xsl:value-of select="s:string((s:getName(..), '.measureScore.unit'), ('%'))"/>
                    <xsl:value-of
                        select="s:code((s:getName(..), '.measureScore.code'), '%', 'http://unitsofmeasure.org')"/>
                </xsl:when>
                <xsl:when test="$measure = 'positiveIncreasePercent'">
                    <xsl:variable name='num' select='$value/ancestor::result/positiveIncrease/@value'/>
                    <xsl:variable name='denom' select='$value/ancestor::result/totalTestResultsIncrease/@value'/>
                    <xsl:value-of
                        select="s:name((s:getName(..), '.measureScore.value'), round( 10000 * $num div $denom) div 100) "/>
                    <xsl:value-of select="s:string((s:getName(..), '.measureScore.unit'), ('%'))"/>
                    <xsl:value-of
                        select="s:code((s:getName(..), '.measureScore.code'), '%', 'http://unitsofmeasure.org')"/>
                </xsl:when>
                <xsl:otherwise>
                    <xsl:value-of select="s:name((s:getName(..), '.measureScore.value'), ($value))"/>
                    <xsl:value-of
                        select="s:string((s:getName(..), '.measureScore.unit'), (//f:topic/f:coding/f:display/@value))"/>
                    <xsl:value-of
                        select="s:code((s:getName(..), '.measureScore.code'), //f:topic/f:coding/f:code/@value, //f:topic/f:coding/f:system/@value)"
                    />
                </xsl:otherwise>
            </xsl:choose>
        </xsl:if>
        <xsl:if test="../self::f:population/f:code">
            <xsl:choose>
                <xsl:when
                    test="$measure = 'positivePercent' and f:coding/f:code/@value = 'numerator'">
                    <xsl:value-of
                        select="s:name((s:getName(..), '.count'), $value/ancestor::result/positive/@value)"
                    /></xsl:when>
                <xsl:when
                    test="$measure = 'positivePercent' and f:coding/f:code/@value = 'denominator'">
                    <xsl:value-of
                        select="s:name((s:getName(..), '.count'), $value/ancestor::result/totalTestResults/@value)"
                    /></xsl:when>
                <xsl:when
                    test="$measure = 'positiveIncreasePercent' and f:coding/f:code/@value = 'numerator'">
                    <xsl:value-of
                        select="s:name((s:getName(..), '.count'), $value/ancestor::result/positiveIncrease/@value)"
                    /></xsl:when>
                <xsl:when
                    test="$measure = 'positiveIncreasePercent' and f:coding/f:code/@value = 'denominator'">
                    <xsl:value-of
                        select="s:name((s:getName(..), '.count'), $value/ancestor::result/totalTestResultsIncrease/@value)"
                    /></xsl:when>
                <xsl:when test="f:coding/f:code/@value = 'measure-population'">
                    <xsl:value-of select="s:name((s:getName(..), '.count'), $value)"/></xsl:when>
                <xsl:when test="f:coding/f:code/@value = 'initial-population'">
                    <xsl:value-of
                        select="s:name((s:getName(..), '.count'), $value/ancestor::result/totalTestResults/@value)"
                    /></xsl:when>
            </xsl:choose>
        </xsl:if>
    </xsl:template>
</xsl:stylesheet>
