Overall this guide provides an API between [multiple actors](actors.html#actor-options), and
[Transactions types](transactions.html). The tests that can be executed are limited to the functionality
of the system-under-test (SUT), and the transaction type it implements. Where that SUT has a specific
function, it can be tested.

### Test Plan

The following is the overall test plan for this guide:
* Unit Tests -- automation of testing of the actor alone using a simulator and validator tool
* Integration Tests -- automation of actors interacting through defined communications mechanism
* Validation Tests -- user expectation based testing

<a name="actors"></a>
Tests below support testing for the following actors:
  * [Measure Source](actors.html#measure-source) publishes MeasureReport content
  * [Measure Consumer](actors.html#measure-consumer) consumes MeasureReport content
  * [Measure Computer](actors.html#measure-computer) automates creation of MeasureReport content from a Measure
  * [Measure Definition Source](actors.html#measure-definition-source) provides Measure resource content
  * [Measure Definition Consumer](actors.html#measure-definition-consumer) consumes Measure resource content
  * [Measure Intermediary](actors.html#measure-intermediary) consumes MeasureReport resource from one system as a
  MeasureConsumer and provides (possibly transformed) content to a second system as a MeasureSource.

### Measure Source
The Measure Source reports results for a single facility, results for a collection of facilities, or aggregated data for a region.

#### Measure Source Preparation
1. Be able to produce a MeasureReport resource for the [example Measure](Measure-ComputableCDCPatientImpactAndHospitalCapacity.html).
2. Load realistic sample data into your system to populate a MeasureReport.
3. These data should be sufficiently distinctive that you can recognize them in a MeasureReport or in someone else's system.
4. If you're doing the publication scenario, have a client that can do a [MeasureReport create](transaction-1.html).
5. If you're doing the retrieval scenario, have a server that can respond to a [MeasureReport search](transaction-2.html).

#### Measure Source Success Criteria
* For the publication scenario, the MeasureReport based on the sample data is created at a Measure Consumer system.
* For the retrieval scenario, the MeasureReport based on the sample data is available for retrieval at the Measure Source.

### Measure Consumer
The Measure Consumer provides access to aggregated or fine-grained data gathered from one or more Measure Sources.

#### Measure Consumer Preparation
1. Be able to parse a MeasureReport resource for the example Measure and store it in your system.
2. If you are doing the publication scenario, have a server that can accept a [MeasureReport create](transaction-1.html).
3. If you are doing the retrieval scenario, have a client that can initiate a [MeasureReport search](transaction-2.html).

#### Measure Consumer Success Criteria
* For the publication scenario, a MeasureReport is created on a Measure Consumer system.
* For the retrieval scenario, the MeasureConsumer is able to retrieve the MeasureReport based on the sample data from the Measure Source.

### Measure Definition Source
Measure Definition Source providing Measure resources to a Measure Definition Consumer.

#### Measure Definition Source Preparation
1. Prepare two versions of the same Measure (an original version and one with corrections).
2. Be able to distribute the original version and support retrieval via a [Measure search](transaction-3.html).
3. Be able to Update the original version with the corrected version, again supporting retrieval via [Measure search](transaction-3.html).

#### Measure Definition Source Success Criteria
* The original Measure is available for retrieval by the Measure Definition Consumer actor at the Measure Definition Source.
* The updated Measure is available after correction for retrieval by the Measure Definition Consumer actor at the Measure Definition Source.

### Measure Definition Consumer
Measure Definition Consumer queries for new and updated Measure resources to act upon.

#### Measure Definition Consumer Preparation
1. Be able to read and search for a Measure resource using [Measure read and search](transaction-3.html).

#### Measure Definition Consumer Success Criteria
* The original Measure can be searched for and read by the Measure Definition Consumer from a Measure Definition Source.
* The updated Measure can be accessed after publication at the Measure Definition Source by the Measure Definition Consumer.

### Measure Computer
The Measure Computer is a combination of a Measure Definition Consumer and a Measure Source that can evaluate a Computable Measure against a FHIR Server.

#### Measure Computer Preparation
1. Prepare as for Measure Definition Consumer and Measure Source above.
2. Be able to connect to a FHIR Server containing test patient data (see [Automation Test Data](index.html#automation-data)).
3. Compute the measure from the data in the FHIR Server and prepare a report from it via an internal trigger or the [Measure/$evaluate-measure](OperationDefinition-Measure-evaluate-measure.html) operation.
4. If you are doing the publication scenario, store the MeasureReport using [MeasureReport create](transaction-1.html), or
5. If you are doing the retrieval scenario, enable retrieval of it using [MeasureReport search](transaction-2.html).

#### Measure Computer Success Criteria
* The current Measure is retrieved from a Measure Definition Consumer.
* A MeasureReport is computed from the current Measure provided.
* The MeasureReport matches the expected values based on the test data.
* The MeasureReport is created and made available to a MeasureConsumer via publication or retrieval.
* When the Measure is changed, a new report is created.
* The updated report matches the expected test values based on the test data.

### Measure Source using CSV Option
The Measure Source using CSV Option reports results for a single facility, or a collection of facilities using files in Comma Separated Value format.

#### Measure Source using CSV Option Preparation
1. Be able to convert one or more MeasureReport resources into CSV format for the example Measure.
2. Load realistic sample data into your system to populate a CSV file. <br/>
These data should be sufficiently distinctive that you can recognize them in a MeasureReport or in someone else's system.
3. If you're doing the publication scenario, have a client that can call the [Measure/$report-csv](OperationDefinition-Measure-report-csv.html) operation.
4. Call the MeasureReport/$report-csv Operation to submit a CSV file to create one or more MeasureReport resources from the CSV format.
5. If you're doing the retrieval scenario, have a server that can respond to a [MeasureReport/$search-csv](OperationDefinition-MeasureReport-search-csv.html) and [MeasureReport/$read-csv](OperationDefinition-MeasureReport-read-csv.html) operations.
6. Respond to the MeasureReport/$search-csv Operation to retrieve one or more MeasureReport resources in CSV format.
7. Respond to the MeasureReport/$read-csv Operation to read a MeasureReport resource in CSV format.

### Measure Consumer using CSV Option
The Measure Consumer using CSV Option provides access to aggregated or fine-grained data gathered from one or more Measure Sources using files in Comma Separated Value format.

#### Measure Consumer using CSV Option Preparation
1. Be able to parse a MeasureReport resource for the CDC Measure and store it in your system.
2. Download example resources from this guide.
3. If you're doing the publication scenario, have a server that supports the [Measure/$report-csv](OperationDefinition-Measure-report-csv.html) operation.
4. Respond to the MeasureReport/$convert Operation to convert a CSV file to convert from the CSV format to one or more MeasureReport resources .
5. Respond to the MeasureReport/$report Operation to submit a CSV file to create from the CSV format one or more MeasureReport resources.
6. If you're doing the retrieval scenario, have a client that can initiate a [MeasureReport/$search-csv](OperationDefinition-MeasureReport-search-csv.html) and [MeasureReport/$read-csv](OperationDefinition-MeasureReport-read-csv.html) operations.
7. Send a MeasureReport/$search-csv Operation to retrieve one or more MeasureReport resources in CSV format.
8. Respond to the MeasureReport/$read-csv Operation to read a MeasureReport resource in CSV format.

### Integration Test Scenarios <a name="scenarios"></a>
The following integration test scenarios included in this test place:
1. Automated Measure Computation and Reporting
2. Exchanging Updated Measure Definitions
3. Reporting in CSV Format
4. Accessing MeasureReport Resources in CSV Format
5. Generate and Store a MeasureReport
6. Query for MeasureReport Resources
7. Forward a MeasureReport
8. Aggregate MeasureReport Resources

#### Automated Measure Computation and Reporting
A provider organization application executes the following actions in appropriate roles in the scenario.

1. Application in the role of Measure Definition Consumer retrieves (PULL) a Computable Measure (definition) from a Measure Definition Source
2. Application in the role of Measure Computer uses the Computable Measure to compute against a FHIR Server
3. Application in the role of Measure Source creates a Measure Report based on the Computable Measure, and sends (PUSH) the Measure Report to  Measure Consumer
4. A public health organization application acts as both a Measure Definition Source and a Measure Consumer
   * Measure Definition Source supports queries for a Computable Measure
   * Measure Consumer accepts Measure Reports based on a Computable Measure

##### Automated Measure Computation Preconditions
* Measure Definition Source prepopulated with a Computable Measure
* FHIR Server prepopulated with test data for computing measures

##### Automated Measure Computation Success Criteria
* Measure Report pushed to the Measure Consumer
* Computed measurements match known results for the Computable Measure applied to the provided test data
* Bonus point: Provide evidence of FHIR Path/CQL calculations<br/>
For example, identify the FHIR Patient resources in the measure report that were used to calculate the data.

#### Exchanging Updated Measure Definitions
This scenario is planned for the second cycle of testing and involves the Measure Definition Source making a new Computable Measure Definition available for use. The new Computable Measure Definition will result in at least one different calculated result in a Measure Report based on the provided test data.  This scenario otherwise follows the Automated Measure Computation and Reporting scenario

### Reporting in CSV Format <a name="csvformat"></a>
Send CSV Data to a system for reporting.

#### Reporting in CSV Format Preconditions
1. The Measure Source implements the Push and CSV options
2. The Measure Source has measure data loaded to support the Measure being reported.
3. The Measure Consumer implements the Push and CSV options

#### Reporting in CSV Format Success Criteria
* When $report-csv is called, a new MeasureReport is created with appropriate values based on the CSV test data in the Measure Consumer.
* Bonus Point: The Measure Consumer and Measure Source interact using normal FHIR Create or Update operations, but with a mime type or _format value of csv, application/csv, or text/csv and the CSV formats are used instead of a FHIR Resource.

### Accessing MeasureReport Resources in CSV Format
A Measure Consumer implementing the CSV and Pull options queries a Measure Source implementing the CSV and Pull options to retrieve resources in CSV format.


#### Accessing MeasureReport Resources in CSV Format Preconditions
1. The Measure Source implements the Pull and CSV options
2. The Measure Source has MeasureReport resources loaded to support the Measure resource being reported upon.
3. The Measure Consumer implements the Pull and CSV options

#### Success Criteria
* The Measure Consumer calls $search-csv to find multiple matching MeasureReport resources.
* When $search-csv is called, multiple matching MeasureReport resources are reported in CSV format.
* The Measure Consumer calls $read-csv to read a single MeasureReport resources.
* When $read-csv is called, the identified MeasureReport resource is provided in CSV format.
* Bonus Point: The Measure Consumer and Measure Source interact using normal FHIR Search and FHIR Read operations, but with a mime type or _format value of csv, application/csv, or text/csv and the CSV formats are returned.

### Generate and Store a MeasureReport <a name="genstore"></a>

A Measure Source generates a MeasureReport for the CDC Measure resource (available as part of a ZIP with multiple example resources) using realistic sample data from its system.  Participants manually transmit this MeasureReport by whatever means are expedient.  A Measure Consumer consumes the MeasureReport and stores the measure data.

#### Generate and Store a MeasureReport Preconditions
* The Measure Source system is preloaded with whatever data it needs to populate the MeasureReport.

#### Generate and Store a MeasureReport Preconditions
* The Measure Source calls the create operation on a MeasureReport
* The Measure Consumer has the Measure Source's data stored in its system.
* The Measure Source calls the update operation on a MeasureReport
* The Measure Consumer has the Measure Source's updated data stored in its system.

### Produce Measure
The Measure Source creates a MeasureReport on a Measure Consumer using the [Produce Measure Transaction](transaction-2.html).

#### Preconditions:
* The Measure Source system is preloaded with whatever data it needs to populate the MeasureReport.
* The Measure Consumer's server exposes an endpoint for the MeasureReport create interaction.

#### Success Criteria:
* The Measure Consumer has the Measure Source's data stored in its system.
* Bonus Point: The Measure Consumer performs the Communicate Results transaction<br/>
This can be demonstrated by generation of a report, summary, or other artifact, or by transmission of resource availability
data or some computation over it to another system.

### Query for MeasureReport Resources <a name="query"></a>
1. The Measure Consumer searches for MeasureReport resources on the Measure Source's system using the [Query Measure Transaction](transaction-1.html).
2. The Measure Consumer reads a single MeasureReport.


#### Query for MeasureReport Resources Preconditions
* The Measure Source system is preloaded with whatever data it needs to populate the MeasureReport.
* The Measure Source and Measure Consumer agree
* The Measure Consumer's server exposes an endpoint for the MeasureReport create interaction.

#### Success Criteria
* The Measure Consumer performs a search operation meeting the requirements of the Query Measure Transaction.
* The Measure Source returns the correct results for the search.
* The Measure Consumer performs a read operation meeting the requirements of the Query Measure Transaction.
* The Measure Source returns the correct results for the read.
* Bonus Point: The Measure Consumer uses _include to read referenced resources, and the Measure Source correctly handles the _include values.

### Forward a MeasureReport <a name="forward"></a>
1. Acting as a Measure Consumer, the Measure Intermediary obtains one MeasureReport resource following the steps of either
   1. Query for MeasureReport OR
   2. Generate and Store a MeasureReport
2. Acting as a Measure Source, the Measure Intermediary makes that MeasureReport resource available to a second Measure Consumer following the steps of either
   1. Generate and Store a MeasureReport OR
   2. Query for MeasureReport


#### Forward a MeasureReport Preconditions
As for Query for MeasureReport and Generate and Store a MeasureReport where the Measure Source is a different system for
these two steps

#### Forward a MeasureReport Success Criteria
* A MeasureReport is obtained from a first measure source
* The MeasureReport is communicated to a second measure source

### Aggregate MeasureReport Resources <a name="aggregate"></a>
A Measure Intermediary is able to aggregate multiple MeasureReport resources:
1. Over a period of time, turning 7 daily reports into a weekly report for different types of Measures (count, point-in-time, and cumulative).
2. Over multiple sites, turning MeasureReport resources from multiple facilities in the same region to a MeasureReport describing the region.
3. Within a facility, collecting data from several reporting systems into a singular MeasureReport containing data from all systems.

#### Aggregate MeasureReport Resources Preconditions
1. MeasureReport resources are available from a single facility covering a period of 7 consecutive days for different types of Measures (count, point-in-time, and cumulative).
2. MeasureReport resources are available from multiple facilities within a region (e.g. Cook County, IL, the State of Rhode Island).
3. MeasureReport resources for the same measure and time period are available within a single facility, covering different sets of data.

#### Aggregate MeasureReport Resources Preconditions
1. A MeasureReport is created where data is aggregated appropriately for different the measure types in the MeasureReport resources.
2. A MeasureReport resource is communicated to a MeasureConsumer that contains a consolidated report across facilities.
3. A MeasureReport resource is created that contains a consolidated report within a single facility having appropriate values.

### Unit Test Procedures <a name="unittest"></a>
Unit Tests in this context is where a system under test is tested against a simulator or validator.  A simulator is a
implementation of an actor that is designed specifically to test the opposite pair actor. The simulator
might be a reference implementation or may be a specially designed test-bench. Where a reference
implementation is used the negative tests are harder to simulate. A validator is a implementation
that can check conformance. A validator may be a simulator, but may also be a standalone tool used
to validate only a message encoding. Some reference implementations may be able to validate to a
StructureDefinition profile, but often these do not include sufficient constraints given the
overall actor conformance criteria.

### Unit Testing
Unit Tests for Measure Source and Measure Definition Source actor test that these actors can produce valid content.

##### Positive Test Scenarios
* Provide a CapabilityStatement resource with indications of support of the SANER Measure Source or Measure Definition Source actors
* Test output from Measure Source or Measure Definition Source is valid
  * Validate content to the StructureDefinition for Measure Source
    * [PublicHealthMeasureReport](StructureDefinition-PublicHealthMeasure.html)
	* [PublicHealthMeasure](StructureDefinition-PublicHealthMeasureReport.html)
  * Validate content to the StructureDefinition for Measure Definition Source
    * [PublicHealthMeasure](StructureDefinition-PublicHealthMeasureReport.html)
    * [PublicHealthMeasureLibrary](StructureDefinition-PublicHealthMeasureLibrary.html)
* Test output from Measure Source or Measure Definition Source is accurate to expected values published
* Verify that audit events exist and conform to the profiles in this guide.

##### Negative Test Scenarios
Negative tests are deliberate deviations from "happy path". They would not all be failure-modes. They must
all be handled gracefully in a way appropriate to the SUT functionality.
* Measure Intermediary or Measure Consumer returns failure-mode, Measure Consumer handles failure gracefully

#### Measure Consumer
Unit Tests for Measure Consumer actor test that it can consume valid and invalid content robustly.

##### Positive Test Scenarios
* Measure Consumer provides a CapabilityStatement indicating support of the Measure Consumer actor
* Submit sample measures from SANER examples are consumed and made available in the Measure Consumer as expected by system functionality
  * [Public Health Measure Examples](StructureDefinition-PublicHealthMeasure-examples.html)
  * [Public Health Measure Report Examples](StructureDefinition-PublicHealthMeasureReport.html)
* Verify that audit events exist and conform to the profiles in this guide.

##### Negative Test Scenarios
Negative tests are deliberate deviations from "happy path". They would not all be failure-modes. They must all be
handled gracefully in a way appropriate to the SUT functionality.
* Submit a non-FHIR data (random data)
  * The receiver should fail (except in the case where allowances have been made for CSV conversion).
* Submit a valid FHIR Observation (from FHIR core in one of the examples)
  * e.g., http://hl7.org/fhir/R4/observation-example-f001-glucose.html
  * The receiver should fail, as the resource does not meet the expectations from the API.
* Submit a valid FHIR Measure that is not SANER compliant (e.g. one of the Measure examples in the Core FHIR specification).
  * e.g., http://hl7.org/fhir/R4/measurereport-cms146-cat3-example.html
  * The receiver may succeed or fail.  If the receiver as a FHIR Server, it would generally accept resources for a wide variety of use
    cases.  A receiver designed specifically to support only those capabilities defined by this guide may reject the submission because
    it does not meet the business rules associated with the use of this endpoint.
