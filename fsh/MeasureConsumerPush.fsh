Instance: MeasureConsumerPush
Title: "Measure Consumer - Push Option"
InstanceOf: CapabilityStatement
  * status = #draft
  * experimental = true
  * date = "2020-05-07"
  * publisher = "Audacious Inquiry, Inc."
  * contact.name = "Keith W. Boone"
  * contact.telecom.system = #email
  * contact.telecom.value = "kboone@ainq.com"
  * kind = #requirements
  * fhirVersion = #4.0.1
  * format = #json
  * rest.mode = #server
  * rest.documentation = """
    The Measure Consumer provides access to aggregated or fine-grained data gathered from one or more Measure Sources.
    The Measure Consumer provides the ability to report on data from one or more Measure Sources.
    An Measure Consumer implementing the Pull Option periodically queries a Measure Source using the Query Measure transaction to enable collection of the current status.
  """
  // MeasureReport requirements
  * rest.resource[0].type = #MeasureReport
  * rest.resource[0].supportedProfile = "http://hl7.org/fhir/us/saner/StructureDefinition/PublicHealthMeasureReport"
  // SHALL support MeasureReport with the PublicHealthMeasureReport Profile
  * rest.resource[0].extension[0].url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
  * rest.resource[0].extension[0].valueCode = #SHALL
  // SHALL support create on MeasureReport
  * rest.resource[0].interaction[0].code = #create
  * rest.resource[0].interaction[0].extension[0].url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
  * rest.resource[0].interaction[0].extension[0].valueCode = #SHALL
  // SHALL support update on MeasureReport
  * rest.resource[0].interaction[1].code = #update
  * rest.resource[0].interaction[1].extension[0].url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
  * rest.resource[0].interaction[1].extension[0].valueCode = #SHALL

  // Measure requirements
  * rest.resource[1].type = #Measure
  * rest.resource[1].supportedProfile[0] = "http://hl7.org/fhir/us/saner/StructureDefinition/PublicHealthMeasure"
  * rest.resource[1].supportedProfile[1] = "http://hl7.org/fhir/us/saner/StructureDefinition/PublicHealthMeasureStratifier"
  // SHOULD support Measure with the PublicHealthMeasure and PublicHealthMeasureStratifier Profile
  * rest.resource[1].extension[0].url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
  * rest.resource[1].extension[0].valueCode = #SHOULD
  // SHOULD support create on Measure
  * rest.resource[1].interaction[0].code = #create
  * rest.resource[1].interaction[0].extension[0].url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
  * rest.resource[1].interaction[0].extension[0].valueCode = #SHOULD
  // SHOULD support update on Measure
  * rest.resource[1].interaction[1].code = #update
  * rest.resource[1].interaction[1].extension[0].url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
  * rest.resource[1].interaction[1].extension[0].valueCode = #SHOULD

  // Location requirements
  * rest.resource[2].type = #Location
  * rest.resource[2].supportedProfile = "http://hl7.org/fhir/us/saner/StructureDefinition/saner-resource-location"
  // SHOULD support Location with the SANERResourceLocation Profile
  * rest.resource[2].extension[0].url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
  * rest.resource[2].extension[0].valueCode = #SHOULD
  // SHOULD support create on Location
  * rest.resource[2].interaction[0].code = #create
  * rest.resource[2].interaction[0].extension[0].url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
  * rest.resource[2].interaction[0].extension[0].valueCode = #SHOULD
  // SHOULD support update on Location
  * rest.resource[2].interaction[1].code = #update
  * rest.resource[2].interaction[1].extension[0].url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
  * rest.resource[2].interaction[1].extension[0].valueCode = #SHOULD

  // Organization requirements
  * rest.resource[2].type = #Organization
  // SHOULD support Organization
  * rest.resource[2].extension[0].url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
  * rest.resource[2].extension[0].valueCode = #SHOULD
  // SHOULD support create on Organization
  * rest.resource[2].interaction[0].code = #create
  * rest.resource[2].interaction[0].extension[0].url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
  * rest.resource[2].interaction[0].extension[0].valueCode = #SHOULD
  // SHOULD support update on Organization
  * rest.resource[2].interaction[1].code = #update
  * rest.resource[2].interaction[1].extension[0].url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
  * rest.resource[2].interaction[1].extension[0].valueCode = #SHOULD

  // QuestionnaireResponse requirements
  * rest.resource[3].type = #QuestionnaireResponse
  // SHALL support QuestionnaireResponse
  * rest.resource[3].extension[0].url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
  * rest.resource[3].extension[0].valueCode = #SHALL
  // SHALL support create on QuestionnaireResponse
  * rest.resource[3].interaction[0].code = #create
  * rest.resource[3].interaction[0].extension[0].url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
  * rest.resource[3].interaction[0].extension[0].valueCode = #SHALL
  // SHALL support update on QuestionnaireResponse
  * rest.resource[3].interaction[1].code = #update
  * rest.resource[3].interaction[1].extension[0].url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
  * rest.resource[3].interaction[1].extension[0].valueCode = #SHALL

  // Questionnaire requirements
  * rest.resource[4].type = #Questionnaire
  // SHALL support Questionnaire
  * rest.resource[4].extension[0].url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
  * rest.resource[4].extension[0].valueCode = #SHALL
  // SHALL support create on Questionnaire
  * rest.resource[4].interaction[0].code = #create
  * rest.resource[4].interaction[0].extension[0].url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
  * rest.resource[4].interaction[0].extension[0].valueCode = #SHALL
  // SHALL support update on Questionnaire
  * rest.resource[4].interaction[1].code = #update
  * rest.resource[4].interaction[1].extension[0].url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
  * rest.resource[4].interaction[1].extension[0].valueCode = #SHALL