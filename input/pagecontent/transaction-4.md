This section describes the COMPUTE-MX of this guide. This transaction is used by the Measure Source, Measure Consumer, Measure Computer and Data Source actors.

### Scope

The Compute Measure transaction describes the behavior of the Measure Computer actor in periodically computing
and reporting on measures.


This transaction enables automatic computing of measure reports and manual retriggering of report generation for
diagnostics or error recovery.


### Actors Roles

![Figure 2.4-1: Compute Measure Use Case Diagram](transaction-4-uc.svg "Figure 2.4-1: Compute Measure Use Case Diagram")

**Figure 2.4-1: Compute Measure Use Case Diagram**

<table border='1' borderspacing='0'>
<caption><b>Table 2.4-1: Actor Roles</b></caption>
<thead><tr><th>Actor</th><th>Role</th></tr></thead>
<tbody><tr><td><a href="actors.html#measure-source">Measure Source</a></td>
<td></td>
</tr>
        <tr><td><a href="actors.html#measure-consumer">Measure Consumer</a></td>
<td></td>
</tr>
        <tr><td><a href="actors.html#measure-computer">Measure Computer</a></td>
<td>Pull data for, computes and reports a measure.</td>
</tr>
        <tr><td><a href="actors.html#data-source">Data Source</a></td>
<td>Responds to queries for data used to compute measures or collect supplemental data.</td>
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
        
![Figure 2.4-2: Compute Measure Interactions](transaction-4-seq.svg "Figure 2.4-2: Compute Measure Interactions")

**Figure 2.4-2: Compute Measure Interactions**


#### Compute Measure


The Measure Computer computes the measure report for the current reporting period.


##### Trigger Event - Reporting Period Elapsed

The current reporting period has elapsed, or the operation is triggered by automation (e.g. for manual testing,
diagnostics or error recovery).


See the [Reporting Period](StructureDefinition-ReportingPeriod.html) extension.


##### Message Semantics

The Measure Computer prepares a Measure Report.


##### Expected Actions

###### Compute Measure

When the reporting period has elapsed, or the operation is externally triggered, a MeasureReport for the
specified Measure is computed from available data and the grouped MeasureSource is invoked below to store the created or
updated MeasureReport resource


#### Search FHIR Resources




##### Trigger Event - Data Query

Data is needed to compute a measure.


##### Message Semantics

The Measure Computer sends a query using an HTTP GET or POST to a Data Source supporting the
[FHIR Search](https://www.hl7.org/fhir/search.html) capabilities using an appropriate national implementation guide.


##### Expected Actions

###### Search for Data

Measure Computer requests data from a Data Source.


The Measure Computer performs a FHIR Search operation
to retrieve the selected resources.


#### Search Response


The Data Source returns the requested data.


##### Trigger Event - Resources have been requested by a Measure Computer.

##### Message Semantics

The Data Source responds with requested resources.


The resources will conform to the profiles specified in a national or regional Implementation Guide


##### Expected Actions

###### Returns Matching Resources

The Data Source returns the requested resources.


#### Report Measure


The Measure Computer reports the newly computed measure for the current reporting period.


##### Trigger Event - MeasureReport Available

A new MeasureReport resource is available for reporting.


##### Message Semantics

The Measure Computer reports the computed result via the grouped MeasureSource actor.


##### Expected Actions

###### Send MeasureReport Resource

The MeasureSource stores the MeasureReport by creating or updating it on the MeasureConsumer


###### Accept MeasureReport Resource

The MeasureConsumer processes the MeasureReport given in the create/update interaction.


#### Query Measure


The Measure Computer responds to a query for a Measure Report with the newly computed report for the current
reporting period.


##### Trigger Event - MeasureReport Requested

The Measure Consumer has requested measure reports with criteria matching the newly created report.


##### Message Semantics

The Measure Computer reports the computed result via the grouped MeasureSource actor.


##### Expected Actions

###### Store MeasureReport Resource

The MeasureSource stores the MeasureReport and is prepared to respond to queries for the MeasureReport resource
by the MeasureConsumer


###### Query for MeasureReport Resource

The MeasureConsumer queries for the MeasureReport from the MeasureSource



### Conformance
See the following CapabilityStatement resources for conformance requirements:

        