<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:xs="http://www.w3.org/2001/XMLSchema"
    xmlns:ig="http://ainq.com/ig-definition"
    xmlns:html="http://www.w3.org/1999/xhtml"
    exclude-result-prefixes="xs"
    version="2.0">

    <xsl:include href="utility.xslt"/>
    <xsl:param name="org" select="/ig:profile/ig:domain/ig:org"/>
    <!-- Preserve spaces in markdown content elements -->
    <xsl:preserve-space elements="ig:description ig:overview"/>

    <!-- This template is overridden in generate.xsl.  It appears
        here to test JUST the generation of the index file.
    -->
    <xsl:template match="/">
        <xsl:call-template name="actorsandtransactions"/>
    </xsl:template>

    <xsl:template name="actorsandtransactions" match="/" mode="actorsandtransactions">
        <xsl:param name="dest" select="'pagecontent/3_actors_and_transactions.md'"/>
        <xsl:result-document href="pagecontent/3_actors_and_transactions.md" method="text">
This section defines the actors and transactions in this implementation guide.

Figure <xsl:value-of select="/ig:profile/@chapter"/>.1-1 below shows the actors directly
involved in the <xsl:value-of select="/ig:profile/@id"/>
Profile and the relevant transactions between them.&#xA;

<xsl:call-template name="actor-transaction-diagram"/>
            <xsl:call-template name="figureLink">
                <xsl:with-param name="name"><xsl:value-of select="/ig:profile/@id"/> Actor Diagram</xsl:with-param>
                <xsl:with-param name="file">ActorsAndTransactions.svg</xsl:with-param>
                <xsl:with-param name="number">3-1</xsl:with-param>
            </xsl:call-template>

            <xsl:call-template name="actor-transaction-table"/>

            <xsl:call-template name="actor-descriptions"/>

            <xsl:call-template name="actor-options"/>

            <xsl:call-template name="transaction-descriptions"/>
        </xsl:result-document>
        <xsl:apply-templates select="/ig:profile/ig:transaction" mode="transaction"/>
    </xsl:template>

    <xsl:template match="ig:transaction" mode="transaction">
        <!-- This is an ugly hack to work around the limits in Saxon HE implementation of result-document() -->
        <xsl:choose>
            <xsl:when test="position()=1">
                <xsl:result-document href="pagecontent/transaction-1.md" method="text">
                    <xsl:call-template name="transaction2"/>
                </xsl:result-document>
                <xsl:result-document href="images-source/transaction-1-uc.txt" method="text">
                    <xsl:call-template name="transaction-uc"/>
                </xsl:result-document>
                <xsl:result-document href="images-source/transaction-1-seq.txt" method="text">
                    <xsl:call-template name="transaction-seq"/>
                </xsl:result-document>
            </xsl:when>
            <xsl:when test="position()=2">
                <xsl:result-document href="pagecontent/transaction-2.md" method="text">
                    <xsl:call-template name="transaction2"/>
                </xsl:result-document>
                <xsl:result-document href="images-source/transaction-2-uc.txt" method="text">
                    <xsl:call-template name="transaction-uc"/>
                </xsl:result-document>
                <xsl:result-document href="images-source/transaction-2-seq.txt" method="text">
                    <xsl:call-template name="transaction-seq"/>
                </xsl:result-document>
            </xsl:when>
            <xsl:when test="position()=3">
                <xsl:result-document href="pagecontent/transaction-3.md" method="text">
                    <xsl:call-template name="transaction2"/>
                </xsl:result-document>
                <xsl:result-document href="images-source/transaction-3-uc.txt" method="text">
                    <xsl:call-template name="transaction-uc"/>
                </xsl:result-document>
                <xsl:result-document href="images-source/transaction-3-seq.txt" method="text">
                    <xsl:call-template name="transaction-seq"/>
                </xsl:result-document>
            </xsl:when>
            <xsl:when test="position()=4">
                <xsl:result-document href="pagecontent/transaction-4.md" method="text">
                    <xsl:call-template name="transaction2"/>
                </xsl:result-document>
                <xsl:result-document href="images-source/transaction-4-uc.txt" method="text">
                    <xsl:call-template name="transaction-uc"/>
                </xsl:result-document>
                <xsl:result-document href="images-source/transaction-4-seq.txt" method="text">
                    <xsl:call-template name="transaction-seq"/>
                </xsl:result-document>
            </xsl:when>
            <xsl:when test="position()=5">
                <xsl:result-document href="pagecontent/transaction-5.md" method="text">
                    <xsl:call-template name="transaction2"/>
                </xsl:result-document>
                <xsl:result-document href="images-source/transaction-5-uc.txt" method="text">
                    <xsl:call-template name="transaction-uc"/>
                </xsl:result-document>
                <xsl:result-document href="images-source/transaction-5-seq.txt" method="text">
                    <xsl:call-template name="transaction-seq"/>
                </xsl:result-document>
            </xsl:when>
        </xsl:choose>
    </xsl:template>

    <xsl:template name="transaction-uc">
        <xsl:text>@startuml&#xA;</xsl:text>
        <xsl:variable name='actorids' select="distinct-values(.//ig:message/(@from|@to))"/>
        <xsl:for-each select="//ig:actor[@id = $actorids]">
            <xsl:text>&#xA;agent "</xsl:text>
            <xsl:value-of select="ig:name"/>
            <xsl:text>" as </xsl:text>
            <xsl:value-of select="@id"/>
            <xsl:text>&#xA;</xsl:text>
        </xsl:for-each>
        <xsl:text>usecase (</xsl:text>
        <xsl:value-of select="ig:name"/>
        <xsl:text>) as (</xsl:text>
        <xsl:value-of select="@id"/>
        <xsl:text>)&#xA;</xsl:text>
        <xsl:variable name='name' select="@id"/>
        <xsl:for-each select="//ig:actor[@id = $actorids]">
            <xsl:value-of select="@id"/>
            <xsl:text> --> (</xsl:text>
            <xsl:value-of select="$name"/>
            <xsl:text>)&#xA;</xsl:text>
        </xsl:for-each>
        <xsl:text>@enduml&#xA;</xsl:text>
    </xsl:template>

    <xsl:template name='transaction2'>
        <xsl:variable name="tx" select="."/>
        <xsl:variable name='section' select="concat('2.',position())"/>
        <xsl:text>This section describes the </xsl:text>
        <xsl:value-of select='@id'/>
        <xsl:text> of this guide. This transaction is used by the </xsl:text>
        <xsl:variable name='actorids' select="distinct-values(.//ig:message/(@from|@to))"/>
        <xsl:for-each select="//ig:actor[@id = $actorids]">
            <xsl:choose>
                <xsl:when test="position() = 1"></xsl:when>
                <xsl:when test="position() = last()"><xsl:text> and </xsl:text></xsl:when>
                <xsl:otherwise><xsl:text>, </xsl:text></xsl:otherwise>
            </xsl:choose>
            <xsl:value-of select="ig:name"/>
        </xsl:for-each>
        <xsl:text> actors.&#xA;</xsl:text>

        <xsl:text>&#xA;### Scope&#xA;</xsl:text>
        <xsl:apply-templates select="ig:description|ig:overview"/>

        <xsl:text>&#xA;### Actors Roles&#xA;</xsl:text>
        <xsl:call-template name="figureLink">
            <xsl:with-param name="name"><xsl:value-of select="ig:name"/> Use Case Diagram</xsl:with-param>
            <xsl:with-param name="file">transaction-<xsl:value-of select="position()"/>-uc.svg</xsl:with-param>
            <xsl:with-param name="number">2.<xsl:value-of select="position()"/>-1</xsl:with-param>
        </xsl:call-template>

        <xsl:text>&lt;table border='1' borderspacing='0'>
&lt;caption>&lt;b>Table </xsl:text>
        <xsl:value-of select="$section"/>
        <xsl:text>-1: Actor Roles&lt;/b>&lt;/caption>
&lt;thead>&lt;tr>&lt;th>Actor&lt;/th>&lt;th>Role&lt;/th>&lt;/tr>&lt;/thead>
&lt;tbody></xsl:text>
        <xsl:for-each select="//ig:actor[@id = $actorids]">
            <xsl:text>&lt;tr>&lt;td>&lt;a href="actors_and_transactions.html#</xsl:text>
            <xsl:value-of select="translate(lower-case(ig:name),' ', '-')"/>"><xsl:value-of select="ig:name"/>
            <xsl:text>&lt;/a>&lt;/td>
&lt;td></xsl:text><xsl:value-of select='(ig:supports-tx|ig:requires-tx)[@transaction=$tx/@id]/ig:role'/>&lt;/td>
&lt;/tr>
        </xsl:for-each>
        <xsl:text>&#xA;&lt;/tbody>
&lt;/table>&#xA;</xsl:text>
    <xsl:call-template name="referenced-standards">
        <xsl:with-param name="tx" select="$tx"/>
    </xsl:call-template>
    <xsl:text>
### Interactions
        </xsl:text>
        <xsl:call-template name="figureLink">
            <xsl:with-param name="name"><xsl:value-of select="ig:name"/> Interactions</xsl:with-param>
            <xsl:with-param name="file">transaction-<xsl:value-of select="position()"/>-seq.svg</xsl:with-param>
            <xsl:with-param name="number">2.<xsl:value-of select="position()"/>-2</xsl:with-param>
        </xsl:call-template>


        <xsl:for-each select=".//(ig:message|ig:result)">
            <xsl:text>&#xA;#### </xsl:text><xsl:value-of select="ig:name"/><xsl:text>&#xA;</xsl:text>
            <xsl:text>&#xA;</xsl:text>
            <xsl:apply-templates select="ig:description|ig:overview"/>

            <xsl:text>&#xA;##### Trigger Event - </xsl:text><xsl:value-of select="ig:trigger/ig:name"/><xsl:text>&#xA;</xsl:text>
            <xsl:apply-templates select="xsl:trigger/ig:description|xsl:trigger/ig:overview"/>

            <xsl:text>&#xA;##### Message Semantics&#xA;</xsl:text>
            <xsl:apply-templates select="xsl:trigger/ig:description|xsl:trigger/ig:overview"/>

            <xsl:text>&#xA;##### Expected Actions&#xA;</xsl:text>
            <xsl:for-each select="ig:action">
                <xsl:text>&#xA;###### </xsl:text><xsl:value-of select="ig:name"/><xsl:text>&#xA;</xsl:text>
                <xsl:apply-templates select="ig:description|ig:overview"/>
            </xsl:for-each>

        </xsl:for-each>
    </xsl:template>
    <xsl:template name="referenced-standards">
        <xsl:param name="tx"/>
        <xsl:text>&#xA;### Referenced Standards&#xA;
&lt;table border='1' borderspacing='0'>
&lt;caption>&lt;b>Table 3.71.3-1: Referenced Standards&lt;/b>&lt;/caption>
&lt;thead>&lt;tr>&lt;th>Standard&lt;/th>&lt;th>Name&lt;/th>&lt;/tr>&lt;/thead>
&lt;tbody></xsl:text>
        <xsl:for-each select="/ig:profile/ig:standard[@id=tokenize($tx/@standards)]">
            &lt;tr>&lt;td><xsl:value-of select="@id"/>&lt;/td>&lt;td>&lt;a href='<xsl:value-of select="ig:url"/>'><xsl:value-of select="ig:name"/>&lt;/a>&lt;/td>&lt;/tr>
        </xsl:for-each><xsl:text>
&lt;/tbody>
&lt;/table>&#xA;</xsl:text>
    </xsl:template>

    <xsl:template name="transaction-seq">
        <xsl:variable name='actorids' select="distinct-values(.//ig:message/(@from|@to))"/>
        <xsl:variable name="actors" select="//ig:actor[@id = $actorids]"/>
        <xsl:text>@startuml&#xA;</xsl:text>
        <xsl:text>hide footbox&#xA;</xsl:text>
        <xsl:for-each select="distinct-values(.//ig:message/(@from|@to))">
            <xsl:text>participant "</xsl:text>
            <xsl:value-of select="$actors[@id = current()]/ig:name"/>
            <xsl:text>" as </xsl:text><xsl:value-of select="."/>
            <xsl:text>&#xA;</xsl:text>
        </xsl:for-each>
        <xsl:apply-templates select="ig:message|ig:result" mode="interaction-diagram"/>
        <xsl:text>@enduml&#xA;</xsl:text>
    </xsl:template>

    <xsl:template match="ig:message" mode="interaction-diagram">
        <xsl:variable name="number"
            select="count(preceding::ig:message|preceding::ig:result|ancestor-or-self::ig:message|self::ig:result)
            - count(ancestor::ig:transaction/preceding-sibling::ig:transaction//ig:message|ancestor::ig:transaction/preceding-sibling::ig:transaction//ig:result)"/>

        <xsl:if test="not(../self::ig:message)">activate "<xsl:value-of select="@from"/>"&#xA;</xsl:if>
        <xsl:if test="not(string(@from) = string(@to))">
            <xsl:text>activate "</xsl:text><xsl:value-of select="@to"/><xsl:text>"&#xA;</xsl:text>
        </xsl:if>

        <xsl:text>"</xsl:text>
        <xsl:value-of select="@from"/>
        <xsl:text>" -> "</xsl:text>
        <xsl:value-of select="@to"/>
        <xsl:text>" : </xsl:text>
        <xsl:value-of select="concat($number,'. ',ig:name)"/>
        <xsl:text>&#xA;</xsl:text>

        <xsl:apply-templates select="ig:messsage|ig:result" mode="interaction-diagram"/>
        <xsl:if test="not(ig:result and not(string(@from) = string(@to)))">return&#xA;</xsl:if>
        <xsl:if test="not(../self::ig:message)">deactivate "<xsl:value-of select="@from"/>"&#xA;</xsl:if>
        <xsl:if test="not(string(@from) = string(@to))">
            <xsl:text>deactivate "</xsl:text><xsl:value-of select="@to"/><xsl:text>"&#xA;</xsl:text>
        </xsl:if>
    </xsl:template>

    <xsl:template match="ig:result" mode="interaction-diagram">
        <xsl:variable name="number"
            select="count(preceding::ig:message|preceding::ig:result|ancestor-or-self::ig:message|self::ig:result)
            - count(ancestor::ig:transaction/preceding-sibling::ig:transaction//ig:message|ancestor::ig:transaction/preceding-sibling::ig:transaction//ig:result)"/>
        <xsl:text>"</xsl:text>
        <xsl:value-of select="../@to"/>
        <xsl:text>" --> "</xsl:text>
        <xsl:value-of select="../@from"/>
        <xsl:text>" : </xsl:text>
        <xsl:value-of select="concat($number,'. ',ig:name)"/>
        <xsl:text>&#xA;</xsl:text>
    </xsl:template>
    <xsl:template match="text()" mode="interaction-diagram"/>

    <xsl:template name="actor-transaction-diagram">
        <xsl:result-document href="images-source/ActorsAndTransactions.txt" method="text">
            <xsl:text>@startuml
skinparam FolderBorderColor white
skinparam FolderFontColor white
skinparam Shadowing false
folder Actors {&#xA;</xsl:text>
            <xsl:variable name="actors" select="/ig:profile/ig:actor"/>
            <!-- For each actor generate a line of the form:
                agent "Actor-Name" as Actor-id
                -->
            <xsl:for-each select="$actors[not(@groups)]">
                <xsl:text>agent "</xsl:text>
                <xsl:value-of select="ig:name"/>
                <xsl:text>" as </xsl:text>
                <xsl:value-of select="@id"/>
                <xsl:text>&#xA;</xsl:text>
            </xsl:for-each>
            <!-- For each pair of actors, create the necessary communications link between them -->
            <xsl:for-each select="$actors/@id">
                <xsl:variable name="A" select="."/>
                <xsl:for-each select=".|../following-sibling::ig:actor/@id">
                    <xsl:variable name="B" select="."/>
                    <!-- a link is necessary if there is a message from a to b or b to a -->
                    <xsl:if test="//ig:message[(@from = $A and @to = $B) or (@from = $B and @to = $A)]">
                        <xsl:value-of select="$A"/>
                        <xsl:text> -- </xsl:text>
                        <xsl:value-of select="$B"/>
                        <xsl:text> : "</xsl:text>
                        <!-- for each tranaction -->
                        <xsl:variable name="txnames">
                            <xsl:for-each select="/ig:profile/ig:transaction">
                                <xsl:variable name="arrow">
                                    <xsl:choose>
                                        <!-- if there a message (or return) from A to B and also from B to A -->
                                        <xsl:when test="(.//ig:message[@from = $A and @to = $B] and .//ig:message[@from = $B and @to = $A])">
                                            <xsl:value-of select="$udarr"/>
                                        </xsl:when>
                                        <!-- if there a message or return from only A to B -->
                                        <xsl:when test=".//ig:message[@from = $A and @to = $B]">
                                            <xsl:value-of select="$darr"/>
                                        </xsl:when>
                                        <!-- if there a message or return from only B to A -->
                                        <xsl:when test=".//ig:message[@from = $B and @to = $A]">
                                            <xsl:value-of select="$uarr"/>
                                        </xsl:when>
                                    </xsl:choose>
                                </xsl:variable>
                                <!-- If no arrow is selected, the transaction doesn't apply -->
                                <xsl:if test="$arrow != ''">
                                    <xsl:value-of select="ig:name"/>
                                    <xsl:text> [</xsl:text>
                                    <xsl:value-of select="@id"/>
                                    <xsl:text>] </xsl:text>
                                    <xsl:value-of select="$arrow"/>
                                    <xsl:text>\n</xsl:text>
                                </xsl:if>
                            </xsl:for-each>
                        </xsl:variable>
                        <!-- Strip the terminal newline (the last two characters) -->
                        <xsl:value-of select="substring($txnames,1,string-length($txnames)-2)"/>
                        <xsl:text>"&#xA;</xsl:text>
                    </xsl:if>
                </xsl:for-each>
            </xsl:for-each>
            <xsl:text>}&#xA;</xsl:text>

            <xsl:for-each select="$actors[@groups]">
                <xsl:text>rectangle "</xsl:text>
                <xsl:value-of select="ig:name"/>
                <xsl:text>" as </xsl:text>
                <xsl:value-of select="@id"/>
                <xsl:text> { &#xA;</xsl:text>
                <xsl:for-each select='$actors[@id=tokenize(current()/@groups)]'>
	                <xsl:text>agent "</xsl:text>
	                <xsl:value-of select="ig:name"/>
	                <xsl:text>" as </xsl:text>
	                <xsl:value-of select="@id"/><xsl:value-of select='generate-id(.)'/>
	                <xsl:text>&#xA;</xsl:text>
                </xsl:for-each>
                <xsl:text>}&#xA;</xsl:text>
            </xsl:for-each>
            <xsl:text>@enduml&#xA;</xsl:text>
        </xsl:result-document>
    </xsl:template>

    <xsl:template name="actor-transaction-table">
        <xsl:text>Table 3-1 lists the transactions for each actor directly involved in the </xsl:text>
        <xsl:value-of select="/ig:profile/@id"/>
        <xsl:text> Implementation Guide. To claim compliance with this guide, an actor shall
support all required transactions (labeled "R") and may support the
optional transactions (labeled "O").&#xA;</xsl:text>

&lt;table border="1" borderspacing="0" style='border: 1px solid black; border-collapse: collapse'>
&lt;caption>
&lt;b>
<xsl:text>Table 3-1: </xsl:text>
<xsl:value-of select="/ig:profile/@id"/>
<xsl:text> Implementation Guide - Actors and Transactions</xsl:text>
&lt;/b>
&lt;/caption>
&lt;thead>
&lt;tr class="odd" style='background: gray;'>
&lt;th>Actors&lt;/th>
&lt;th>Transactions&lt;/th>
&lt;th>Optionality&lt;/th>
&lt;/tr>
&lt;/thead>
&lt;tbody>
                <xsl:for-each select="/ig:profile/ig:actor">
                    <xsl:variable name="actor" select="."/>
                    <xsl:variable name="all-tx" select="ig:requires-tx|ig:supports-tx|(//ig:actor[@id=tokenize(current()/@groups,' ')])/(ig:requires-tx|ig:supports-tx)"/>
                    <xsl:for-each select="$all-tx">
                        <xsl:variable name="tx" select="."/>
                        <xsl:variable name="trans" select="/ig:profile/ig:transaction[@id = $tx/@transaction]"/>
&lt;tr>
                        <xsl:if test="position()=1">
&lt;td rowspan="<xsl:value-of select="count($all-tx)"/>">
&lt;a href="#<xsl:value-of select="translate(lower-case($actor/ig:name),' ', '-')"/>"><xsl:value-of select="$actor/ig:name"/>&lt;/a>
&lt;/td>
                        </xsl:if>
&lt;td>
&lt;a href='transaction-<xsl:value-of select="count($trans/preceding::ig:transaction)+1"/>.html'>
                        <xsl:value-of select="$trans/ig:name"/>
                        <xsl:text> [</xsl:text>
                        <xsl:value-of select="$trans/@id"/>
                        <xsl:text>]&lt;/a></xsl:text>
                        <xsl:if test='$actor/@groups'>
                            <xsl:text>&lt;br/>&lt;i>As </xsl:text><xsl:value-of select="../ig:name"/><xsl:text>&lt;/i></xsl:text>
                        </xsl:if>
&lt;/td>
&lt;td align='center'>
                        <xsl:choose>
                            <xsl:when test="$tx/local-name() = 'requires-tx'">R</xsl:when>
                            <xsl:when test="$tx/local-name() = 'supports-tx' and $tx/@required-with-options">
                                <xsl:text>C</xsl:text>
<!-- generate superscript for when notes -->
                                &lt;sup> <xsl:value-of select='count(preceding::*/@required-with-options) + 1'/>&lt;/sup>
                            </xsl:when>
                            <xsl:otherwise>O</xsl:otherwise>
                        </xsl:choose>
&lt;/td>
&lt;/tr>
                    </xsl:for-each>
                </xsl:for-each>
&lt;/tbody>
&lt;/table>
        <!-- report condition notes -->
        <xsl:for-each select=".//@required-with-options">
            <xsl:if test='position() = 1'>
                <xsl:text>&#xA;**Notes:**&#xA;</xsl:text>
            </xsl:if>
            <xsl:text>&#xA;</xsl:text>
            <xsl:value-of select="position()"/>
            <xsl:text>. This transaction is required when the </xsl:text>
            <xsl:value-of select="ancestor::ig:actor/ig:name"/>
            <xsl:text> implements the </xsl:text>
            <xsl:variable name="options" select="//ig:option[@id=tokenize(current(),' ')]"/>
            <xsl:for-each select="$options">
                <xsl:choose>
                    <xsl:when test="position() = 1"/>
                    <xsl:when test='position() != last()'>
                        <xsl:text>, </xsl:text>
                    </xsl:when>
                    <xsl:otherwise><!--position()=last()-->
                        <xsl:text>, or </xsl:text>
                    </xsl:otherwise>
                </xsl:choose>
                <xsl:text>[</xsl:text><xsl:value-of select="ig:name"/><xsl:text>](</xsl:text>
                <xsl:value-of select="concat('#',lower-case(translate(ig:name,' ','-')))"/>
                <xsl:text>)</xsl:text>
            </xsl:for-each>
            <xsl:text>.&#xA;</xsl:text>
        </xsl:for-each>
    </xsl:template>

    <xsl:template name='actor-descriptions'>
        <xsl:text>&#xA;### Actors&#xA;</xsl:text>
        <xsl:text>The actors in this profile are described in more detail in the sections below.&#xA;</xsl:text>
        <xsl:for-each select="/ig:profile/ig:actor">
            <xsl:call-template name="generate-gherkin"/>
            <xsl:text>&#xA;#### </xsl:text>
            <xsl:value-of select="ig:name"/>
            <xsl:text>&#xA;</xsl:text>
            <xsl:apply-templates select="ig:description|ig:overview"/>
            <xsl:if test="ig:requires">
                <xsl:text>&#xA;##### </xsl:text>
                <xsl:value-of select="ig:name"/>
                <xsl:text> Requirements&#xA;</xsl:text>
                <xsl:apply-templates select="ig:requires"/>
            </xsl:if>
            <xsl:text>&#xA;</xsl:text>
        </xsl:for-each>
    </xsl:template>

    <xsl:template name='actor-options'>
        <xsl:text>&#xA;### Actor Options&#xA;</xsl:text>
Options that may be selected for each actor in this guide, are listed in Table 3.2-1 below. Dependencies
between options when applicable are specified in notes.

&lt;table border="1" style="border: 1px solid black; border-collapse: collapse">
    &lt;caption>&lt;b>Table 3.2-1 Actor Options&lt;/b>&lt;/caption>
    &lt;thead>
        &lt;tr style="background: gray;" class="odd">
            &lt;td>Actor&lt;/td>
            &lt;td>Option Name&lt;/td>
        &lt;/tr>
    &lt;/thead>
    &lt;tbody>
        <xsl:for-each select='//ig:actor'>
            <xsl:variable name='actor' select='.'/>
            <xsl:for-each select="//ig:option[ig:participant/@actor = current()/@id]">
                &lt;tr>
                <xsl:if test="position() = 1">
                    &lt;td rowspan='<xsl:value-of select='last()'/>'><xsl:value-of select="$actor/ig:name"/>&lt;/td>
                </xsl:if>
                &lt;td>&lt;a href="#<xsl:value-of select="lower-case(translate(ig:name,' ','-'))"/>"><xsl:value-of select="ig:name"/>&lt;/a>&lt;/td>
                &lt;/tr>
            </xsl:for-each>
            <xsl:if test="count(//ig:option/ig:participant[@actor = $actor/@id])=0">
                &lt;tr>&lt;td><xsl:value-of select="ig:name"/>&lt;/td>
                &lt;td>&lt;i>No Options Defined&lt;/i>&lt;/td>&lt;/tr>
            </xsl:if>
        </xsl:for-each>
    &lt;/tbody>
&lt;/table>

        <xsl:text>&#xA;The options in this guide are describe in more detail the sections below.&#xA;</xsl:text>
        <xsl:for-each select="//ig:option">
            <xsl:text>&#xA;#### </xsl:text>
            <xsl:value-of select="ig:name"/>
            <xsl:text>&#xA;</xsl:text>
            <xsl:apply-templates select="ig:description|ig:overview"/>
            <xsl:text>This option applies to the actors as described below.&#xA;</xsl:text>
            <xsl:for-each select="ig:participant">
                <xsl:variable name="actor" select="//ig:actor[@id=current()/@actor]"/>
                <xsl:text>&#xA;##### </xsl:text>
                <xsl:value-of select="$actor/ig:name"/>
                <xsl:text>&#xA;</xsl:text>
                <xsl:apply-templates select="ig:description|ig:overview"/>
            </xsl:for-each>
        </xsl:for-each>
    </xsl:template>

    <xsl:template name='transaction-descriptions'>
        <xsl:text>&#xA;### Transaction Descriptions&#xA;</xsl:text>
        <xsl:text>The transactions in this profile are summarized in the sections below.&#xA;</xsl:text>
        <xsl:for-each select="/ig:profile/ig:transaction">
            <xsl:text>&#xA;#### </xsl:text>
            <xsl:value-of select="ig:name"/>
            <xsl:text>&#xA;</xsl:text>
            <xsl:apply-templates select="ig:description|ig:overview"/>
            <xsl:text>&#xA;For more details see the detailed [transaction description](transaction-</xsl:text><xsl:value-of select="position()"/><xsl:text>.html)&#xA;</xsl:text>
        </xsl:for-each>
    </xsl:template>

    <xsl:template match="ig:requires">
        <xsl:text>1. </xsl:text><xsl:value-of select="ig:description"/>
        <xsl:if test="ig:overview">
            <xsl:text>&lt;br/></xsl:text><xsl:value-of select="ig:overview"/>
            <xsl:text>&#xA;</xsl:text>
        </xsl:if>
        <xsl:apply-templates select="ig:test"/>
    </xsl:template>

    <xsl:template match="ig:test">
        <!--  This is what we want to generate.  It's tricky b/c of XML whitespace processing,
            AND markdown whitespace handling.

   * **Scenario: Test name 1**<br/>
   _Test description_<br/>
   An overview can also contain markdown<br/>
   **GIVEN** A = B<br/>
   **WHEN ** B = C<br/>
   **THEN **  A = C<br/>
   **AND  **  C = A<br/>
            -->
        <xsl:text>&#xA;   * **Scenario: </xsl:text>
        <xsl:value-of select="ig:name"/>
        <xsl:text>**&lt;br/>&#xA;</xsl:text>
        <xsl:if test="ig:description">
            <xsl:text>   _</xsl:text><xsl:value-of select="ig:description"/>
            <xsl:text>_&lt;br/>&#xA;</xsl:text>
        </xsl:if>
        <xsl:if test="ig:overview">
            <xsl:text>   </xsl:text><xsl:value-of select="ig:overview"/>
            <xsl:text>&lt;br/>&#xA;</xsl:text>
        </xsl:if>

        <xsl:apply-templates select="ig:given"/>
        <xsl:apply-templates select="ig:when"/>
        <xsl:apply-templates select="ig:then|ig:and|ig:but"/>
    </xsl:template>

    <xsl:template match="ig:given|ig:when|ig:then|ig:and|ig:but">
        <xsl:value-of select="
            concat('   **',
            upper-case(local-name()),
            substring('**      ', 1, 8 - string-length(local-name())),
            text(),'&lt;br/>&#xA;')"/>
    </xsl:template>

    <xsl:template match="ig:given|ig:when|ig:then|ig:and|ig:but" mode="gherkin">
        <xsl:value-of select="concat(upper-case(local-name()),
            substring('      ', 1, 6 - string-length(local-name())),
            text(),'&#xA;')"/>
    </xsl:template>

    <xsl:template name="generate-gherkin">
        <xsl:choose>
            <xsl:when test="position()=1">
                <xsl:result-document href="feature/actor-1.feature" method="text">
                    <xsl:call-template name="generate-gherkin2"/>
                </xsl:result-document>
            </xsl:when>
            <xsl:when test="position()=2">
                <xsl:result-document href="feature/actor-2.feature" method="text">
                    <xsl:call-template name="generate-gherkin2"/>
                </xsl:result-document>
            </xsl:when>
            <xsl:when test="position()=3">
                <xsl:result-document href="feature/actor-3.feature" method="text">
                    <xsl:call-template name="generate-gherkin2"/>
                </xsl:result-document>
            </xsl:when>
            <xsl:when test="position()=4">
                <xsl:result-document href="feature/actor-4.feature" method="text">
                    <xsl:call-template name="generate-gherkin2"/>
                </xsl:result-document>
            </xsl:when>
            <xsl:when test="position()=5">
                <xsl:result-document href="feature/actor-5.feature" method="text">
                    <xsl:call-template name="generate-gherkin2"/>
                </xsl:result-document>
            </xsl:when>
            <xsl:when test="position()=6">
                <xsl:result-document href="feature/actor-6.feature" method="text">
                    <xsl:call-template name="generate-gherkin2"/>
                </xsl:result-document>
            </xsl:when>
            <xsl:when test="position()=7">
                <xsl:result-document href="feature/actor-7.feature" method="text">
                    <xsl:call-template name="generate-gherkin2"/>
                </xsl:result-document>
            </xsl:when>
            <xsl:when test="position()=8">
                <xsl:result-document href="feature/actor-8.feature" method="text">
                    <xsl:call-template name="generate-gherkin2"/>
                </xsl:result-document>
            </xsl:when>
            <xsl:when test="position()=9">
                <xsl:result-document href="feature/actor-9.feature" method="text">
                    <xsl:call-template name="generate-gherkin2"/>
                </xsl:result-document>
            </xsl:when>
        </xsl:choose>
    </xsl:template>

    <xsl:template name="generate-gherkin2">
        <xsl:text># </xsl:text>
        <xsl:value-of select="/ig:profile/@id"/>
        <xsl:text> </xsl:text>
        <xsl:value-of select="ig:name"/>
        <xsl:text> Actor Requirements&#xA;</xsl:text>
        <xsl:text>@</xsl:text>
        <xsl:value-of select="/ig:profile/@id"/>
        <xsl:text> @</xsl:text>
        <xsl:value-of select="/ig:profile/@id"/>-<xsl:value-of select="@id"/>
        <xsl:text>&#xA;&#xA;</xsl:text>

        <xsl:for-each select="ig:requires">
            <xsl:text>Feature: </xsl:text>
            <xsl:value-of select="concat(../@id,'-',position(),' ', ig:description)"/>
            <xsl:apply-templates select="ig:overview"/>
            <xsl:for-each select="ig:test">
                <xsl:text>&#xA;Scenario: </xsl:text>
                <xsl:value-of select="ig:name"/>
                <xsl:text>&#xA;</xsl:text>
                <xsl:apply-templates select="ig:description|ig:overview"/>

                <xsl:apply-templates select="ig:given" mode="gherkin"/>
                <xsl:apply-templates select="ig:when" mode="gherkin"/>
                <xsl:apply-templates select="ig:then|ig:and|ig:but" mode="gherkin"/>
                <xsl:text>&#xA;&#xA;</xsl:text>
            </xsl:for-each>
        </xsl:for-each>
    </xsl:template>


    <xsl:template name="not-done">
        ## ACDC Required Actor Groupings
        {: style="--heading-prefix: '15.3'"}
        {if Profile.grouping[required=true] exists }
        <table border='1' style="border: 1px solid black; border-collapse: collapse">
            <caption><b>Table {Profile.chapter}.3-1: {Profile.id} - Required Actor Groupings</b></caption>
            <thead>
                <tr class="odd" style="background: gray">
                    <th>ACDC Actor</th>
                    <th>Actor to be grouped with</th>
                </tr>
            </thead>
            <tbody>
                {for-each Profile.actors A where A.grouping.required == true }
                {for-each A.grouping G}
                {case position() == 1}
                <tr class="odd">
                    {if position() == 1}
                    <td rowspan="{A.grouping.count}">{A.name}</td>
                    {end-if}
                    <td>[{G.profile} {G.profile-actor}](crossprofileconsiderations.html#{A.id}-{filename(G.profile-actor)})</td>
                </tr>
                {end-for-each}
                {end-for-each}
            </tbody>
        </table>
        {else}
        None
        {endif}
    </xsl:template>
</xsl:stylesheet>