This section describes the PULL-MX of this guide. This transaction is used by the Measure Definition Source and Measure Definition Consumer actors.

### Scope

The Query Measure Definition transaction allows a Measure Definition Consumer to periodically query about the availability of a resource from an Measure Definition Source.


This transaction enables a MeasureDefinition Consumer actor to access Measure resources from a MeasureDefinitionSource actor.
It defines the query parameters that the actors must and **should** support for search and read operations that must be supported.


### Actors Roles

![Figure 2.3-1: Query Measure Definition Use Case Diagram](transaction-3-uc.svg "Figure 2.3-1: Query Measure Definition Use Case Diagram")

**Figure 2.3-1: Query Measure Definition Use Case Diagram**

<table border='1' borderspacing='0'>
<caption><b>Table 2.3-1: Actor Roles</b></caption>
<thead><tr><th>Actor</th><th>Role</th></tr></thead>
<tbody><tr><td><a href="actors.html#measure-definition-source">Measure Definition Source</a></td>
<td>Reports on available measures in response to a query.</td>
</tr>
        <tr><td><a href="actors.html#measure-definition-consumer">Measure Definition Consumer</a></td>
<td>Queries for available measures and components.</td>
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
        
            <tr><td>NDJSON</td><td><a href='http://ndjson.org/'>Newline Delimited JSON</a></td></tr>
        
</tbody>
</table>

### Interactions
        
![Figure 2.3-2: Query Measure Definition Interactions](transaction-3-seq.svg "Figure 2.3-2: Query Measure Definition Interactions")

**Figure 2.3-2: Query Measure Definition Interactions**


#### Search Request




##### Trigger Event - A Query is Initiated by User/System

##### Message Semantics

The Measure Definition Consumer sends a query using an HTTP GET or POST transaction to the Measure Definition Source requesting information on available measures.


The following are general requirements of the interaction.

<ol>

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
Measure Definition Source Expectation</th><th>
Measure Definition Consumer Expectation</th>

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
Measure Definition Source Expectation</th><th>
Measure Definition Consumer Expectation</th>

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

<li>

<div>

The server must support the _count parameter for queries. Servers **should** use a default
value for _count if no value is provided to avoid server overloading. This guide recommends a default value of 100 based on
existing implementation experience.


</div>


<table class='grid'>

<thead><tr>

<th>Parameter</th><th>Cardinality</th><th>
Measure Definition Source Expectation</th><th>
Measure Definition Consumer Expectation</th>

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

</ol>

###### Read on Required Resources

A client must be able to read individual Measure and Library resources that are returned by a query.

The MeasureDefinitionSource <b>SHALL</b> demonstrate the FHIR read operation on  the Measure, Library, ValueSet, CodeSystem and ConceptMap resources.

###### Search by _id on Measure and Library Resources
The MeasureDefinitionConsumer <b>SHOULD</b> demonstrate the FHIR search operation on  the Measure, Library, ValueSet, CodeSystem and ConceptMap resources with the following parameters.
The MeasureDefinitionSource <b>SHALL</b> demonstrate the FHIR search operation on  the Measure, Library, ValueSet, CodeSystem and ConceptMap resources with the following parameters.

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
Measure Definition Source Expectation</th><th>
Measure Definition Consumer Expectation</th>

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
Search by _url
<div>

A client must be able to read individual resources that are returned or referenced within a measure
by the canonical url that is used to identify them. Client systems may save resource references for future use,
retrieving them later as needed.


</div>


<table class='grid'>

<thead><tr>

<th>Parameter</th><th>Cardinality</th><th>
Measure Definition Source Expectation</th><th>
Measure Definition Consumer Expectation</th>

</tr></thead>

<tbody>


<tr>

<td>

url

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

###### Search on Measure Definition Resources

Systems must be able to retrieve measures needed for automation.


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

The MeasureDefinitionConsumer <b>SHOULD</b> demonstrate the FHIR search operation on  the Measure resource with the following parameters.
The MeasureDefinitionSource <b>SHALL</b> demonstrate the FHIR search operation on  the Measure resource with the following parameters.

<ol>

<li>
Search by Text or Code
<div>

A client system **should** be able to search for Measure definitions. This requirement can be met through
support of the
<a href='http://hl7.org/fhir/search.html#text'>_text or _content search parameters</a>, or by implementation
of the <a href='SearchParameter-SearchParameter-definition-text.html'>definition-text SearchParameter</a>.


</div>


<table class='grid'>

<thead><tr>

<th>Parameter</th><th>Cardinality</th><th>
Measure Definition Source Expectation</th><th>
Measure Definition Consumer Expectation</th>

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

##### Expected Actions

###### Search for Measure

The Measure Definition Consumer performs a FHIR Search operation
to retrieve the selected measures.


#### Search Response


The Measure Definition Source returns the requested results results.


##### Trigger Event - Resources have been requested by a Measure Definition Consumer.

##### Message Semantics

The Measure Definition Source responds with requested resources.


The resources will conform to the profile for the
Public Health Measure described elsewhere in this Implementation Guide


##### Expected Actions

###### Returns Matching Measure Resources

The Measure Definition Source returns the requested resource.



### Conformance
See the following CapabilityStatement resources for conformance requirements:

        