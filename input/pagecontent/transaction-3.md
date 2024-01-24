This section describes the PULL-MX of this guide. This transaction is used by the Measure Definition Source and Measure Definition Consumer actors.

### Scope

The Query Measure Definition transaction allows a Measure Definition Consumer to periodically query about the availability of a resource from an Measure Definition Source.

This transaction enables a MeasureDefinition Consumer actor to access Measure resources from a MeasureDefinitionSource actor. It defines the query parameters that the actors **shall** and **should** support for search and read operations that **shall** be supported.


### Actors Roles
<figure>
{% include transaction-3-uc.svg%}
<figcaption>Figure 2.3-1: Query Measure Definition Use Case Diagram</figcaption>
</figure>

**Table 2.3-1: Actor Roles**

|Actor|Role|
| ------ | ------- |
|[Measure Definition Source](actors.html#measure-definition-source)|Reports on available measures in response to a query.|
|[Measure Consumer](actors.html#measure-definition-consumer)|Queries for available measures and components.|
{:.grid}


### Referenced Standards
Table 3.71.3-1: Referenced Standards
|Standard|Name|
|---|---|
|FHIR-R4|[HL7 FHIR Release 4.0](http://www.hl7.org/FHIR/R4)|
|RFC-7230|[Hypertext Transfer Protocol - HTTP/1.1](https://ietf.org/rfc/rfc7230.html)|
|NDJSON|[Newline Delimited JSON](http://ndjson.org/)|
{:.grid }

### Interactions

<figure>
{% include transaction-3-seq.svg%}
<figcaption>Figure 2.3-2: Query Measure Definition Interactions</figcaption>
</figure>

#### Search Request

##### Trigger Event - A Query is Initiated by User/System

##### Message Semantics

The Measure Definition Consumer sends a query using an HTTP GET or POST transaction to the Measure Definition Source requesting information on available measures.


The following are general requirements of the interaction.

1. **Formats**.  All servers **shall** support the _format parameter for any read or search and the standard values defined by FHIR for JSON and XML output. This value **shall** override the Accept: header when present in an exchange. Servers **shall** also support the Accept: header, and **shall** support any value in Accept: that can be given to _format for consistency. Servers are also free to support other output formats (e.g. turtle as defined in the base FHIR specifications, or other formats such as CSV which might be easier for clients to present or use). Servers should support other commonly used expressions representing JSON or XML outputs without complaint, including those specified in prior releases (e.g., the DSTU2 application/xml+fhir or application/json+fhir types that have since changed in R4).

|Parameter|Cardinality|Measure Definition Source Expectation|Measure Definition Consumer Expectation|
|---|---|---|---|
|_format=application/fhir+xml\|application/fhir+json |0..1 |**shall** |**shall**|
|_format=xml\|json\|text/xml\|application/json\|application/xml\|application/xml+fhir\|application/json+fhir |0..1 |**should** |**should not**|
|Accept:=application/fhir+xml\|application/fhir+json |0..1 |**shall** |**shall**|
|Accept:=xml\|json\|text/xml\|application/json\|application/xml\|application/xml+fhir\|application/json+fhir |0..1 |**should** |**should not**|
{:.grid}

2. **Include Support**.  To reduce transaction overhead, a client system may wish to retrieve all the resources referenced by the selected resource when obtaining it. This can be accomplished by using a search with an _id parameter, combined with _include=\*.
This guide does not further specify specify resource includes beyond required support for *.
Systems that support _include generally handle _include=*, in fact, in some ways it is easier to implement than more selective _include operations. Recursive includes can be a source of server loading issues, as an incorrectly implemented include with recursive includes could wind up retrieving far more data than the client expected. Thus, these are not recommended.

|Parameter|Cardinality|Measure Definition Source Expectation|Measure Definition Consumer Expectation|
|---|---|---|---|
|_include=* |0..1 |shall |shall|
|_include:iterate ||should not |should not|
{:.grid}

3. The server **shall** support the _count parameter for queries. Servers **should** use a default value for _count if no value is provided to avoid server overloading. This guide recommends a default value of 100 based on existing implementation experience.

|Parameter|Cardinality|Measure Definition Source Expectation|Measure Definition Consumer Expectation|
|---|---|---|---|
|_count|0..1|shall|shall|
{:.grid}

###### Read on Required Resources

A client **shall** be able to read individual Measure and Library resources that are returned by a query.

The server **shall** demonstrate the FHIR read operation on  the Measure, Library, ValueSet, CodeSystem and ConceptMap resources.

###### Search by _id on Measure and Library Resources

A client **should**support the FHIR search operation on  the Measure, Library, ValueSet, CodeSystem and ConceptMap resources with the following parameters.
The server  **shall**demonstrate the FHIR search operation on  the Measure, Library, ValueSet, CodeSystem and ConceptMap resources with the following parameters.


1. **Search by _id**.  
A client **shall** be able to read individual resources that are returned or referenced within resources returned by a query. Client systems may save resource references for future use, retrieving them later as needed. To reduce overhead, a client system may also wish to retrieve the resources referenced by the selected resource. This can be accomplished by using a search with an _id parameter, combined with _include=*

|Parameter|Cardinality|Measure Definition Source Expectation|Measure Definition Consumer Expectation|
|---|---|---|---|
|_id|1..*|shall|shall|
{:.grid}

2. **Search by _url**.  
A client **shall** be able to read individual resources that are returned or referenced within a measure by the canonical url that is used to identify them. Client systems may save resource references for future use, retrieving them later as needed.

|Parameter|Cardinality|Measure Definition Source Expectation|Measure Definition Consumer Expectation|
|---|---|---|---|
|url|1..*|shall|shall|
{:.grid}

###### Search on Measure Definition Resources

Systems **shall** be able to retrieve measures needed for automation.

Measures can be identified by codes used in the measure, or by the measure title, its canonical URL, or by something easier for a user to recall, such as the text of the measure or a code within it. Multiple measures may report on the same kind of thing (e.g., beds), so retrieval by code, or by code within a value set **should** be supported. There may be multiple measures which identify the kind of thing that the client system is interested in learning more about. Search by code **should** be met by implementing the [SearchParameter-code](SearchParameter-SearchParameter-code.html) search parameter.

However, search by code is not supported by default by many off-the-shelf systems, and so this is not a strict requirement for implementers. Also, chained searching is also not always readily available, and so search by measure title is also not a hard requirement. At the very least, a server **shall** be able to search by measure, and a client **shall** also to ensure the greatest interoperability between systems with differing capabilities.

A client **should** support the FHIR search operation on the Measure resource with the following parameters.
The server **shall** demonstrate the FHIR search operation on the Measure resource with the following parameters.

1. Search by Text or Code. 
A client system **should** be able to search for Measure definitions. This requirement can be met through support of the [_text or _content search parameters](http://hl7.org/fhir/search.html#text), or by implementation of the [definition-text SearchParameter](SearchParameter-SearchParameter-definition-text.html).

|Parameter|Cardinality|Measure Definition Source Expectation|Measure Definition Consumer Expectation|
|---|---|---|---|
|_text |0..* |**SHOULD** |**SHOULD**|
|_content |0..* |**SHOULD** |**SHOULD**|
|definition-text |0..* |**SHOULD** |**SHOULD**|
|code |0..* |**SHOULD** |**SHOULD**|
|code:in |0..* |**SHOULD** |**SHOULD**|
{:.grid}


##### Expected Actions

###### Search for Measure

The Measure Definition Consumer performs a FHIR Search operation to retrieve the selected measures.

#### Search Response

The Measure Definition Source returns the requested results results.

##### Trigger Event - Resources have been requested by a Measure Definition Consumer.

##### Message Semantics

The Measure Definition Source responds with requested resources.

The resources will conform to the profile for the Public Health Measure described elsewhere in this Implementation Guide


##### Expected Actions

###### Returns Matching Measure Resources

The Measure Definition Source returns the requested resource.


### Conformance
See the following CapabilityStatement resources for conformance requirements:

* [CapabilityStatement-MeasureDefinitionSource-QueryMeasureDefinition](CapabilityStatement-MeasureDefinitionSource-QueryMeasureDefinition.html) Defines the requirements for the Measure Definition Source implementing the Query Measure Definition transaction.
* [CapabilityStatement-MeasureDefinitionConsumer-QueryMeasureDefinition](CapabilityStatement-MeasureDefinitionConsumer-QueryMeasureDefinition.html) Defines the requirements for the Measure Definition Consumer implementing the Query Measure Definition transaction.