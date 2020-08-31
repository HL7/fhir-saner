
Instance: MeasureConsumer-ProduceMeasure-API-Push
InstanceOf: CapabilityStatementWithSlices
Description: "Defines the additional requirements for the Measure Consumer implementing the Produce Measure transaction with the API Option and the Push Option."
* insert SanerDefinitionContent
* name = "MeasureConsumer_ProduceMeasure_API_Push"
* title = "Measure Consumer implementing the Produce Measure transaction with the API Option and the Push Option."
* date = "2020-08-31T01:16:36.012543-04:00"
* kind = #requirements
* description = "Defines the additional requirements for the Measure Consumer implementing the Produce Measure transaction with the API Option and the Push Option."
* format[0] = #xml
* format[1] = #json
* fhirVersion = #4.0.1

* rest[serverSlice].mode = #server

* rest[serverSlice].resource[MeasureReportSlice].type = #MeasureReport

* rest[serverSlice].resource[MeasureReportSlice].interaction[0].code = #create
* rest[serverSlice].resource[MeasureReportSlice].interaction[0].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest[serverSlice].resource[MeasureReportSlice].interaction[0].extension.valueCode = #SHALL

* rest[serverSlice].resource[MeasureReportSlice].interaction[1].code = #update
* rest[serverSlice].resource[MeasureReportSlice].interaction[1].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest[serverSlice].resource[MeasureReportSlice].interaction[1].extension.valueCode = #SHALL