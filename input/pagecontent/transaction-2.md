This section describes the PUSH-TX of this guide. This transaction is used by the Measure Source and Measure Consumer actors.

### Scope

The Produce Measure transaction allows an Measure Source to periodically report on availability of resources to a Measure Consumer.


This transaction defines the create and update operations that a MeasureConsumer and MeasureSource actor must support.


### Actors Roles

![Figure 2.2-1: Produce Measure Use Case Diagram](transaction-2-uc.svg "Figure 2.2-1: Produce Measure Use Case Diagram")

**Figure 2.2-1: Produce Measure Use Case Diagram**

<table border='1' borderspacing='0'>
<caption><b>Table 2.2-1: Actor Roles</b></caption>
<thead><tr><th>Actor</th><th>Role</th></tr></thead>
<tbody><tr><td><a href="actors.html#measure-source">Measure Source</a></td>
<td>Periodically generates data for a Measure Consumer.</td>
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
        
            <tr><td>NDJSON</td><td><a href='http://ndjson.org/'>Newline Delimited JSON</a></td></tr>
        
</tbody>
</table>

### Interactions
        
![Figure 2.2-2: Produce Measure Interactions](transaction-2-seq.svg "Figure 2.2-2: Produce Measure Interactions")

**Figure 2.2-2: Produce Measure Interactions**


#### Push Measure




##### Trigger Event - Reporting Period Elapsed

The current reporting period has elapsed, or the operation is triggered by automation (e.g. for manual testing,
diagnostics or error recovery).


See the [Reporting Period](StructureDefinition-ReportingPeriod.html) extension.


##### Message Semantics

A MeasureReport is created or updated by the MeasureSource on the MeasureConsumer.


The MeasureReport sends a MeasureReport to the MeasureConsumer using the FHIR
[create](https://www.hl7.org/fhir/http.html#create) or [update](https://www.hl7.org/fhir/http.html#update) interactions.
A MeasureSource supporting the CSV option sends the CSV file to the MeasureConsumer using the $report-csv operation.


##### Expected Actions

###### Send MeasureReport Resource

The Measure Source creates resources and sends them to a Measure Consumer


The Measure Source performs the FHIR create
operation on the MeasureReport resource at a Measure Consumer.


###### Aggregate MeasureReport Resources

###### Accept Resource

The Measure Consumer reports success using 200 OK, 201 Created, or 204 No Content to indicate a successful update.





### Conformance
See the following CapabilityStatement resources for conformance requirements:

        