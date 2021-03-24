
Instance: MeasureConsumer-SupplementalData
InstanceOf: CapabilityStatementWithSlices
Usage: #definition
Description: """
Defines the additional requirements for the Measure Consumer implementing the Supplemental Data Option."""
* insert SanerDefinitionContent
* name = "MeasureConsumer_SupplementalData"
* title = "Measure Consumer implementing the Supplemental Data Option."
* date = "2021-03-24T14:32:47.8509818-04:00"
* kind = #requirements
* description = "Defines the additional requirements for the Measure Consumer implementing the Supplemental Data Option."
* format[0] = #xml
* format[1] = #json
* fhirVersion = #4.0.1

* rest[serverSlice].mode = #server


* rest[serverSlice].interaction[0].code = #batch
* rest[serverSlice].interaction[0].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest[serverSlice].interaction[0].extension.valueCode = #SHALL
* rest[serverSlice].interaction[0].documentation = "Communicate a MeasureReport with supplemental data in a Bundle using the [FHIR batch](https://www.hl7.org/fhir/http.html#transaction) operation. The MeasureReport shall be the first entry in the Bundle. Referenced MeasureReport.evaluatedResource elements shall appear as subsequent entries in the Bundle."
