
Instance: MeasureSource-Aggregate
InstanceOf: CapabilityStatementWithSlices
Usage: #definition
Description: """
Defines the additional requirements for the Measure Source implementing the Aggregate Option."""
* insert SanerDefinitionContent
* name = "MeasureSource_Aggregate"
* title = "Measure Source implementing the Aggregate Option."
* date = "2021-03-26"
* kind = #requirements
* description = "Defines the additional requirements for the Measure Source implementing the Aggregate Option."
* format[0] = #xml
* format[1] = #json
* fhirVersion = #4.0.1

* rest[clientSlice].mode = #client

* rest[clientSlice].resource[MeasureReportSlice].type = #MeasureReport
* rest[clientSlice].resource[MeasureReportSlice].supportedProfile[0] = "http://hl7.org/fhir/uv/saner/StructureDefinition/PublicHealthMeasureReport"

* rest[clientSlice].resource[MeasureReportSlice].operation[0].name = "aggregate"
* rest[clientSlice].resource[MeasureReportSlice].operation[0].definition = "http://hl7.org/fhir/uv/saner/OperationDefinition/MeasureReport-aggregate"
* rest[clientSlice].resource[MeasureReportSlice].operation[0].documentation = "Aggregate"
