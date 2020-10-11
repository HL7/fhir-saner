
Instance: MeasureSource-Push
InstanceOf: CapabilityStatementWithSlices
Usage: #definition
Description: "Defines the additional requirements for the Measure Source implementing the Push Option."
* insert SanerDefinitionContent
* name = "MeasureSource_Push"
* title = "Measure Source implementing the Push Option."
* date = "2020-10-11T14:21:45.012146-04:00"
* kind = #requirements
* description = "Defines the additional requirements for the Measure Source implementing the Push Option."
* format[0] = #xml
* format[1] = #json
* fhirVersion = #4.0.1

* rest[clientSlice].mode = #client

* rest[clientSlice].resource[MeasureReportSlice].type = #MeasureReport
* rest[clientSlice].resource[MeasureReportSlice].supportedProfile[0] = "http://hl7.org/fhir/uv/fhir-saner/StructureDefinition/PublicHealthMeasureReport"

* rest[clientSlice].resource[MeasureReportSlice].interaction[0].code = #create
* rest[clientSlice].resource[MeasureReportSlice].interaction[0].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest[clientSlice].resource[MeasureReportSlice].interaction[0].extension.valueCode = #SHALL

* rest[clientSlice].resource[MeasureReportSlice].interaction[1].code = #update
* rest[clientSlice].resource[MeasureReportSlice].interaction[1].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest[clientSlice].resource[MeasureReportSlice].interaction[1].extension.valueCode = #SHALL
