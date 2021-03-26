This section describes the PULL-TX of this guide. This transaction is used by the Measure Source and Measure Consumer actors.

### Scope

The Query Measure transaction allows a Measure Consumer to
periodically query about the availability of a resource from an Measure Source.


This transaction enables a MeasureConsumer actor to access Measure, MeasureReport, Location and Organization
resources from a MeasureSource actor. It defines the query parameters that the actors must and **should** support for search,
and the read operations that must be supported.


### Actors Roles

![Figure 2.1-1: Query Measure Use Case Diagram](transaction-1-uc.svg "Figure 2.1-1: Query Measure Use Case Diagram")

**Figure 2.1-1: Query Measure Use Case Diagram**

<table border='1' borderspacing='0'>
<caption><b>Table 2.1-1: Actor Roles</b></caption>
<thead><tr><th>Actor</th><th>Role</th></tr></thead>
<tbody><tr><td><a href="actors.html#measure-source">Measure Source</a></td>
<td>Reports on selected data in response to a query.</td>
</tr>
        <tr><td><a href="actors.html#measure-consumer">Measure Consumer</a></td>
<td>Collects data for reporting</td>
</tr>
        
</tbody>
</table>

### Referenced Standards

<table border='1' borderspacing='0'>
<caption><b>Table 3.71.3-1: Referenced Standards</b></caption>
<thead><tr><th>Standard</th><th>Name</th></tr></thead>
<tbody>
            <tr><td>FHIR-R4</td><td><a href='http://www.hl7.org/FHIR/R4'>HL7 FHIR Release 4.0</a></td></tr>
        
            <tr><td>RFC-7230</td><td><a href='https://ietf.org/rfc/rfc7230.html'>Hypertext Transfer Protocol - HTTP/1.1</a></td></tr>
        
</tbody>
</table>

### Interactions
        
![Figure 2.1-2: Query Measure Interactions](transaction-1-seq.svg "Figure 2.1-2: Query Measure Interactions")

**Figure 2.1-2: Query Measure Interactions**


#### Search Request




##### Trigger Event - Reporting Period Elapsed

The current reporting period has elapsed.


See the [Reporting Period](StructureDefinition-ReportingPeriod.html) extension


##### Message Semantics

The Measure Consumer sends a query
using an HTTP GET or POST transaction to the Measure Source requesting information on
available resources.


The following are general requirements of the interaction.

<ol>

<li>
Server Business Rules
<div>

A server may implement business rules that restrict
the combinations of parmeters that may be used in a search in order to ensure appropriate
performance. For example, when searching for a MeasureReport, a server may require the
presence of the measure or _id parameters, and may require other parameters to restrict
the size of the query. For example, it may require the use of a location parameter, or
a date range for the measure period, in order to limit the results that may be returned.

A client can expect that a server will return results on a query for a MeasureReport
given a measure and a date range.


</div>

</li>

<li>
Formats
<div>

All servers must support the _format parameter for any read or search and the standard values
defined by FHIR for JSON and XML output. This value must override the Accept: header when present in an exchange.
Servers must also support the Accept: header, and **shall** support any value in Accept: that can be given to _format
for consistency. Servers are also free to support other output formats (e.g. turtle as defined in the base FHIR
specifications, or other formats such as CSV which might be easier for clients to present or use). Servers
should support other commonly used expressions representing JSON or XML outputs without complaint, including
those specified in prior releases (e.g., the DSTU2 application/xml+fhir or application/json+fhir types that
have since changed in R4).


</div>


<table class='grid'>

<thead><tr>

<th>Parameter</th><th>Cardinality</th><th>
Measure Source Expectation</th><th>
Measure Consumer Expectation</th>

</tr></thead>

<tbody>


<tr>

<td>

_format=application/fhir+xml|application/fhir+json

</td>

<td>

0..1
</td>
<td>

<b>SHALL</b>

</td>
<td>

<b>SHALL</b>

</td>
</tr>


<tr>

<td>

_format=xml|json|text/xml|application/json|application/xml|application/xml+fhir|application/json+fhir

</td>

<td>

0..1
</td>
<td>

<b>SHOULD</b>

</td>
<td>

<b>SHOULD NOT</b>

</td>
</tr>


<tr>

<td>

Accept:=application/fhir+xml|application/fhir+json

</td>

<td>

0..1
</td>
<td>

<b>SHALL</b>

</td>
<td>

<b>SHALL</b>

</td>
</tr>


<tr>

<td>

Accept:=xml|json|text/xml|application/json|application/xml|application/xml+fhir|application/json+fhir

</td>

<td>

0..1
</td>
<td>

<b>SHOULD</b>

</td>
<td>

<b>SHOULD NOT</b>

</td>
</tr>

</tbody>
</table>

        
</li>

<li>

<div>

The server must support the _count parameter for queries. Servers **should** use a default
value for _count if no value is provided to avoid server overloading. This guide recommends a default value of 100 based on
existing implementation experience.


</div>


<table class='grid'>

<thead><tr>

<th>Parameter</th><th>Cardinality</th><th>
Measure Source Expectation</th><th>
Measure Consumer Expectation</th>

</tr></thead>

<tbody>


<tr>

<td>

_count

</td>

<td>

0..1
</td>
<td>

<b>SHALL</b>

</td>
<td>

<b>SHALL</b>

</td>
</tr>

</tbody>
</table>

        
</li>

<li>
Include Support
<div>

To reduce transaction overhead, a client system may wish to retrieve all the resources referenced by the
selected resource when obtaining it. This can be accomplished by using a search with an _id parameter, combined with
_include=*.


This guide does not further specify specify resource includes beyond required support for *.
Systems that support _include gernally handle _include=*, in fact, in some ways it is easier to implement
than more selective _include operations. Recursive includes can be a source of server loading issues, as
an incorrectly implemented include with recursive includes could wind up retrieving far more data than
the client expected. Thus, these are not recommended.


</div>


<table class='grid'>

<thead><tr>

<th>Parameter</th><th>Cardinality</th><th>
Measure Source Expectation</th><th>
Measure Consumer Expectation</th>

</tr></thead>

<tbody>


<tr>

<td>

_include=*

</td>

<td>

0..1
</td>
<td>

<b>SHALL</b>

</td>
<td>

<b>SHALL</b>

</td>
</tr>


<tr>

<td>

_include:iterate

</td>

<td>


</td>
<td>

<b>SHOULD NOT</b>

</td>
<td>

<b>SHOULD NOT</b>

</td>
</tr>

</tbody>
</table>

        
</li>

</ol>

###### Read on Required Resources

A client must be able to read individual resources that are returned or referenced within resources
returned by a query. Since MeasureReport references at the very least, Measure, Organization, and Location
these must all be able to be read.

The MeasureSource <b>SHALL</b> demonstrate the FHIR read operation on  the Location, MeasureReport, Measure and Organization resources.

###### Read in CSV Format

Read a given MeasureReport using the CSV Format. See [CSV Conversion](CSV_Conversion.html) for details.

The MeasureConsumer <b>MAY</b> demonstrate the FHIR $read-csv operation on  the MeasureReport resource with the following parameters.
The MeasureSource <b>SHALL</b> demonstrate the FHIR $read-csv operation on  the MeasureReport resource with the following parameters.

<ol>

<li>
Convert Instance
<div>

</div>


<table class='grid'>

<thead><tr>

<th>Parameter</th><th>Cardinality</th><th>
Measure Source Expectation</th><th>
Measure Consumer Expectation</th>

</tr></thead>

<tbody>


<tr>

<td>

map

</td>

<td>

0..*
</td>
<td>



</td>
<td>



</td>
</tr>


<tr>

<td>

return

</td>

<td>

1..1
</td>
<td>



</td>
<td>



</td>
</tr>

</tbody>
</table>

        
</li>

</ol>

###### Search in CSV Format

Search Measure Report resources using the CSV Format. See [CSV Conversion](CSV_Conversion.html) for details.

The MeasureConsumer <b>SHALL</b> demonstrate the FHIR $search-csv operation on  the MeasureReport resource with the following parameters.
The MeasureSource <b>SHALL</b> demonstrate the FHIR $search-csv operation on  the MeasureReport resource with the following parameters.

<ol>

<li>
Search Instances
<div>

</div>


<table class='grid'>

<thead><tr>

<th>Parameter</th><th>Cardinality</th><th>
Measure Source Expectation</th><th>
Measure Consumer Expectation</th>

</tr></thead>

<tbody>


<tr>

<td>

_lastUpdated

</td>

<td>

0..2
</td>
<td>

<b>SHALL</b>

</td>
<td>

<b>SHALL</b>

</td>
</tr>


<tr>

<td>

date

</td>

<td>

0..2
</td>
<td>

<b>SHALL</b>

</td>
<td>

<b>SHALL</b>

</td>
</tr>


<tr>

<td>

period

</td>

<td>

1..2
</td>
<td>

<b>SHALL</b>

</td>
<td>

<b>SHALL</b>

</td>
</tr>


<tr>

<td>

measure

</td>

<td>

1..*
</td>
<td>

<b>SHALL</b>

</td>
<td>

<b>SHALL</b>

</td>
</tr>


<tr>

<td>

measure.title

</td>

<td>

0..*
</td>
<td>

<b>SHOULD</b>

</td>
<td>

<b>SHOULD</b>

</td>
</tr>


<tr>

<td>

subject

</td>

<td>

0..*
</td>
<td>

<b>SHALL</b>

</td>
<td>

<b>SHALL</b>

</td>
</tr>


<tr>

<td>

subject:identifier

</td>

<td>

0..*
</td>
<td>

<b>SHALL</b>

</td>
<td>

<b>SHALL</b>

</td>
</tr>


<tr>

<td>

subject:Location.near

</td>

<td>

0..1
</td>
<td>

<b>SHOULD</b>

</td>
<td>

<b>SHOULD</b>

</td>
</tr>


<tr>

<td>

reporter

</td>

<td>

0..*
</td>
<td>

<b>SHALL</b>

</td>
<td>

<b>SHALL</b>

</td>
</tr>


<tr>

<td>

reporter:identifier

</td>

<td>

0..*
</td>
<td>

<b>SHALL</b>

</td>
<td>

<b>SHALL</b>

</td>
</tr>


<tr>

<td>

map

</td>

<td>

0..*
</td>
<td>



</td>
<td>



</td>
</tr>


<tr>

<td>

return

</td>

<td>

1..1
</td>
<td>



</td>
<td>



</td>
</tr>

</tbody>
</table>

        
</li>

</ol>

###### Search by _id on Required Resources
The MeasureSource <b>SHALL</b> demonstrate the FHIR search operation on  the Location, MeasureReport, Measure and Organization resources with the following parameters.

<ol>

<li>
Search by _id
<div>

A client must be able to read individual resources that are returned or referenced within resources
returned by a query. Client systems may save resource references for future use, retrieving them later as
needed. To reduce overhead, a client system may also wish to retrieve the resources referenced by the
selected resource. This can be accomplished by using a search with an _id parameter, combined with _include=*


</div>


<table class='grid'>

<thead><tr>

<th>Parameter</th><th>Cardinality</th><th>
Measure Source Expectation</th><th>
Measure Consumer Expectation</th>

</tr></thead>

<tbody>


<tr>

<td>

_id

</td>

<td>

1..*
</td>
<td>

<b>SHALL</b>

</td>
<td>

<b>SHALL</b>

</td>
</tr>

</tbody>
</table>

        
</li>

</ol>

###### Search by name or identifier on Referenced Resources
The MeasureSource <b>SHALL</b> demonstrate the FHIR search operation on  the Location and Organization resources with the following parameters.

<ol>

<li>
Search by name or identifier
<div>

A client must be able to read resources that are referenced within resources
returned by a query by name or identifier.


</div>


<table class='grid'>

<thead><tr>

<th>Parameter</th><th>Cardinality</th><th>
Measure Source Expectation</th><th>
Measure Consumer Expectation</th>

</tr></thead>

<tbody>


<tr>

<td>

name

</td>

<td>

0..*
</td>
<td>

<b>SHALL</b>

</td>
<td>

<b>SHALL</b>

</td>
</tr>


<tr>

<td>

identifier

</td>

<td>

0..*
</td>
<td>

<b>SHALL</b>

</td>
<td>

<b>SHALL</b>

</td>
</tr>

</tbody>
</table>

        
</li>

</ol>

###### Search on Definition Resources

A client system must be able to retrieve the data they need, be it about beds,
ventilators, PPE, or other measure.


Measures can be identified by codes used in the measure,
or by the measure title, its canonical URL, or by something easier for a user to recall, such
as the text of the measure or a code within it. Multiple measures may report on the same kind of thing (e.g., beds),
so retrieval by code, or by code within a value set **should** be supported. There may be
multiple measures which identify the kind of thing that the client system is interested in
learning more about. Search by code **should** be met by implementing the <a
href='SearchParameter-SearchParameter-code.html'>SearchParameter-code</a>
search parameter.

However, search by code is not supported by default by many off-the-shelf systems,
and so this is not a strict requirement for implementers. Also, chained searching
is also not always readily available, and so search by measure title is also not a hard requirement.
At the very least, a server must be able to search by measure, and a client must also to ensure
the greatest interoperability between systems with differing capabilities.

The MeasureSource <b>SHALL</b> demonstrate the FHIR search operation on  the Measure resource with the following parameters.

<ol>

<li>
Search by Text or Code
<div>

A client system **should** be able to search for Measure or other definition resources
associated with by text within the definition. This requirement can be met through support of the
<a href='http://hl7.org/fhir/search.html#text'>_text or _content search parameters</a>, or by implementation
of the <a href='SearchParameter-SearchParameter-definition-text.html'>definition-text SearchParameter</a>.


</div>


<table class='grid'>

<thead><tr>

<th>Parameter</th><th>Cardinality</th><th>
Measure Source Expectation</th><th>
Measure Consumer Expectation</th>

</tr></thead>

<tbody>


<tr>

<td>

_text

</td>

<td>

0..*
</td>
<td>

<b>SHOULD</b>

</td>
<td>

<b>SHOULD</b>

</td>
</tr>


<tr>

<td>

_content

</td>

<td>

0..*
</td>
<td>

<b>SHOULD</b>

</td>
<td>

<b>SHOULD</b>

</td>
</tr>


<tr>

<td>

definition-text

</td>

<td>

0..*
</td>
<td>

<b>SHOULD</b>

</td>
<td>

<b>SHOULD</b>

</td>
</tr>


<tr>

<td>

code

</td>

<td>

0..*
</td>
<td>

<b>SHOULD</b>

</td>
<td>

<b>SHOULD</b>

</td>
</tr>


<tr>

<td>

code:in

</td>

<td>

0..*
</td>
<td>

<b>SHOULD</b>

</td>
<td>

<b>SHOULD</b>

</td>
</tr>

</tbody>
</table>

        
</li>

</ol>

###### Read on Questionnaire and QuestionnaireResponse Resources

Questionnaire and QuestionnaireResponse are being considered because some data is being requested
via forms that better fit a QuestionnaireResponse approach (e.g., free form answers).

The MeasureSource <b>SHALL</b> demonstrate the FHIR read operation on  the Questionnaire and QuestionnaireResponse resources.

###### Search by _id

A client must be able to read individual resources returned in a query


We are still experimenting with QuestionnaireResponse, but expect to adopt it.

The MeasureSource <b>SHALL</b> demonstrate the FHIR search operation on  the Questionnaire and QuestionnaireResponse resources with the following parameters.

<ol>

<li>
Search by _id
<div>

</div>


<table class='grid'>

<thead><tr>

<th>Parameter</th><th>Cardinality</th><th>
Measure Source Expectation</th><th>
Measure Consumer Expectation</th>

</tr></thead>

<tbody>


<tr>

<td>

_id

</td>

<td>

1..*
</td>
<td>

<b>SHALL</b>

</td>
<td>

<b>SHALL</b>

</td>
</tr>

</tbody>
</table>

        
</li>

<li>
Search by Text or Code
<div>

A client system **should** be able to search for Questionnaire or other definition resources
associated with by text within the definition. This requirement can be met through support of the
<a href='http://hl7.org/fhir/search.html#text'>_text or _content search parameters</a>, or by implementation
of the <a href='SearchParameter-SearchParameter-definition-text.html'>definition-text SearchParameter</a>.


</div>


<table class='grid'>

<thead><tr>

<th>Parameter</th><th>Cardinality</th><th>
Measure Source Expectation</th><th>
Measure Consumer Expectation</th>

</tr></thead>

<tbody>


<tr>

<td>

_text

</td>

<td>

0..*
</td>
<td>

<b>SHOULD</b>

</td>
<td>

<b>SHOULD</b>

</td>
</tr>


<tr>

<td>

_content

</td>

<td>

0..*
</td>
<td>

<b>SHOULD</b>

</td>
<td>

<b>SHOULD</b>

</td>
</tr>


<tr>

<td>

definition-text

</td>

<td>

0..*
</td>
<td>

<b>SHOULD</b>

</td>
<td>

<b>SHOULD</b>

</td>
</tr>


<tr>

<td>

code

</td>

<td>

0..*
</td>
<td>

<b>SHOULD</b>

</td>
<td>

<b>SHOULD</b>

</td>
</tr>


<tr>

<td>

code:in

</td>

<td>

0..*
</td>
<td>

<b>SHOULD</b>

</td>
<td>

<b>SHOULD</b>

</td>
</tr>

</tbody>
</table>

        
</li>

</ol>

###### Search by Date and Questionnaire

A client must be able to search for responses by Questionnaire for relevant dates,
e.g., the date of _lastUpdate of a previously retrieved resource to see if it has changed (e.g., in cases
where data needs to be refreshed), the date it was reported, or the period it applies to.

In order to enable queries within a geographic region, search must allow for a client to at least enumerate locations
by a well defined identifier (e.g., an NPI, a HIFLD location identifier, or some other readily and publicly available
facility identifier.) This enables systems to use publicly available data to identify facilities within a
particular region.

Further geographic search can be enabled by chaining to location, and using the near search operation location,
which allows search to be performed based on geographic coordinates and a distance measure to specify a search
within a region. This enables systems without extensive geographic capabilities to come close in identifying a
facility within a particular distance (some implementations e.g., HAPI, use a bounding box, rather than a circle,
because it increases search efficiency).


All date searches
must allow a range to be specified, but need not allow more than one range. Approximate ranges are not required
to be supported because server support for these is not commonly available, nor implemented in readily reproducable
fashions (the definition of an approximate date can have different meanings for different servers). Simple eq, le, lt,
ge,
and gt **should** be sufficient to specify date ranges.

The MeasureConsumer <b>SHALL</b> demonstrate the FHIR search operation on  the QuestionnaireResponse resource with the following parameters.
The MeasureSource <b>SHALL</b> demonstrate the FHIR search operation on  the QuestionnaireResponse resource with the following parameters.

<ol>

<li>

<div>

</div>


<table class='grid'>

<thead><tr>

<th>Parameter</th><th>Cardinality</th><th>
Measure Source Expectation</th><th>
Measure Consumer Expectation</th>

</tr></thead>

<tbody>


<tr>

<td>

_lastUpdated

</td>

<td>

0..2
</td>
<td>

<b>SHALL</b>

</td>
<td>

<b>SHALL</b>

</td>
</tr>


<tr>

<td>

authored

</td>

<td>

0..2
</td>
<td>

<b>SHALL</b>

</td>
<td>

<b>SHALL</b>

</td>
</tr>


<tr>

<td>

questionnaire

</td>

<td>

1..*
</td>
<td>

<b>SHALL</b>

</td>
<td>

<b>SHALL</b>

</td>
</tr>


<tr>

<td>

questionnaire.title

</td>

<td>

0..*
</td>
<td>

<b>SHOULD</b>

</td>
<td>

<b>SHOULD</b>

</td>
</tr>


<tr>

<td>

subject

</td>

<td>

0..*
</td>
<td>

<b>SHALL</b>

</td>
<td>

<b>SHALL</b>

</td>
</tr>


<tr>

<td>

subject:identifier

</td>

<td>

0..*
</td>
<td>

<b>SHALL</b>

</td>
<td>

<b>SHALL</b>

</td>
</tr>


<tr>

<td>

subject:Location.near

</td>

<td>

0..1
</td>
<td>

<b>SHOULD</b>

</td>
<td>

<b>SHOULD</b>

</td>
</tr>


<tr>

<td>

author

</td>

<td>

0..*
</td>
<td>

<b>SHALL</b>

</td>
<td>

<b>SHALL</b>

</td>
</tr>


<tr>

<td>

author:identifier

</td>

<td>

0..*
</td>
<td>

<b>SHALL</b>

</td>
<td>

<b>SHALL</b>

</td>
</tr>

</tbody>
</table>

        
</li>

</ol>

###### Search on Required Resources
The MeasureConsumer <b>SHALL</b> demonstrate the FHIR search operation on  the MeasureReport resource with the following parameters.
The MeasureSource <b>SHALL</b> demonstrate the FHIR search operation on  the MeasureReport resource with the following parameters.

<ol>

<li>
Search by Date and Measure
<div>

A client must be able to search by Measure for relevant dates,
e.g., the date of _lastUpdate of a previously retrieved resource to see if it has changed (e.g., in cases
where data needs to be refreshed), the date it was reported, or the period it applies to.

In order to enable querys within a geographic region, search must allow for a client to at least enumerate locations
by a well defined identifier (e.g., an NPI, a HIFLD location identifier, or some other readily and publicly available
facility identifier.) This enables systems to use publicly available data to identify facilities within a
particular region.

Further geographic search can be enabled by chaining to location, and using the near search operation location,
which allows search to be performed based on geographic coordinates and a distance measure to specify a search
within a region. This enables systems without extensive geographic capabilities to come close in identifying a
facility within a particular distance (some implementations e.g., HAPI, use a bounding box, rather than a circle,
because it increases search efficiency).


All date searches must allow a range to be specified, but need not allow more than one range. Approximate ranges are not required
to be supported because server support for these is not commonly available, nor implemented in readily reproducable
fashions (the definition of an approximate date can have different meanings for different servers). Simple eq, le, lt,
ge, and gt **should** be sufficient to specify date ranges.


</div>


<table class='grid'>

<thead><tr>

<th>Parameter</th><th>Cardinality</th><th>
Measure Source Expectation</th><th>
Measure Consumer Expectation</th>

</tr></thead>

<tbody>


<tr>

<td>

_lastUpdated

</td>

<td>

0..2
</td>
<td>

<b>SHALL</b>

</td>
<td>

<b>SHALL</b>

</td>
</tr>


<tr>

<td>

date

</td>

<td>

0..2
</td>
<td>

<b>SHALL</b>

</td>
<td>

<b>SHALL</b>

</td>
</tr>


<tr>

<td>

period

</td>

<td>

1..2
</td>
<td>

<b>SHALL</b>

</td>
<td>

<b>SHALL</b>

</td>
</tr>


<tr>

<td>

measure

</td>

<td>

1..*
</td>
<td>

<b>SHALL</b>

</td>
<td>

<b>SHALL</b>

</td>
</tr>


<tr>

<td>

measure.title

</td>

<td>

0..*
</td>
<td>

<b>SHOULD</b>

</td>
<td>

<b>SHOULD</b>

</td>
</tr>


<tr>

<td>

subject

</td>

<td>

0..*
</td>
<td>

<b>SHALL</b>

</td>
<td>

<b>SHALL</b>

</td>
</tr>


<tr>

<td>

subject:identifier

</td>

<td>

0..*
</td>
<td>

<b>SHALL</b>

</td>
<td>

<b>SHALL</b>

</td>
</tr>


<tr>

<td>

subject:Location.near

</td>

<td>

0..1
</td>
<td>

<b>SHOULD</b>

</td>
<td>

<b>SHOULD</b>

</td>
</tr>


<tr>

<td>

reporter

</td>

<td>

0..*
</td>
<td>

<b>SHALL</b>

</td>
<td>

<b>SHALL</b>

</td>
</tr>


<tr>

<td>

reporter:identifier

</td>

<td>

0..*
</td>
<td>

<b>SHALL</b>

</td>
<td>

<b>SHALL</b>

</td>
</tr>

</tbody>
</table>

        
</li>

</ol>

##### Expected Actions

###### Search for MeasureReport

Measure Consumer requests data from a Measure Source.


The Measure Consumer performs a FHIR Search operation
to retrieve the selected resources.


#### Search Response


The Measure Source returns the requested results results.


##### Trigger Event - Resources have been requested by a Measure Consumer.

##### Message Semantics

The Measure Source responds with requested resources.


The resources will conform to the profiles for the MeasureReport, Location or Organization described elsewhere in this Implementation Guide


##### Expected Actions

###### Returns Matching Resources

The Measure Source returns the requested resource.



### Conformance
See the following CapabilityStatement resources for conformance requirements:

        