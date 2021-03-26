
# SANER Measure Consumer Actor Requirements
@SANER @SANER-MeasureConsumer

Feature: MeasureConsumer-1 The Measure Consumer **shall** implement either the Pull Option or the Push Option.
Feature: MeasureConsumer-2 A Measure Consumer that implements the Push Option **shall** provide a CapabilityStatement when queried via
				[base]/metadata.
Feature: MeasureConsumer-3 A Measure Consumer that implements the Supplemental Data Option **shall** support creation of MeasureReport and Supplemental Data
            resources through the [HTTP Batch](https://www.hl7.org/fhir/http.html#transaction) operation and endpoint.
Feature: MeasureConsumer-4 A Measure Consumer that implements the Supplemental Data option must also implement the Push Option