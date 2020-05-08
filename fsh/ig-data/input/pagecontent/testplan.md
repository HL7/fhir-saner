The overall SANER is an API between [three actors](actors_and_transactions.html#actor-options), and three different [Transactions types](actors_and_transactions.html#transaction-descriptions). The tests that can be executed are limited to the functionality of the system-under-test (SUT), and the transaction type it implements. Where that SUT has a specific function, it can be tested. 


## Test Plan

The following is the overall test plan for SANER alone:
* [Measure Source](actors_and_transactions.html#measure-source) publishes content
* [Measure Recipient](actors_and_transactions.html#measure-consumer) consumes content
* [Measure Intermediary](actors_and_transactions.html#measure-intermediary) consumes and publishes
* [Storage Option](actors_and_transactions.html#storage-option) transaction method exercised
* [API Option](actors_and_transactions.html#api-option) transaction method exercised
* [Push Option](actors_and_transactions.html#push-option) transaction method exercised
* [Pull Option](actors_and_transactions.html#pull-option) transaction method exercised


## Unit Test Procedure

Unit Tests in this context is where a SUT is tested against a simulator or validator.  A simulator is a implementation of an actor that is designed specifically to test the oposite pair actor. The simulator might be a reference implementation or may be a specially designed test-bench. Where a reference implementation is used the negative tests are harder to simulate. A validator is a implementation that can check conformance. A validator may be a simulator, but may also be a standalone tool used to validate only a message encoding. Some reference implementations may be able to validate to a StructureDefinition profile, but often these do not include sufficient constraints given the overall actor conformance criteria. 

The Unit Test is done using the Storage Option. The result is that the actor is tested as is the storage option.

### Measure Source

Unit Tests for Measure Storage actor test that it can produce valid content. Given that storage is used, there is a presumption that security is addressed external to the test procedure

#### Positive Test Scenarios 
* provide CapabilityStatement with indications of support of the SANER Measure Source actor
* Test output from Measure Source is valid
  * Action: Validate content to the SANER StructureDefinition 
* Test output from Measure Source is accurate to expected values published
  * Given some specific input to the SUT, that it produces output with correct values


#### Negative Test Scenarios
Negative tests are deliberate deviations from "happy path". They would not all be failure-modes. They must all be handled gracefully in a way appropriate to the SUT functionality.
* Measure Intermediary or Measure Consumer returns failure-mode, Measure Consumer handles failure gracefully
* TBD


### Measure Consumer

#### Postive Test Scenarios
* provide CapabilityStatement with indicatinos of support of the SANER Measure Consumer actor
* submit sample measures from SANER examples are consumed and made available in the Measure Consumer as expected by SUT functionality

#### Negative Test Scenarios
Negative tests are deliberate deviations from "happy path". They would not all be failure-modes. They must all be handled gracefully in a way appropriate to the SUT functionality.
* submit non-FHIR data (random data)
* submit valid FHIR Observation (from fhir core one of the examples)
* submit valid FHIR Measure that is not SANER compliant (from fhir core one of the examples?)
* submit valid SANER Measure that has extra data not minimally necessary
* submit valid SANER MEasure that has measures that are outside natural boundary for that measure (e.g. negative integer for counts)

### Measure Intermediary
* 

## Integration Test Procedure

Integration Tests in this context is where two SUT of paired actors test against each other. In this case the subset of tests that can be tested is the intersection. Testing only this intersection is necessary but not sufficient. The testing must also include the capability of the client (Measure Source or Measure Consumer) to exercise the test scenarios that this SUT can test, to determine that failure-modes are handled properly by both SUT.

## Cucumber
TODO: Write specific Cucumber statements, might use external tooling?





