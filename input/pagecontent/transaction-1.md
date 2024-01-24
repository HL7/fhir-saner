_This section describes the PULL-TX of this guide. This transaction is used by the Measure Source and Measure Consumer actors.

### Scope

The Query Measure transaction allows a Measure Consumer to
periodically query about the availability of a resource from an Measure Source.


This transaction enables a MeasureConsumer actor to access Measure, MeasureReport, Location and Organization
resources from a MeasureSource actor. It defines the query parameters that the actors **shall** and **should** support for search,
and the read operations that **shall** be supported.


### Actors Roles
<figure>
{% include transaction-1-uc.svg%}
</figure>


**Table 2.1-1: Actor Roles**

|Actor|Role|
| ------ | ------- |
|[Measure Source](actors.html#measure-source)|Reports on selected data in response to a query.|
|[Measure Consumer](actors.html#measure-consumer)|Collects data for reporting|
{:.grid}

### Referenced Standards


**Table 3.71.3-1: Referenced Standards**
|Standard|Name|
|---|---|
|FHIR-R4|[HL7 FHIR Release 4.0](http://www.hl7.org/FHIR/R4)|
|RFC-7230|[Hypertext Transfer Protocol - HTTP/1.1](https://ietf.org/rfc/rfc7230.html)|
|NDJSON|[Newline Delimited JSON](http://ndjson.org/)|
{:.grid }

### Interactions

<figure>{% include transaction-1-seq.svg%}
<figcaption>**Figure 2.1-2: Query Measure Interactions**</figcaption>
</figure>


#### Search Request

##### Trigger Event - Reporting Period Elapsed

The current reporting period has elapsed.


See the [Reporting Period](StructureDefinition-ReportingPeriod.html) extension


##### Message Semantics

The Measure Consumer sends a query
using an HTTP GET or POST transaction to the Measure Source requesting information on
available resources.


The following are general requirements of the interaction.


1. **Server Business Rules**.
A server may implement business rules that restrict the combinations of parmeters that may be used in a search in order to ensure appropriate performance. For example, when searching for a MeasureReport, a server may require the presence of the measure or _id parameters, and may require other parameters to restrict the size of the query. For example, it may require the use of a location parameter, or a date range for the measure period, in order to limit the results that may be returned. 
A client can expect that a server will return results on a query for a MeasureReport given a measure and a date range.


2. **Formats**. 
All servers **shall** support the _format parameter for any read or search and the standard values defined by FHIR for JSON and XML output. This value **shall** override the Accept: header when present in an exchange. Servers **shall** also support the Accept: header, and **shall** support any value in Accept: that can be given to _format for consistency. Servers are also free to support other output formats (e.g. turtle as defined in the base FHIR specifications, or other formats such as CSV which might be easier for clients to present or use). Servers should support other commonly used expressions representing JSON or XML outputs without complaint, including those specified in prior releases (e.g., the DSTU2 application/xml+fhir or application/json+fhir types that have since changed in R4).



|Parameter|Cardinality|Measure Source Expectation|Measure Consumer Expectation|
|---|---|---|---|
|_format=application/fhir+xml\|application/fhir+json|0..1|**shall**|**shall**|
|_format=xml\|json\|text/xml\|application/json\|application/xml\|application/xml+fhir\|application/json+fhir|0..1|**should**|**should not**|
|Accept:=application/fhir+xml\|application/fhir+json|0..1|**shall**|**shall**|
|Accept:=xml,json\|text/xml\|application/json\|application/xml\|application/xml+fhir\|application/json+fhir|0..1|**should**|**should not**|
{:.grid }
3. The server **shall** support the _count parameter for queries. Servers **should** use a default value for _count if no value is provided to avoid server overloading. This guide recommends a default value of 100 based on existing implementation experience.

|Parameter|Cardinality|Measure Source Expectation|Measure Consumer Expectation|
|---|---|---|---|
|_count|0..1|**shall**|**shall**
{:.grid }
4. **Include Support**. 
To reduce transaction overhead, a client system may wish to retrieve all the resources referenced by the selected resource when obtaining it. This can be accomplished by using a search with an _id parameter, combined with
_include=\*.
This guide does not further specify specify resource includes beyond required support for \*.
Systems that support _include generally handle _include=*, in fact, in some ways it is easier to implement than more selective _include operations. Recursive includes can be a source of server loading issues, as an incorrectly implemented include with recursive includes could wind up retrieving far more data than the client expected. Thus, these are not recommended.



| Parameter| Cardinality | Measure Source Expectation | Measure Consumer Expectation |
|----------------------|-------------|-----------------------------|-------------------------------|
| _include=* | 0..1 | **shall** | **shall** |
| _include:iterate |  | **should not**| **should not**|
{:.grid }

###### Read on Required Resources

A client **shall** be able to read individual resources that are returned or referenced within resources returned by a query. Since MeasureReport references at the very least, Measure, Organization, and Location these **shall** all be able to be read.

The server **shall** support the FHIR read operation on the Location, MeasureReport, Measure and Organization resources.

###### Read in CSV Format

Read a given MeasureReport using the CSV Format. See [CSV Conversion](CSV_Conversion.html) for details.

The client **may** support the FHIR \$read-csv operation on the MeasureReport resource with the following parameters.
The server **shall** demonstrate the FHIR \$read-csv operation on the MeasureReport resource with the following parameters.

1. **Convert Instance**

| Parameter | Cardinality | Measure Source Expectation | Measure Consumer Expectation |
|---|---|---|---|
| map | 0..* |  |  |
| return | 1..1 |  |  |
{: .grid}

###### Search in CSV Format

Search Measure Report resources using the CSV Format. See [CSV Conversion](CSV_Conversion.html) for details.

The client and server **shall** support the FHIR $search-csv operation on  the MeasureReport resource with the following parameters.

1. **Search Instances**

|Parameter|Cardinality|Measure Source Expectation|Measure Consumer Expectation|
|----|----|----|----|
|_lastUpdated |0..2 |**SHALL** |**SHALL**|
|date |0..2 |**SHALL** |**SHALL**|
|period |1..2 |**SHALL** |**SHALL**|
|measure |1..* |**SHALL** |**SHALL**|
|measure.title |0..* |**SHOULD** |**SHOULD**|
|subject |0..* |**SHALL** |**SHALL**|
|subject:identifier |0..* |**SHALL** |**SHALL**|
|subject:Location.near |0..1 |**SHOULD** |**SHOULD**|
|reporter |0..* |**SHALL** |**SHALL**|
|reporter:identifier |0..* |**SHALL** |**SHALL**|
|map |0..* |||
|return |1..1 |||
{:.grid }


###### Search by _id on Required Resources
The server **shall** support the FHIR search operation on  the Location, MeasureReport, Measure and Organization resources with the following parameters.

1. **Search by _id**. 
A client **shall** be able to read individual resources that are returned or referenced within resources returned by a query. Client systems may save resource references for future use, retrieving them later as needed. To reduce overhead, a client system may also wish to retrieve the resources referenced by the selected resource. This can be accomplished by using a search with an _id parameter, combined with _include=\*


|Parameter|Cardinality|Measure Source Expectation|
Measure Consumer Expectation|
|---|---|---|---|
|_id|1..*|**shall**|**shall**
###### Search by name or identifier on Referenced Resources
The MeasureSource **shall**demonstrate the FHIR search operation on  the Location and Organization resources with the following parameters.

1. **Search by name or identifier**.  
A client **shall** be able to read resources that are referenced within resources returned by a query by name or identifier.

|Parameter|Cardinality|Measure Source Expectation|Measure Consumer Expectation|
|---|---|---|---|
|name|0..*|**shall**|**shall**|
|identifier|0..*|**shall**|**shall**|
{:.grid}
###### Search on Definition Resources

A client system **shall** be able to retrieve the data they need, be it about beds, ventilators, PPE, or other measure.

Measures can be identified by codes used in the measure, or by the measure title, its canonical URL, or by something easier for a user to recall, such as the text of the measure or a code within it. Multiple measures may report on the same kind of thing (e.g., beds), so retrieval by code, or by code within a value set **should** be supported. There may be multiple measures which identify the kind of thing that the client system is interested in learning more about. Search by code **should** be met by implementing the [SearchParameter-code](SearchParameter-SearchParameter-code.html) search parameter.

However, search by code is not supported by default by many off-the-shelf systems, and so this is not a strict requirement for implementers. Also, chained searching is also not always readily available, and so search by measure title is also not a hard requirement. At the very least, a server **shall** be able to search by measure, and a client **shall** also ensure the greatest interoperability between systems with differing capabilities.

The server **shall** support the FHIR search operation on  the Measure resource with the following parameters.

1. **Search by Text or Code**.  
A client system **should** be able to search for Measure or other definition resources
associated with by text within the definition. This requirement can be met through support of the
[_text or _content search parameters](http://hl7.org/fhir/search.html#text) </a>, or by implementation
of the [definition-text SearchParameter](SearchParameter-SearchParameter-definition-text.html).


Parameter|Cardinality|Measure Source Expectation|Measure Consumer Expectation|
|---|---|---|---|
|_text |0..* |**SHOULD** |**SHOULD**|
|_content |0..* |**SHOULD** |**SHOULD**|
|definition-text |0..* |**SHOULD** |**SHOULD**|
|code |0..* |**SHOULD** |**SHOULD**|
|code:in |0..* |**SHOULD** |**SHOULD**|
{:.grid}

###### Search on Required Resources
A client and server **shall** support the FHIR search operation on  the MeasureReport resource with the following parameters.

1. **Search by Date and Measure**.  
A client **shall** be able to search by Measure for relevant dates, e.g., the date of _lastUpdate of a previously retrieved resource to see if it has changed (e.g., in cases where data needs to be refreshed), the date it was reported, or the period it applies to.
In order to enable querys within a geographic region, search **shall** allow for a client to at least enumerate locations by a well defined identifier (e.g., an NPI, a HIFLD location identifier, or some other readily and publicly available facility identifier.) This enables systems to use publicly available data to identify facilities within a particular region.
Further geographic search can be enabled by chaining to location, and using the near search operation location, which allows search to be performed based on geographic coordinates and a distance measure to specify a search within a region. This enables systems without extensive geographic capabilities to come close in identifying a facility within a particular distance (some implementations e.g., HAPI, use a bounding box, rather than a circle, because it increases search efficiency).
All date searches **shall** allow a range to be specified, but need not allow more than one range. Approximate ranges are not required to be supported because server support for these is not commonly available, nor implemented in readily reproducable fashions (the definition of an approximate date can have different meanings for different servers). Simple eq, le, lt, ge, and gt **should** be sufficient to specify date ranges. 

Parameter|Cardinality|Measure Source Expectation|Measure Consumer Expectation|
|--|---|---|---|
|_text |0..* |**SHOULD** |**SHOULD**|
|_content |0..* |**SHOULD** |**SHOULD**|
|definition-text |0..* |**SHOULD** |**SHOULD**|
|code |0..* |**SHOULD** |**SHOULD**|
|code:in |0..* |**SHOULD** |**SHOULD**|

##### Expected Actions

###### Search for MeasureReport

Measure Consumer requests data from a Measure Source.

The Measure Consumer performs a FHIR Search operation to retrieve the selected resources.

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

* [CapabilityStatement-MeasureSource-QueryMeasure-CSV-Pull](CapabilityStatement-MeasureSource-QueryMeasure-CSV-Pull.html) Defines the requirements for the Measure Source implementing the Query Measure transaction with the CSV Option and the Pull Option.
* [CapabilityStatement-MeasureConsumer-QueryMeasure-CSV-Pull](CapabilityStatement-MeasureConsumer-QueryMeasure-CSV-Pull.html) Defines the requirements for the Measure Consumer implementing the Query Measure transaction with the CSV Option and the Pull Option.
* [CapabilityStatement-MeasureSource-QueryMeasure-Pull](CapabilityStatement-MeasureSource-QueryMeasure-Pull.html) Defines the requirements for the Measure Source implementing the Query Measure transaction with the Pull Option.
* [CapabilityStatement-MeasureConsumer-QueryMeasure-Pull](CapabilityStatement-MeasureConsumer-QueryMeasure-Pull.html) Defines the requirements for the Measure Consumer implementing the Query Measure transaction with the Pull Option.