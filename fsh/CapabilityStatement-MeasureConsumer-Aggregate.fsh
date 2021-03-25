
Instance: MeasureConsumer-Aggregate
InstanceOf: CapabilityStatementWithSlices
Usage: #definition
Description: """
Defines the additional requirements for the Measure Consumer implementing the Aggregate Option."""
* insert SanerDefinitionContent
* name = "MeasureConsumer_Aggregate"
* title = "Measure Consumer implementing the Aggregate Option."
* date = "2021-03-25T16:43:11.708216Z"
* kind = #requirements
* description = "Defines the additional requirements for the Measure Consumer implementing the Aggregate Option."
* format[0] = #xml
* format[1] = #json
* fhirVersion = #4.0.1

* rest[serverSlice].mode = #server

* rest[serverSlice].resource[MeasureReportSlice].type = #MeasureReport
* rest[serverSlice].resource[MeasureReportSlice].supportedProfile[0] = "http://hl7.org/fhir/uv/saner/StructureDefinition/PublicHealthMeasureReport"

* rest[serverSlice].resource[MeasureReportSlice].operation[0].name = "aggregate"
* rest[serverSlice].resource[MeasureReportSlice].operation[0].definition = "http://hl7.org/fhir/uv/saner/OperationDefinition/MeasureReport-aggregate"
* rest[serverSlice].resource[MeasureReportSlice].operation[0].documentation = "Aggregate"
