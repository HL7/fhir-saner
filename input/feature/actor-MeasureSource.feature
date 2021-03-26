
# SANER Measure Source Actor Requirements
@SANER @SANER-MeasureSource

Feature: MeasureSource-1 The Measure Source **shall** implement either the Pull Option or the Push Option.
Feature: MeasureSource-2 A Measure Source that implements the Pull Option **shall** provide a CapabilityStatement when queried via
[base]/metadata.
Feature: MeasureSource-3 A Measure Source that implements the Supplemental Data Option **shall** support creation of MeasureReport and Supplemental Data
            resources through the [HTTP Batch](https://www.hl7.org/fhir/http.html#transaction) operation and endpoint.
Feature: MeasureSource-4 A Measure Source that implements the Supplemental Data option must also implement the Push Option