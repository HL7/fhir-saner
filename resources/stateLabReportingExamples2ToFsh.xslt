<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:xs="http://www.w3.org/2001/XMLSchema" exclude-result-prefixes="xs f"
    xmlns:s="https://github.com/FHIR/sushi" xmlns="http://hl7.org/fhir"
    xmlns:f="http://hl7.org/fhir" version="2.0">
    <xsl:output indent="yes" method="text" />
    <xsl:strip-space elements="*"/>
    <xsl:variable name="geo" select="document('US-States-Geocenters.xml')"/>
    <xsl:variable name="base" select="'http://hl7.org/fhir/us/saner/'"/>
    <xsl:param name='count' select='2000'/>
    <xsl:template match="/">
        <xsl:variable name="res" select="/"/>
        <xsl:for-each select="distinct-values(results/result[state/@value != 'AS'][position() &lt; $count]/state/@value)">
            <xsl:variable name="state" select="."/>
            <!-- Generate State and Organization Records -->
            <xsl:variable name="geoData" select="$geo/states/state[@PostalCode = $state]"/>
            <xsl:message><xsl:value-of select="$geoData/@Name"/></xsl:message>
            <xsl:value-of
                select="s:instance(concat('states-', $state), 'Location', concat('Example Location for the State of ', $geoData/@Name))"/>
            <xsl:value-of select="s:string(('id'), ('states-',$state))"/>
            <xsl:value-of select="s:string(('identifier.system'), 'https://www.census.gov/geographies')"/>
            <xsl:value-of select="s:string(('identifier.value'), $res/results/result[state/@value=.]/fips/@value)"/>
            <xsl:value-of select="s:string(('name'), ($geoData/@Name))"/>
            <xsl:value-of select="s:name(('position.latitude'), ($geoData/@Lat))"/>
            <xsl:value-of select="s:name(('position.longitude'), ($geoData/@Long))"/>
            
            <xsl:value-of
                select="s:instance(concat($state, '-DPH'), 'Organization', concat('Example Organization for the ', $geoData/@Name, ' Department of Public Health'))"/>
            <xsl:value-of select="s:string(('id'), ($state,'-DPH'))"/>
            <xsl:value-of select="s:string(('name'), ($geoData/@Name, ' Department of Public Health'))"/>        
        </xsl:for-each>

        <xsl:apply-templates select="results/result[state/@value != 'AS'][position() &lt; $count]"/>
        
    </xsl:template>
    <xsl:template match="result">
        <!-- For each result, find the matching MeasureResource and convert to MeasureReport with date and state from Measure -->
        <!-- xsl:choose>
            <xsl:when test="position()=1"><xsl:result-document href="MeasureReportBundle1.fsh"><xsl:call-template name="result"/></xsl:result-document></xsl:when>
            <xsl:when test="position()=2"><xsl:result-document href="MeasureReportBundle2.fsh"><xsl:call-template name="result"/></xsl:result-document></xsl:when>
            <xsl:when test="position()=3"><xsl:result-document href="MeasureReportBundle3.fsh"><xsl:call-template name="result"/></xsl:result-document></xsl:when>
            <xsl:when test="position()=4"><xsl:result-document href="MeasureReportBundle4.fsh"><xsl:call-template name="result"/></xsl:result-document></xsl:when>
            <xsl:when test="position()=5"><xsl:result-document href="MeasureReportBundle5.fsh"><xsl:call-template name="result"/></xsl:result-document></xsl:when>
            <xsl:when test="position()=6"><xsl:result-document href="MeasureReportBundle6.fsh"><xsl:call-template name="result"/></xsl:result-document></xsl:when>
            <xsl:when test="position()=7"><xsl:result-document href="MeasureReportBundle7.fsh"><xsl:call-template name="result"/></xsl:result-document></xsl:when>
            <xsl:when test="position()=8"><xsl:result-document href="MeasureReportBundle8.fsh"><xsl:call-template name="result"/></xsl:result-document></xsl:when>
            <xsl:when test="position()=9"><xsl:result-document href="MeasureReportBundle9.fsh"><xsl:call-template name="result"/></xsl:result-document></xsl:when>
            <xsl:when test="position()=10"><xsl:result-document href="MeasureReportBundle10.fsh"><xsl:call-template name="result"/></xsl:result-document></xsl:when>
        </xsl:choose -->
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

    <xsl:template name="result">
        <xsl:variable name="state" select="state/@value"/>
        <xsl:variable name="date" select="date/@value"/>
        <xsl:variable name="measureable" select="*[not(tokenize('date state negative pending hospitalized death total fips deathIncrease hospitalizedIncrease negativeIncrease', ' ') = local-name())]"/>

        <!-- Generate Instance -->
        <xsl:variable name="def" select='document("Measure-FEMAReporting.xml")'/>
        <xsl:call-template name="createMeasureReportHeader">
            <xsl:with-param name="measure" select="'FEMAReporting'"/>
            <xsl:with-param name="state" select="$state"/>
            <xsl:with-param name="date" select="$date"/>
            <xsl:with-param name="def" select="$def"/>
            <xsl:with-param name="fips" select="fips/@value"/>
        </xsl:call-template>
        
        <!-- Take the data row, and compute some values into it -->
        <xsl:variable name="data">
            <result xmlns="">
                <xsl:copy-of select="*"/>
                <xsl:variable name='num1' select='positive/@value'/>
                <xsl:variable name='denom1' select='totalTestResults/@value'/>
                <xsl:if test="$num1 and $denom1 &gt; 0">
                    <positivePercent xmlns="" value='{round( 10000 * $num1 div $denom1) div 100}' unit='%'/>
                </xsl:if>
                <xsl:variable name='num2' select='positiveIncrease/@value'/>
                <xsl:variable name='denom2' select='totalTestResultsIncrease/@value'/>
                <xsl:if test="$num2 and $denom2 &gt; 0">
                    <positiveIncreasePercent xmlns="" value='{round( 10000 * $num2 div $denom2) div 100}' unit='%'/>
                </xsl:if>
            </result>
        </xsl:variable>
        <xsl:apply-templates select="$def/f:Measure/f:group" mode="copyMeasureToReport">
            <xsl:with-param name="values" select="$data"/>
        </xsl:apply-templates>
    </xsl:template>
    
    <xsl:template name="createMeasureReportHeader">
        <xsl:param name="measure"/>
        <xsl:param name="state"/>
        <xsl:param name="date"/>
        <xsl:param name="def"/>
        <xsl:param name="fips"/>

        <xsl:variable name="geoData" select="$geo/states/state[@PostalCode = $state]"/>
        
        <xsl:value-of
            select="s:instance(('FEMAexample', $state, '-', $measure), 'MeasureReport', ('Example MeasureReport of ', $measure, ' for ', $state, ' on ', (substring($date, 5, 2), '/', substring($date, 7, 2), '/', substring($date, 1, 4))))"/>
        <!--xsl:value-of select="s:def('Usage', '#inline')"/-->
        <xsl:value-of select="s:string(('id'), ('FEMAReporting-', $state, '-', $date))"/>
        <xsl:value-of select="s:string(('identifier.system'), 'https://www.census.gov/geographies')"/>
        <xsl:value-of select="s:string(('identifier.value'), $fips)"/>
        
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
    </xsl:template>
    
    <xsl:function name="s:getName">
        <xsl:param name="s"/>
        <xsl:if test="lower-case(local-name($s)) = local-name($s)">
            <xsl:variable name="p"><xsl:value-of select="s:getName($s/..)"/></xsl:variable>
            <xsl:if test="string-length($p) != 0">
                <xsl:value-of select="$p"/>
                <xsl:text>.</xsl:text>
            </xsl:if>
            <xsl:value-of select="local-name($s)"/>
            <xsl:if test="count($s/preceding-sibling::f:*[local-name() = local-name($s)]) != 0">
                <xsl:text>[</xsl:text>
                <xsl:value-of select="count($s/preceding-sibling::f:*[local-name() = local-name($s)])"/>
                <xsl:text>]</xsl:text>
            </xsl:if>
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
        <xsl:param name="values"/>
        <xsl:apply-templates select="@*" mode="copyMeasureToReport"/>
        <xsl:apply-templates select="*" mode="copyMeasureToReport">
            <xsl:with-param name="values" select="$values"/>
        </xsl:apply-templates>
        
        <!-- If this is a group, we may need to output a measure score
            
        -->
        <xsl:variable name="score" select="f:code/f:coding[f:system/@value='http://hl7.org/fhir/us/saner/CodeSystem/PopulationMeasures']/f:code/@value"/>
        <xsl:variable name="v" select="$values/result/*[local-name()=string($score)]"/>
        <!-- If this is a group, and the group reports a score and the score has a value -->
        <xsl:variable name="n" select="s:getName(.)"/>
        <xsl:choose>
            <xsl:when test="self::f:group and $score">
                <xsl:if test="$v">
                    <xsl:value-of select="s:name(($n, '.measureScore.value'), $v/@value)"/>
                    <xsl:if test='$v/@unit'>
                        <xsl:value-of select="s:string(($n, '.measureScore.unit'), ($v/@unit))"/>
                        <xsl:value-of
                            select="s:code(($n, '.measureScore.code'), $v/@unit, 'http://unitsofmeasure.org')"/>
                    </xsl:if>
                </xsl:if>
                <xsl:if test="not($v)">
                    <xsl:value-of select="s:string(($n, '.measureScore.value.extension.url'), 'http://hl7.org/fhir/StructureDefinition/data-absent-reason')"/>
                    <xsl:value-of select="s:name(($n, '.measureScore.value.extension.valueCodeableConcept'), 'http://terminology.hl7.org/CodeSystem/data-absent-reason#unknown')"/>
                    <xsl:value-of select="s:string(($n, '.measureScore.value.extension.valueCodeableConcept.coding.code.display'), 'Unknown')"/>
                </xsl:if>
            </xsl:when>
            <xsl:when test="self::f:population and $score">
                <xsl:if test="$v">
                    <xsl:value-of select="s:name(($n, '.count'), $v/@value)"/>
                </xsl:if>
                <xsl:if test="not($v)">
                    <xsl:value-of select="s:string(($n, '.count.extension.url'), 'http://hl7.org/fhir/StructureDefinition/data-absent-reason')"/>
                    <xsl:value-of select="s:name(($n, '.count.extension.valueCodeableConcept'), 'http://terminology.hl7.org/CodeSystem/data-absent-reason#unknown')"/>
                    <xsl:value-of select="s:string(($n, '.count.extension.valueCodeableConcept.coding.code.display'), 'Unknown')"/>
                </xsl:if>
            </xsl:when>
        </xsl:choose>
    </xsl:template>
</xsl:stylesheet>
