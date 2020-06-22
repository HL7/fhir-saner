
Instance: MeasureSource-PUSH-TX-API
InstanceOf: CapabilityStatement
Description: "Capability Statement of Measure Source for Produce Measure"
Mixins: SanerDefinitionContent
* date = "2020-06-22T11:31:49.263715-04:00"
* kind = #requirements
* description = "This CapabilityStatement defines the additional requirements for the Measure Source implementing the Produce Measure transaction with the API Option."
* format[0] = #xml
* format[1] = #json
* fhirVersion = #4.0.1
* rest.mode = #client
* rest.resource[0].type = #MeasureReport
* rest.resource[0].interaction[0].code = #create
* rest.resource[0].interaction[0].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[0].interaction[0].extension.valueCode = #SHALL
* rest.resource[0].interaction[1].code = #update
* rest.resource[0].interaction[1].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[0].interaction[1].extension.valueCode = #SHALL

Instance: MeasureConsumer-PUSH-TX-API
InstanceOf: CapabilityStatement
Description: "Capability Statement of Measure Consumer for Produce Measure"
Mixins: SanerDefinitionContent
* date = "2020-06-22T11:31:49.263715-04:00"
* kind = #requirements
* description = "This CapabilityStatement defines the additional requirements for the Measure Consumer implementing the Produce Measure transaction with the API Option."
* format[0] = #xml
* format[1] = #json
* fhirVersion = #4.0.1
* rest.mode = #server
* rest.resource[0].type = #MeasureReport
* rest.resource[0].interaction[0].code = #create
* rest.resource[0].interaction[0].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[0].interaction[0].extension.valueCode = #SHALL
* rest.resource[0].interaction[1].code = #update
* rest.resource[0].interaction[1].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[0].interaction[1].extension.valueCode = #SHALL
