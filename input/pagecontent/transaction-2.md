This section describes the PUSH-TX of this guide. This transaction is used by the Measure Source and Measure Consumer actors.

### Scope

The Produce Measure transaction allows an Measure Source to periodically report on availability of resources to a Measure Consumer.


This transaction defines the create and update operations that a MeasureConsumer and MeasureSource actor **shall** support.


### Actors Roles
{% include transaction-2-uc.svg%}

**Figure 2.2-1: Produce Measure Use Case Diagram**
|Actor|Role|
| ------ | ------- |
|[Measure Source](actors.html#measure-source)|Periodically generates data for a Measure Consumer.|
|[Measure Consumer](actors.html#measure-consumer)|Collects data for reporting|
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
<figure>{% include transaction-2-seq.svg%}
<figcaption>Figure 2.2-2: Produce Measure Interactions</figcaption>
</figure>


#### Push Measure

##### Trigger Event - Reporting Period Elapsed

The current reporting period has elapsed, or the operation is triggered by automation (e.g. for manual testing, diagnostics or error recovery).

See the [Reporting Period](StructureDefinition-ReportingPeriod.html) extension.


##### Message Semantics

A MeasureReport is created or updated by the MeasureSource on the MeasureConsumer.

The MeasureReport sends a MeasureReport to the MeasureConsumer using the FHIR [create](https://www.hl7.org/fhir/http.html#create) or [update](https://www.hl7.org/fhir/http.html#update) interactions. A MeasureSource supporting the CSV option sends the CSV file to the MeasureConsumer using the $report-csv operation.


##### Expected Actions

###### Send MeasureReport Resource

The Measure Source creates resources and sends them to a Measure Consumer

The Measure Source performs the FHIR create operation on the MeasureReport resource at a Measure Consumer.


###### Aggregate MeasureReport Resources

###### Accept Resource

The Measure Consumer reports success using 200 OK, 201 Created, or 204 No Content to indicate a successful update.

### Conformance
See the following CapabilityStatement resources for conformance requirements:

* [CapabilityStatement-MeasureSource-ProduceMeasure-CSV-Push](CapabilityStatement-MeasureSource-ProduceMeasure-CSV-Push.html) Defines the requirements for the Measure Source implementing the Produce Measure transaction with the CSV Option and the Push Option.
* [CapabilityStatement-MeasureConsumer-ProduceMeasure-CSV-Push](CapabilityStatement-MeasureConsumer-ProduceMeasure-CSV-Push.html) Defines the requirements for the Measure Consumer implementing the Produce Measure transaction with the CSV Option and the Push Option.
* [CapabilityStatement-MeasureSource-ProduceMeasure-Push](CapabilityStatement-MeasureSource-ProduceMeasure-Push.html) Defines the requirements for the Measure Source implementing the Produce Measure transaction with the Push Option.
* [CapabilityStatement-MeasureConsumer-ProduceMeasure-Push](CapabilityStatement-MeasureConsumer-ProduceMeasure-Push.html) Defines the requirements for the Measure Consumer implementing the Produce Measure transaction with the Push Option.
* [CapabilityStatement-MeasureSource-ProduceMeasure-SupplementalData](CapabilityStatement-MeasureSource-ProduceMeasure-SupplementalData.html) Defines the requirements for the Measure Source implementing the Produce Measure transaction with the Supplemental Data Option.
* [CapabilityStatement-MeasureConsumer-ProduceMeasure-SupplementalData](CapabilityStatement-MeasureConsumer-ProduceMeasure-SupplementalData.html) Defines the requirements for the Measure Consumer implementing the Produce Measure transaction with the Supplemental Data Option.