
Instance: MeasureSource-CSV-Pull
InstanceOf: CapabilityStatementWithSlices
Usage: #definition
Description: """
Defines the additional requirements for the Measure Source implementing the CSV Option and the Pull Option."""
* insert SanerDefinitionContent
* name = "MeasureSource_CSV_Pull"
* title = "Measure Source implementing the CSV Option and the Pull Option."
* date = "2021-03-08T19:31:55.919352Z"
* kind = #requirements
* description = "Defines the additional requirements for the Measure Source implementing the CSV Option and the Pull Option."
* format[0] = #xml
* format[1] = #json
* fhirVersion = #4.0.1

* rest[serverSlice].mode = #server

* rest[serverSlice].resource[MeasureReportSlice].type = #MeasureReport
* rest[serverSlice].resource[MeasureReportSlice].supportedProfile[0] = "http://hl7.org/fhir/uv/saner/StructureDefinition/PublicHealthMeasureReport"

* rest[serverSlice].resource[MeasureReportSlice].operation[0].name = "read-csv"
* rest[serverSlice].resource[MeasureReportSlice].operation[0].definition = "http://hl7.org/fhir/uv/saner/OperationDefinition/MeasureReport-read-csv"
* rest[serverSlice].resource[MeasureReportSlice].operation[0].documentation = "Read in CSV Format"

* rest[serverSlice].resource[MeasureReportSlice].operation[1].name = "search-csv"
* rest[serverSlice].resource[MeasureReportSlice].operation[1].definition = "http://hl7.org/fhir/uv/saner/OperationDefinition/MeasureReport-search-csv"
* rest[serverSlice].resource[MeasureReportSlice].operation[1].documentation = "Search in CSV Format"
