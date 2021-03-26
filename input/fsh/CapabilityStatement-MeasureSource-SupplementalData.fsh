
Instance: MeasureSource-SupplementalData
InstanceOf: CapabilityStatementWithSlices
Usage: #definition
Description: """
Defines the additional requirements for the Measure Source implementing the Supplemental Data Option."""
* insert SanerDefinitionContent
* name = "MeasureSource_SupplementalData"
* title = "Measure Source implementing the Supplemental Data Option."
* date = "2021-03-26"
* kind = #requirements
* description = "Defines the additional requirements for the Measure Source implementing the Supplemental Data Option."
* format[0] = #xml
* format[1] = #json
* fhirVersion = #4.0.1

* rest[clientSlice].mode = #client


* rest[clientSlice].interaction[0].code = #batch
* rest[clientSlice].interaction[0].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest[clientSlice].interaction[0].extension.valueCode = #SHALL
* rest[clientSlice].interaction[0].documentation = "Communicate a MeasureReport with supplemental data in a Bundle using the [FHIR batch](https://www.hl7.org/fhir/http.html#transaction) operation. The MeasureReport shall be the first entry in the Bundle. Referenced MeasureReport.evaluatedResource elements shall appear as subsequent entries in the Bundle."
