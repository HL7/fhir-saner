
Instance: DataSource
InstanceOf: CapabilityStatementWithSlices
Usage: #definition
Description: """
Defines the requirements for the Data Source."""
* insert SanerDefinitionContent
* name = "DataSource"
* title = "Data Source."
* date = "2021-07-26"
* kind = #requirements
* description = "Defines the requirements for the Data Source."
* format[0] = #xml
* format[1] = #json
* fhirVersion = #4.0.1

* rest[serverSlice].mode = #server

* rest[serverSlice].resource[PatientSlice].type = #Patient

* rest[serverSlice].resource[PatientSlice].interaction[0].code = #search-type
* rest[serverSlice].resource[PatientSlice].interaction[0].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest[serverSlice].resource[PatientSlice].interaction[0].extension.valueCode = #SHALL

* rest[serverSlice].resource[PatientSlice].searchParam[0].name = "_id"
* rest[serverSlice].resource[PatientSlice].searchParam[0].type = #reference
* rest[serverSlice].resource[PatientSlice].searchParam[0].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest[serverSlice].resource[PatientSlice].searchParam[0].extension.valueCode = #SHALL

* rest[serverSlice].resource[PatientSlice].searchParam[1].name = "date"
* rest[serverSlice].resource[PatientSlice].searchParam[1].type = #date
* rest[serverSlice].resource[PatientSlice].searchParam[1].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest[serverSlice].resource[PatientSlice].searchParam[1].extension.valueCode = #SHALL

* rest[serverSlice].resource[PatientSlice].searchParam[2].name = "class"
* rest[serverSlice].resource[PatientSlice].searchParam[2].type = #reference
* rest[serverSlice].resource[PatientSlice].searchParam[2].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest[serverSlice].resource[PatientSlice].searchParam[2].extension.valueCode = #SHALL

* rest[serverSlice].resource[PatientSlice].extension[0].url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-search-parameter-combination"
* rest[serverSlice].resource[PatientSlice].extension[0].extension[0].url = "required"
* rest[serverSlice].resource[PatientSlice].extension[0].extension[0].valueString = "_id"

* rest[serverSlice].resource[PatientSlice].extension[1].url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-search-parameter-combination"
* rest[serverSlice].resource[PatientSlice].extension[1].extension[0].url = "required"
* rest[serverSlice].resource[PatientSlice].extension[1].extension[0].valueString = "_id"
* rest[serverSlice].resource[PatientSlice].extension[1].extension[1].url = "required"
* rest[serverSlice].resource[PatientSlice].extension[1].extension[1].valueString = "class"
* rest[serverSlice].resource[PatientSlice].extension[1].extension[2].url = "optional"
* rest[serverSlice].resource[PatientSlice].extension[1].extension[2].valueString = "date"

* rest[serverSlice].resource[EncounterSlice].type = #Encounter

* rest[serverSlice].resource[EncounterSlice].interaction[0].code = #search-type
* rest[serverSlice].resource[EncounterSlice].interaction[0].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest[serverSlice].resource[EncounterSlice].interaction[0].extension.valueCode = #SHALL

* rest[serverSlice].resource[EncounterSlice].searchParam[0].name = "_id"
* rest[serverSlice].resource[EncounterSlice].searchParam[0].type = #reference
* rest[serverSlice].resource[EncounterSlice].searchParam[0].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest[serverSlice].resource[EncounterSlice].searchParam[0].extension.valueCode = #SHALL

* rest[serverSlice].resource[EncounterSlice].searchParam[1].name = "date"
* rest[serverSlice].resource[EncounterSlice].searchParam[1].type = #date
* rest[serverSlice].resource[EncounterSlice].searchParam[1].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest[serverSlice].resource[EncounterSlice].searchParam[1].extension.valueCode = #SHALL

* rest[serverSlice].resource[EncounterSlice].searchParam[2].name = "class"
* rest[serverSlice].resource[EncounterSlice].searchParam[2].type = #reference
* rest[serverSlice].resource[EncounterSlice].searchParam[2].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest[serverSlice].resource[EncounterSlice].searchParam[2].extension.valueCode = #SHALL

* rest[serverSlice].resource[EncounterSlice].searchParam[3].name = "patient"
* rest[serverSlice].resource[EncounterSlice].searchParam[3].type = #reference
* rest[serverSlice].resource[EncounterSlice].searchParam[3].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest[serverSlice].resource[EncounterSlice].searchParam[3].extension.valueCode = #SHALL

* rest[serverSlice].resource[EncounterSlice].searchParam[4].name = "encounter"
* rest[serverSlice].resource[EncounterSlice].searchParam[4].type = #reference
* rest[serverSlice].resource[EncounterSlice].searchParam[4].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest[serverSlice].resource[EncounterSlice].searchParam[4].extension.valueCode = #SHALL

* rest[serverSlice].resource[EncounterSlice].searchParam[5].name = "code"
* rest[serverSlice].resource[EncounterSlice].searchParam[5].type = #token
* rest[serverSlice].resource[EncounterSlice].searchParam[5].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest[serverSlice].resource[EncounterSlice].searchParam[5].extension.valueCode = #SHALL

* rest[serverSlice].resource[EncounterSlice].extension[0].url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-search-parameter-combination"
* rest[serverSlice].resource[EncounterSlice].extension[0].extension[0].url = "required"
* rest[serverSlice].resource[EncounterSlice].extension[0].extension[0].valueString = "_id"

* rest[serverSlice].resource[EncounterSlice].extension[1].url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-search-parameter-combination"
* rest[serverSlice].resource[EncounterSlice].extension[1].extension[0].url = "required"
* rest[serverSlice].resource[EncounterSlice].extension[1].extension[0].valueString = "_id"
* rest[serverSlice].resource[EncounterSlice].extension[1].extension[1].url = "required"
* rest[serverSlice].resource[EncounterSlice].extension[1].extension[1].valueString = "class"
* rest[serverSlice].resource[EncounterSlice].extension[1].extension[2].url = "optional"
* rest[serverSlice].resource[EncounterSlice].extension[1].extension[2].valueString = "date"

* rest[serverSlice].resource[EncounterSlice].extension[2].url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-search-parameter-combination"
* rest[serverSlice].resource[EncounterSlice].extension[2].extension[0].url = "required"
* rest[serverSlice].resource[EncounterSlice].extension[2].extension[0].valueString = "_id"
* rest[serverSlice].resource[EncounterSlice].extension[2].extension[1].url = "required"
* rest[serverSlice].resource[EncounterSlice].extension[2].extension[1].valueString = "patient"
* rest[serverSlice].resource[EncounterSlice].extension[2].extension[2].url = "required"
* rest[serverSlice].resource[EncounterSlice].extension[2].extension[2].valueString = "encounter"
* rest[serverSlice].resource[EncounterSlice].extension[2].extension[3].url = "required"
* rest[serverSlice].resource[EncounterSlice].extension[2].extension[3].valueString = "code"

* rest[serverSlice].resource[AllergyIntoleranceSlice].type = #AllergyIntolerance

* rest[serverSlice].resource[AllergyIntoleranceSlice].interaction[0].code = #search-type
* rest[serverSlice].resource[AllergyIntoleranceSlice].interaction[0].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest[serverSlice].resource[AllergyIntoleranceSlice].interaction[0].extension.valueCode = #SHALL

* rest[serverSlice].resource[AllergyIntoleranceSlice].searchParam[0].name = "_id"
* rest[serverSlice].resource[AllergyIntoleranceSlice].searchParam[0].type = #reference
* rest[serverSlice].resource[AllergyIntoleranceSlice].searchParam[0].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest[serverSlice].resource[AllergyIntoleranceSlice].searchParam[0].extension.valueCode = #SHALL

* rest[serverSlice].resource[AllergyIntoleranceSlice].searchParam[1].name = "patient"
* rest[serverSlice].resource[AllergyIntoleranceSlice].searchParam[1].type = #reference
* rest[serverSlice].resource[AllergyIntoleranceSlice].searchParam[1].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest[serverSlice].resource[AllergyIntoleranceSlice].searchParam[1].extension.valueCode = #SHALL

* rest[serverSlice].resource[AllergyIntoleranceSlice].searchParam[2].name = "encounter"
* rest[serverSlice].resource[AllergyIntoleranceSlice].searchParam[2].type = #reference
* rest[serverSlice].resource[AllergyIntoleranceSlice].searchParam[2].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest[serverSlice].resource[AllergyIntoleranceSlice].searchParam[2].extension.valueCode = #SHALL

* rest[serverSlice].resource[AllergyIntoleranceSlice].searchParam[3].name = "code"
* rest[serverSlice].resource[AllergyIntoleranceSlice].searchParam[3].type = #token
* rest[serverSlice].resource[AllergyIntoleranceSlice].searchParam[3].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest[serverSlice].resource[AllergyIntoleranceSlice].searchParam[3].extension.valueCode = #SHALL

* rest[serverSlice].resource[AllergyIntoleranceSlice].extension[0].url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-search-parameter-combination"
* rest[serverSlice].resource[AllergyIntoleranceSlice].extension[0].extension[0].url = "required"
* rest[serverSlice].resource[AllergyIntoleranceSlice].extension[0].extension[0].valueString = "_id"
* rest[serverSlice].resource[AllergyIntoleranceSlice].extension[0].extension[1].url = "required"
* rest[serverSlice].resource[AllergyIntoleranceSlice].extension[0].extension[1].valueString = "patient"
* rest[serverSlice].resource[AllergyIntoleranceSlice].extension[0].extension[2].url = "required"
* rest[serverSlice].resource[AllergyIntoleranceSlice].extension[0].extension[2].valueString = "encounter"
* rest[serverSlice].resource[AllergyIntoleranceSlice].extension[0].extension[3].url = "required"
* rest[serverSlice].resource[AllergyIntoleranceSlice].extension[0].extension[3].valueString = "code"

* rest[serverSlice].resource[ConditionSlice].type = #Condition

* rest[serverSlice].resource[ConditionSlice].interaction[0].code = #search-type
* rest[serverSlice].resource[ConditionSlice].interaction[0].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest[serverSlice].resource[ConditionSlice].interaction[0].extension.valueCode = #SHALL

* rest[serverSlice].resource[ConditionSlice].searchParam[0].name = "_id"
* rest[serverSlice].resource[ConditionSlice].searchParam[0].type = #reference
* rest[serverSlice].resource[ConditionSlice].searchParam[0].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest[serverSlice].resource[ConditionSlice].searchParam[0].extension.valueCode = #SHALL

* rest[serverSlice].resource[ConditionSlice].searchParam[1].name = "patient"
* rest[serverSlice].resource[ConditionSlice].searchParam[1].type = #reference
* rest[serverSlice].resource[ConditionSlice].searchParam[1].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest[serverSlice].resource[ConditionSlice].searchParam[1].extension.valueCode = #SHALL

* rest[serverSlice].resource[ConditionSlice].searchParam[2].name = "encounter"
* rest[serverSlice].resource[ConditionSlice].searchParam[2].type = #reference
* rest[serverSlice].resource[ConditionSlice].searchParam[2].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest[serverSlice].resource[ConditionSlice].searchParam[2].extension.valueCode = #SHALL

* rest[serverSlice].resource[ConditionSlice].searchParam[3].name = "code"
* rest[serverSlice].resource[ConditionSlice].searchParam[3].type = #token
* rest[serverSlice].resource[ConditionSlice].searchParam[3].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest[serverSlice].resource[ConditionSlice].searchParam[3].extension.valueCode = #SHALL

* rest[serverSlice].resource[ConditionSlice].extension[0].url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-search-parameter-combination"
* rest[serverSlice].resource[ConditionSlice].extension[0].extension[0].url = "required"
* rest[serverSlice].resource[ConditionSlice].extension[0].extension[0].valueString = "_id"
* rest[serverSlice].resource[ConditionSlice].extension[0].extension[1].url = "required"
* rest[serverSlice].resource[ConditionSlice].extension[0].extension[1].valueString = "patient"
* rest[serverSlice].resource[ConditionSlice].extension[0].extension[2].url = "required"
* rest[serverSlice].resource[ConditionSlice].extension[0].extension[2].valueString = "encounter"
* rest[serverSlice].resource[ConditionSlice].extension[0].extension[3].url = "required"
* rest[serverSlice].resource[ConditionSlice].extension[0].extension[3].valueString = "code"

* rest[serverSlice].resource[DiagnosticReportSlice].type = #DiagnosticReport

* rest[serverSlice].resource[DiagnosticReportSlice].interaction[0].code = #search-type
* rest[serverSlice].resource[DiagnosticReportSlice].interaction[0].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest[serverSlice].resource[DiagnosticReportSlice].interaction[0].extension.valueCode = #SHALL

* rest[serverSlice].resource[DiagnosticReportSlice].searchParam[0].name = "_id"
* rest[serverSlice].resource[DiagnosticReportSlice].searchParam[0].type = #reference
* rest[serverSlice].resource[DiagnosticReportSlice].searchParam[0].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest[serverSlice].resource[DiagnosticReportSlice].searchParam[0].extension.valueCode = #SHALL

* rest[serverSlice].resource[DiagnosticReportSlice].searchParam[1].name = "patient"
* rest[serverSlice].resource[DiagnosticReportSlice].searchParam[1].type = #reference
* rest[serverSlice].resource[DiagnosticReportSlice].searchParam[1].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest[serverSlice].resource[DiagnosticReportSlice].searchParam[1].extension.valueCode = #SHALL

* rest[serverSlice].resource[DiagnosticReportSlice].searchParam[2].name = "encounter"
* rest[serverSlice].resource[DiagnosticReportSlice].searchParam[2].type = #reference
* rest[serverSlice].resource[DiagnosticReportSlice].searchParam[2].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest[serverSlice].resource[DiagnosticReportSlice].searchParam[2].extension.valueCode = #SHALL

* rest[serverSlice].resource[DiagnosticReportSlice].searchParam[3].name = "code"
* rest[serverSlice].resource[DiagnosticReportSlice].searchParam[3].type = #token
* rest[serverSlice].resource[DiagnosticReportSlice].searchParam[3].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest[serverSlice].resource[DiagnosticReportSlice].searchParam[3].extension.valueCode = #SHALL

* rest[serverSlice].resource[DiagnosticReportSlice].extension[0].url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-search-parameter-combination"
* rest[serverSlice].resource[DiagnosticReportSlice].extension[0].extension[0].url = "required"
* rest[serverSlice].resource[DiagnosticReportSlice].extension[0].extension[0].valueString = "_id"
* rest[serverSlice].resource[DiagnosticReportSlice].extension[0].extension[1].url = "required"
* rest[serverSlice].resource[DiagnosticReportSlice].extension[0].extension[1].valueString = "patient"
* rest[serverSlice].resource[DiagnosticReportSlice].extension[0].extension[2].url = "required"
* rest[serverSlice].resource[DiagnosticReportSlice].extension[0].extension[2].valueString = "encounter"
* rest[serverSlice].resource[DiagnosticReportSlice].extension[0].extension[3].url = "required"
* rest[serverSlice].resource[DiagnosticReportSlice].extension[0].extension[3].valueString = "code"

* rest[serverSlice].resource[MedicationRequestSlice].type = #MedicationRequest

* rest[serverSlice].resource[MedicationRequestSlice].interaction[0].code = #search-type
* rest[serverSlice].resource[MedicationRequestSlice].interaction[0].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest[serverSlice].resource[MedicationRequestSlice].interaction[0].extension.valueCode = #SHALL

* rest[serverSlice].resource[MedicationRequestSlice].searchParam[0].name = "_id"
* rest[serverSlice].resource[MedicationRequestSlice].searchParam[0].type = #reference
* rest[serverSlice].resource[MedicationRequestSlice].searchParam[0].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest[serverSlice].resource[MedicationRequestSlice].searchParam[0].extension.valueCode = #SHALL

* rest[serverSlice].resource[MedicationRequestSlice].searchParam[1].name = "patient"
* rest[serverSlice].resource[MedicationRequestSlice].searchParam[1].type = #reference
* rest[serverSlice].resource[MedicationRequestSlice].searchParam[1].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest[serverSlice].resource[MedicationRequestSlice].searchParam[1].extension.valueCode = #SHALL

* rest[serverSlice].resource[MedicationRequestSlice].searchParam[2].name = "encounter"
* rest[serverSlice].resource[MedicationRequestSlice].searchParam[2].type = #reference
* rest[serverSlice].resource[MedicationRequestSlice].searchParam[2].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest[serverSlice].resource[MedicationRequestSlice].searchParam[2].extension.valueCode = #SHALL

* rest[serverSlice].resource[MedicationRequestSlice].searchParam[3].name = "code"
* rest[serverSlice].resource[MedicationRequestSlice].searchParam[3].type = #token
* rest[serverSlice].resource[MedicationRequestSlice].searchParam[3].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest[serverSlice].resource[MedicationRequestSlice].searchParam[3].extension.valueCode = #SHALL

* rest[serverSlice].resource[MedicationRequestSlice].extension[0].url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-search-parameter-combination"
* rest[serverSlice].resource[MedicationRequestSlice].extension[0].extension[0].url = "required"
* rest[serverSlice].resource[MedicationRequestSlice].extension[0].extension[0].valueString = "_id"
* rest[serverSlice].resource[MedicationRequestSlice].extension[0].extension[1].url = "required"
* rest[serverSlice].resource[MedicationRequestSlice].extension[0].extension[1].valueString = "patient"
* rest[serverSlice].resource[MedicationRequestSlice].extension[0].extension[2].url = "required"
* rest[serverSlice].resource[MedicationRequestSlice].extension[0].extension[2].valueString = "encounter"
* rest[serverSlice].resource[MedicationRequestSlice].extension[0].extension[3].url = "required"
* rest[serverSlice].resource[MedicationRequestSlice].extension[0].extension[3].valueString = "code"

* rest[serverSlice].resource[ObservationSlice].type = #Observation

* rest[serverSlice].resource[ObservationSlice].interaction[0].code = #search-type
* rest[serverSlice].resource[ObservationSlice].interaction[0].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest[serverSlice].resource[ObservationSlice].interaction[0].extension.valueCode = #SHALL

* rest[serverSlice].resource[ObservationSlice].searchParam[0].name = "_id"
* rest[serverSlice].resource[ObservationSlice].searchParam[0].type = #reference
* rest[serverSlice].resource[ObservationSlice].searchParam[0].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest[serverSlice].resource[ObservationSlice].searchParam[0].extension.valueCode = #SHALL

* rest[serverSlice].resource[ObservationSlice].searchParam[1].name = "patient"
* rest[serverSlice].resource[ObservationSlice].searchParam[1].type = #reference
* rest[serverSlice].resource[ObservationSlice].searchParam[1].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest[serverSlice].resource[ObservationSlice].searchParam[1].extension.valueCode = #SHALL

* rest[serverSlice].resource[ObservationSlice].searchParam[2].name = "encounter"
* rest[serverSlice].resource[ObservationSlice].searchParam[2].type = #reference
* rest[serverSlice].resource[ObservationSlice].searchParam[2].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest[serverSlice].resource[ObservationSlice].searchParam[2].extension.valueCode = #SHALL

* rest[serverSlice].resource[ObservationSlice].searchParam[3].name = "code"
* rest[serverSlice].resource[ObservationSlice].searchParam[3].type = #token
* rest[serverSlice].resource[ObservationSlice].searchParam[3].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest[serverSlice].resource[ObservationSlice].searchParam[3].extension.valueCode = #SHALL

* rest[serverSlice].resource[ObservationSlice].extension[0].url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-search-parameter-combination"
* rest[serverSlice].resource[ObservationSlice].extension[0].extension[0].url = "required"
* rest[serverSlice].resource[ObservationSlice].extension[0].extension[0].valueString = "_id"
* rest[serverSlice].resource[ObservationSlice].extension[0].extension[1].url = "required"
* rest[serverSlice].resource[ObservationSlice].extension[0].extension[1].valueString = "patient"
* rest[serverSlice].resource[ObservationSlice].extension[0].extension[2].url = "required"
* rest[serverSlice].resource[ObservationSlice].extension[0].extension[2].valueString = "encounter"
* rest[serverSlice].resource[ObservationSlice].extension[0].extension[3].url = "required"
* rest[serverSlice].resource[ObservationSlice].extension[0].extension[3].valueString = "code"

* rest[serverSlice].resource[ProcedureSlice].type = #Procedure

* rest[serverSlice].resource[ProcedureSlice].interaction[0].code = #search-type
* rest[serverSlice].resource[ProcedureSlice].interaction[0].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest[serverSlice].resource[ProcedureSlice].interaction[0].extension.valueCode = #SHALL

* rest[serverSlice].resource[ProcedureSlice].searchParam[0].name = "_id"
* rest[serverSlice].resource[ProcedureSlice].searchParam[0].type = #reference
* rest[serverSlice].resource[ProcedureSlice].searchParam[0].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest[serverSlice].resource[ProcedureSlice].searchParam[0].extension.valueCode = #SHALL

* rest[serverSlice].resource[ProcedureSlice].searchParam[1].name = "patient"
* rest[serverSlice].resource[ProcedureSlice].searchParam[1].type = #reference
* rest[serverSlice].resource[ProcedureSlice].searchParam[1].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest[serverSlice].resource[ProcedureSlice].searchParam[1].extension.valueCode = #SHALL

* rest[serverSlice].resource[ProcedureSlice].searchParam[2].name = "encounter"
* rest[serverSlice].resource[ProcedureSlice].searchParam[2].type = #reference
* rest[serverSlice].resource[ProcedureSlice].searchParam[2].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest[serverSlice].resource[ProcedureSlice].searchParam[2].extension.valueCode = #SHALL

* rest[serverSlice].resource[ProcedureSlice].searchParam[3].name = "code"
* rest[serverSlice].resource[ProcedureSlice].searchParam[3].type = #token
* rest[serverSlice].resource[ProcedureSlice].searchParam[3].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest[serverSlice].resource[ProcedureSlice].searchParam[3].extension.valueCode = #SHALL

* rest[serverSlice].resource[ProcedureSlice].extension[0].url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-search-parameter-combination"
* rest[serverSlice].resource[ProcedureSlice].extension[0].extension[0].url = "required"
* rest[serverSlice].resource[ProcedureSlice].extension[0].extension[0].valueString = "_id"
* rest[serverSlice].resource[ProcedureSlice].extension[0].extension[1].url = "required"
* rest[serverSlice].resource[ProcedureSlice].extension[0].extension[1].valueString = "patient"
* rest[serverSlice].resource[ProcedureSlice].extension[0].extension[2].url = "required"
* rest[serverSlice].resource[ProcedureSlice].extension[0].extension[2].valueString = "encounter"
* rest[serverSlice].resource[ProcedureSlice].extension[0].extension[3].url = "required"
* rest[serverSlice].resource[ProcedureSlice].extension[0].extension[3].valueString = "code"

* rest[serverSlice].resource[ServiceRequestSlice].type = #ServiceRequest

* rest[serverSlice].resource[ServiceRequestSlice].interaction[0].code = #search-type
* rest[serverSlice].resource[ServiceRequestSlice].interaction[0].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest[serverSlice].resource[ServiceRequestSlice].interaction[0].extension.valueCode = #SHALL

* rest[serverSlice].resource[ServiceRequestSlice].searchParam[0].name = "_id"
* rest[serverSlice].resource[ServiceRequestSlice].searchParam[0].type = #reference
* rest[serverSlice].resource[ServiceRequestSlice].searchParam[0].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest[serverSlice].resource[ServiceRequestSlice].searchParam[0].extension.valueCode = #SHALL

* rest[serverSlice].resource[ServiceRequestSlice].searchParam[1].name = "patient"
* rest[serverSlice].resource[ServiceRequestSlice].searchParam[1].type = #reference
* rest[serverSlice].resource[ServiceRequestSlice].searchParam[1].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest[serverSlice].resource[ServiceRequestSlice].searchParam[1].extension.valueCode = #SHALL

* rest[serverSlice].resource[ServiceRequestSlice].searchParam[2].name = "encounter"
* rest[serverSlice].resource[ServiceRequestSlice].searchParam[2].type = #reference
* rest[serverSlice].resource[ServiceRequestSlice].searchParam[2].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest[serverSlice].resource[ServiceRequestSlice].searchParam[2].extension.valueCode = #SHALL

* rest[serverSlice].resource[ServiceRequestSlice].searchParam[3].name = "code"
* rest[serverSlice].resource[ServiceRequestSlice].searchParam[3].type = #token
* rest[serverSlice].resource[ServiceRequestSlice].searchParam[3].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest[serverSlice].resource[ServiceRequestSlice].searchParam[3].extension.valueCode = #SHALL

* rest[serverSlice].resource[ServiceRequestSlice].extension[0].url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-search-parameter-combination"
* rest[serverSlice].resource[ServiceRequestSlice].extension[0].extension[0].url = "required"
* rest[serverSlice].resource[ServiceRequestSlice].extension[0].extension[0].valueString = "_id"
* rest[serverSlice].resource[ServiceRequestSlice].extension[0].extension[1].url = "required"
* rest[serverSlice].resource[ServiceRequestSlice].extension[0].extension[1].valueString = "patient"
* rest[serverSlice].resource[ServiceRequestSlice].extension[0].extension[2].url = "required"
* rest[serverSlice].resource[ServiceRequestSlice].extension[0].extension[2].valueString = "encounter"
* rest[serverSlice].resource[ServiceRequestSlice].extension[0].extension[3].url = "required"
* rest[serverSlice].resource[ServiceRequestSlice].extension[0].extension[3].valueString = "code"

* rest[serverSlice].resource[DocumentReferenceSlice].type = #DocumentReference

* rest[serverSlice].resource[DocumentReferenceSlice].interaction[0].code = #search-type
* rest[serverSlice].resource[DocumentReferenceSlice].interaction[0].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest[serverSlice].resource[DocumentReferenceSlice].interaction[0].extension.valueCode = #SHOULD

* rest[serverSlice].resource[DocumentReferenceSlice].searchParam[0].name = "_id"
* rest[serverSlice].resource[DocumentReferenceSlice].searchParam[0].type = #reference
* rest[serverSlice].resource[DocumentReferenceSlice].searchParam[0].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest[serverSlice].resource[DocumentReferenceSlice].searchParam[0].extension.valueCode = #SHALL

* rest[serverSlice].resource[DocumentReferenceSlice].searchParam[1].name = "patient"
* rest[serverSlice].resource[DocumentReferenceSlice].searchParam[1].type = #reference
* rest[serverSlice].resource[DocumentReferenceSlice].searchParam[1].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest[serverSlice].resource[DocumentReferenceSlice].searchParam[1].extension.valueCode = #SHALL

* rest[serverSlice].resource[DocumentReferenceSlice].searchParam[2].name = "encounter"
* rest[serverSlice].resource[DocumentReferenceSlice].searchParam[2].type = #reference
* rest[serverSlice].resource[DocumentReferenceSlice].searchParam[2].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest[serverSlice].resource[DocumentReferenceSlice].searchParam[2].extension.valueCode = #SHALL

* rest[serverSlice].resource[DocumentReferenceSlice].searchParam[3].name = "code"
* rest[serverSlice].resource[DocumentReferenceSlice].searchParam[3].type = #token
* rest[serverSlice].resource[DocumentReferenceSlice].searchParam[3].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest[serverSlice].resource[DocumentReferenceSlice].searchParam[3].extension.valueCode = #SHALL

* rest[serverSlice].resource[DocumentReferenceSlice].extension[0].url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-search-parameter-combination"
* rest[serverSlice].resource[DocumentReferenceSlice].extension[0].extension[0].url = "required"
* rest[serverSlice].resource[DocumentReferenceSlice].extension[0].extension[0].valueString = "_id"
* rest[serverSlice].resource[DocumentReferenceSlice].extension[0].extension[1].url = "required"
* rest[serverSlice].resource[DocumentReferenceSlice].extension[0].extension[1].valueString = "patient"
* rest[serverSlice].resource[DocumentReferenceSlice].extension[0].extension[2].url = "required"
* rest[serverSlice].resource[DocumentReferenceSlice].extension[0].extension[2].valueString = "encounter"
* rest[serverSlice].resource[DocumentReferenceSlice].extension[0].extension[3].url = "required"
* rest[serverSlice].resource[DocumentReferenceSlice].extension[0].extension[3].valueString = "code"

* rest[serverSlice].resource[FamilyMemberHistorySlice].type = #FamilyMemberHistory

* rest[serverSlice].resource[FamilyMemberHistorySlice].interaction[0].code = #search-type
* rest[serverSlice].resource[FamilyMemberHistorySlice].interaction[0].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest[serverSlice].resource[FamilyMemberHistorySlice].interaction[0].extension.valueCode = #SHOULD

* rest[serverSlice].resource[FamilyMemberHistorySlice].searchParam[0].name = "_id"
* rest[serverSlice].resource[FamilyMemberHistorySlice].searchParam[0].type = #reference
* rest[serverSlice].resource[FamilyMemberHistorySlice].searchParam[0].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest[serverSlice].resource[FamilyMemberHistorySlice].searchParam[0].extension.valueCode = #SHALL

* rest[serverSlice].resource[FamilyMemberHistorySlice].searchParam[1].name = "patient"
* rest[serverSlice].resource[FamilyMemberHistorySlice].searchParam[1].type = #reference
* rest[serverSlice].resource[FamilyMemberHistorySlice].searchParam[1].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest[serverSlice].resource[FamilyMemberHistorySlice].searchParam[1].extension.valueCode = #SHALL

* rest[serverSlice].resource[FamilyMemberHistorySlice].searchParam[2].name = "encounter"
* rest[serverSlice].resource[FamilyMemberHistorySlice].searchParam[2].type = #reference
* rest[serverSlice].resource[FamilyMemberHistorySlice].searchParam[2].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest[serverSlice].resource[FamilyMemberHistorySlice].searchParam[2].extension.valueCode = #SHALL

* rest[serverSlice].resource[FamilyMemberHistorySlice].searchParam[3].name = "code"
* rest[serverSlice].resource[FamilyMemberHistorySlice].searchParam[3].type = #token
* rest[serverSlice].resource[FamilyMemberHistorySlice].searchParam[3].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest[serverSlice].resource[FamilyMemberHistorySlice].searchParam[3].extension.valueCode = #SHALL

* rest[serverSlice].resource[FamilyMemberHistorySlice].extension[0].url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-search-parameter-combination"
* rest[serverSlice].resource[FamilyMemberHistorySlice].extension[0].extension[0].url = "required"
* rest[serverSlice].resource[FamilyMemberHistorySlice].extension[0].extension[0].valueString = "_id"
* rest[serverSlice].resource[FamilyMemberHistorySlice].extension[0].extension[1].url = "required"
* rest[serverSlice].resource[FamilyMemberHistorySlice].extension[0].extension[1].valueString = "patient"
* rest[serverSlice].resource[FamilyMemberHistorySlice].extension[0].extension[2].url = "required"
* rest[serverSlice].resource[FamilyMemberHistorySlice].extension[0].extension[2].valueString = "encounter"
* rest[serverSlice].resource[FamilyMemberHistorySlice].extension[0].extension[3].url = "required"
* rest[serverSlice].resource[FamilyMemberHistorySlice].extension[0].extension[3].valueString = "code"

* rest[serverSlice].resource[MedicationAdministrationSlice].type = #MedicationAdministration

* rest[serverSlice].resource[MedicationAdministrationSlice].interaction[0].code = #search-type
* rest[serverSlice].resource[MedicationAdministrationSlice].interaction[0].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest[serverSlice].resource[MedicationAdministrationSlice].interaction[0].extension.valueCode = #SHOULD

* rest[serverSlice].resource[MedicationAdministrationSlice].searchParam[0].name = "_id"
* rest[serverSlice].resource[MedicationAdministrationSlice].searchParam[0].type = #reference
* rest[serverSlice].resource[MedicationAdministrationSlice].searchParam[0].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest[serverSlice].resource[MedicationAdministrationSlice].searchParam[0].extension.valueCode = #SHALL

* rest[serverSlice].resource[MedicationAdministrationSlice].searchParam[1].name = "patient"
* rest[serverSlice].resource[MedicationAdministrationSlice].searchParam[1].type = #reference
* rest[serverSlice].resource[MedicationAdministrationSlice].searchParam[1].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest[serverSlice].resource[MedicationAdministrationSlice].searchParam[1].extension.valueCode = #SHALL

* rest[serverSlice].resource[MedicationAdministrationSlice].searchParam[2].name = "encounter"
* rest[serverSlice].resource[MedicationAdministrationSlice].searchParam[2].type = #reference
* rest[serverSlice].resource[MedicationAdministrationSlice].searchParam[2].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest[serverSlice].resource[MedicationAdministrationSlice].searchParam[2].extension.valueCode = #SHALL

* rest[serverSlice].resource[MedicationAdministrationSlice].searchParam[3].name = "code"
* rest[serverSlice].resource[MedicationAdministrationSlice].searchParam[3].type = #token
* rest[serverSlice].resource[MedicationAdministrationSlice].searchParam[3].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest[serverSlice].resource[MedicationAdministrationSlice].searchParam[3].extension.valueCode = #SHALL

* rest[serverSlice].resource[MedicationAdministrationSlice].extension[0].url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-search-parameter-combination"
* rest[serverSlice].resource[MedicationAdministrationSlice].extension[0].extension[0].url = "required"
* rest[serverSlice].resource[MedicationAdministrationSlice].extension[0].extension[0].valueString = "_id"
* rest[serverSlice].resource[MedicationAdministrationSlice].extension[0].extension[1].url = "required"
* rest[serverSlice].resource[MedicationAdministrationSlice].extension[0].extension[1].valueString = "patient"
* rest[serverSlice].resource[MedicationAdministrationSlice].extension[0].extension[2].url = "required"
* rest[serverSlice].resource[MedicationAdministrationSlice].extension[0].extension[2].valueString = "encounter"
* rest[serverSlice].resource[MedicationAdministrationSlice].extension[0].extension[3].url = "required"
* rest[serverSlice].resource[MedicationAdministrationSlice].extension[0].extension[3].valueString = "code"

* rest[serverSlice].resource[MedicationDispenseSlice].type = #MedicationDispense

* rest[serverSlice].resource[MedicationDispenseSlice].interaction[0].code = #search-type
* rest[serverSlice].resource[MedicationDispenseSlice].interaction[0].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest[serverSlice].resource[MedicationDispenseSlice].interaction[0].extension.valueCode = #SHOULD

* rest[serverSlice].resource[MedicationDispenseSlice].searchParam[0].name = "_id"
* rest[serverSlice].resource[MedicationDispenseSlice].searchParam[0].type = #reference
* rest[serverSlice].resource[MedicationDispenseSlice].searchParam[0].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest[serverSlice].resource[MedicationDispenseSlice].searchParam[0].extension.valueCode = #SHALL

* rest[serverSlice].resource[MedicationDispenseSlice].searchParam[1].name = "patient"
* rest[serverSlice].resource[MedicationDispenseSlice].searchParam[1].type = #reference
* rest[serverSlice].resource[MedicationDispenseSlice].searchParam[1].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest[serverSlice].resource[MedicationDispenseSlice].searchParam[1].extension.valueCode = #SHALL

* rest[serverSlice].resource[MedicationDispenseSlice].searchParam[2].name = "encounter"
* rest[serverSlice].resource[MedicationDispenseSlice].searchParam[2].type = #reference
* rest[serverSlice].resource[MedicationDispenseSlice].searchParam[2].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest[serverSlice].resource[MedicationDispenseSlice].searchParam[2].extension.valueCode = #SHALL

* rest[serverSlice].resource[MedicationDispenseSlice].searchParam[3].name = "code"
* rest[serverSlice].resource[MedicationDispenseSlice].searchParam[3].type = #token
* rest[serverSlice].resource[MedicationDispenseSlice].searchParam[3].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest[serverSlice].resource[MedicationDispenseSlice].searchParam[3].extension.valueCode = #SHALL

* rest[serverSlice].resource[MedicationDispenseSlice].extension[0].url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-search-parameter-combination"
* rest[serverSlice].resource[MedicationDispenseSlice].extension[0].extension[0].url = "required"
* rest[serverSlice].resource[MedicationDispenseSlice].extension[0].extension[0].valueString = "_id"
* rest[serverSlice].resource[MedicationDispenseSlice].extension[0].extension[1].url = "required"
* rest[serverSlice].resource[MedicationDispenseSlice].extension[0].extension[1].valueString = "patient"
* rest[serverSlice].resource[MedicationDispenseSlice].extension[0].extension[2].url = "required"
* rest[serverSlice].resource[MedicationDispenseSlice].extension[0].extension[2].valueString = "encounter"
* rest[serverSlice].resource[MedicationDispenseSlice].extension[0].extension[3].url = "required"
* rest[serverSlice].resource[MedicationDispenseSlice].extension[0].extension[3].valueString = "code"

* rest[serverSlice].resource[MedicationStatementSlice].type = #MedicationStatement

* rest[serverSlice].resource[MedicationStatementSlice].interaction[0].code = #search-type
* rest[serverSlice].resource[MedicationStatementSlice].interaction[0].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest[serverSlice].resource[MedicationStatementSlice].interaction[0].extension.valueCode = #SHOULD

* rest[serverSlice].resource[MedicationStatementSlice].searchParam[0].name = "_id"
* rest[serverSlice].resource[MedicationStatementSlice].searchParam[0].type = #reference
* rest[serverSlice].resource[MedicationStatementSlice].searchParam[0].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest[serverSlice].resource[MedicationStatementSlice].searchParam[0].extension.valueCode = #SHALL

* rest[serverSlice].resource[MedicationStatementSlice].searchParam[1].name = "patient"
* rest[serverSlice].resource[MedicationStatementSlice].searchParam[1].type = #reference
* rest[serverSlice].resource[MedicationStatementSlice].searchParam[1].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest[serverSlice].resource[MedicationStatementSlice].searchParam[1].extension.valueCode = #SHALL

* rest[serverSlice].resource[MedicationStatementSlice].searchParam[2].name = "encounter"
* rest[serverSlice].resource[MedicationStatementSlice].searchParam[2].type = #reference
* rest[serverSlice].resource[MedicationStatementSlice].searchParam[2].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest[serverSlice].resource[MedicationStatementSlice].searchParam[2].extension.valueCode = #SHALL

* rest[serverSlice].resource[MedicationStatementSlice].searchParam[3].name = "code"
* rest[serverSlice].resource[MedicationStatementSlice].searchParam[3].type = #token
* rest[serverSlice].resource[MedicationStatementSlice].searchParam[3].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest[serverSlice].resource[MedicationStatementSlice].searchParam[3].extension.valueCode = #SHALL

* rest[serverSlice].resource[MedicationStatementSlice].extension[0].url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-search-parameter-combination"
* rest[serverSlice].resource[MedicationStatementSlice].extension[0].extension[0].url = "required"
* rest[serverSlice].resource[MedicationStatementSlice].extension[0].extension[0].valueString = "_id"
* rest[serverSlice].resource[MedicationStatementSlice].extension[0].extension[1].url = "required"
* rest[serverSlice].resource[MedicationStatementSlice].extension[0].extension[1].valueString = "patient"
* rest[serverSlice].resource[MedicationStatementSlice].extension[0].extension[2].url = "required"
* rest[serverSlice].resource[MedicationStatementSlice].extension[0].extension[2].valueString = "encounter"
* rest[serverSlice].resource[MedicationStatementSlice].extension[0].extension[3].url = "required"
* rest[serverSlice].resource[MedicationStatementSlice].extension[0].extension[3].valueString = "code"
* text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\"><h2 id=\"title\">Data Source.</h2><ul><li><b>Official URL:</b><code>http://hl7.org/fhir/uv/saner/CapabilityStatement/DataSource</code></li><li><b>Implementation Guide Version:</b> 1.0.1</li><li><b>FHIR Version:</b> 4.0.1</li><li><b>Intended Use:</b> Requirements</li><li><b>Supported Formats:</b>\n\t\t\t\t\n                    XML, JSON\n\t\t\t\t\n\t\t\t\t</li><li><b>Published:</b> 2021-07-26</li><li><b>Published by:</b> HL7 International Public Health Workgroup</li><li><b>Status:</b> Draft (experimental)</li></ul><p>Defines the requirements for the Data Source.</p><!-- REST Behavior --><h3 id=\"behavior\">FHIR Server RESTful Capabilities</h3><h3 class=\"no_toc\" id=\"resource--details\">RESTful Capabilities by Resource/Profile:</h3><p><strong>Summary</strong></p><table class=\"grid\"><thead><tr><th>Resource Type</th><th>Supported Interactions</th><th>Supported Profiles</th><th>Supported Searches</th><th>Supported <code>_includes</code></th><th>Supported <code>_revincludes</code></th><th>Supported Operations</th></tr></thead><tbody><tr><td><a href=\"#patient\">Patient</a></td><td>\n\t\t\t\t\t\t\t\t\t\t\n\t\t\t\t\t\t\t\t\t\t\tsearch-type\n\t\t\t\t\t\t\t\t\t\t\t\n\t\t\t\t\t\t\t\t\t\t\n\t\t\t\t\t\t\t\t\t</td><!-- Supported Profiles --><td>\n\t\t\t\t\t\t\t\t\t\t\n\t\t\t\t\t\t\t\t\t</td><!-- Supported Searches --><td>\n\t\t\t\t\t\t\t\t\t\t_id, date, class, _id, _id+class+date\n\t\t\t\t\t\t\t\t\t\t\n\t\t\t\t\t\t\t\t\t\t\n\t\t\t\t\t\t\t\t\t</td><!-- Supported _includes --><td>\n\t\t\t\t\t\t\t\t\t\t\n\t\t\t\t\t\t\t\t\t</td><!-- Supported _revincludes --><td>\n\t\t\t\t\t\t\t\t\t\t\n\t\t\t\t\t\t\t\t\t</td><!-- Supported Operations --><td>\n\t\t\t\t\t\t\t\t\t\t\n\t\t\t\t\t\t\t\t\t</td></tr><tr><td><a href=\"#encounter\">Encounter</a></td><td>\n\t\t\t\t\t\t\t\t\t\t\n\t\t\t\t\t\t\t\t\t\t\tsearch-type\n\t\t\t\t\t\t\t\t\t\t\t\n\t\t\t\t\t\t\t\t\t\t\n\t\t\t\t\t\t\t\t\t</td><!-- Supported Profiles --><td>\n\t\t\t\t\t\t\t\t\t\t\n\t\t\t\t\t\t\t\t\t</td><!-- Supported Searches --><td>\n\t\t\t\t\t\t\t\t\t\t_id, date, class, patient, encounter, code, _id, _id+class+date, _id+patient+encounter+code\n\t\t\t\t\t\t\t\t\t\t\n\t\t\t\t\t\t\t\t\t\t\n\t\t\t\t\t\t\t\t\t</td><!-- Supported _includes --><td>\n\t\t\t\t\t\t\t\t\t\t\n\t\t\t\t\t\t\t\t\t</td><!-- Supported _revincludes --><td>\n\t\t\t\t\t\t\t\t\t\t\n\t\t\t\t\t\t\t\t\t</td><!-- Supported Operations --><td>\n\t\t\t\t\t\t\t\t\t\t\n\t\t\t\t\t\t\t\t\t</td></tr><tr><td><a href=\"#allergyintolerance\">AllergyIntolerance</a></td><td>\n\t\t\t\t\t\t\t\t\t\t\n\t\t\t\t\t\t\t\t\t\t\tsearch-type\n\t\t\t\t\t\t\t\t\t\t\t\n\t\t\t\t\t\t\t\t\t\t\n\t\t\t\t\t\t\t\t\t</td><!-- Supported Profiles --><td>\n\t\t\t\t\t\t\t\t\t\t\n\t\t\t\t\t\t\t\t\t</td><!-- Supported Searches --><td>\n\t\t\t\t\t\t\t\t\t\t_id, patient, encounter, code, _id+patient+encounter+code\n\t\t\t\t\t\t\t\t\t\t\n\t\t\t\t\t\t\t\t\t\t\n\t\t\t\t\t\t\t\t\t</td><!-- Supported _includes --><td>\n\t\t\t\t\t\t\t\t\t\t\n\t\t\t\t\t\t\t\t\t</td><!-- Supported _revincludes --><td>\n\t\t\t\t\t\t\t\t\t\t\n\t\t\t\t\t\t\t\t\t</td><!-- Supported Operations --><td>\n\t\t\t\t\t\t\t\t\t\t\n\t\t\t\t\t\t\t\t\t</td></tr><tr><td><a href=\"#condition\">Condition</a></td><td>\n\t\t\t\t\t\t\t\t\t\t\n\t\t\t\t\t\t\t\t\t\t\tsearch-type\n\t\t\t\t\t\t\t\t\t\t\t\n\t\t\t\t\t\t\t\t\t\t\n\t\t\t\t\t\t\t\t\t</td><!-- Supported Profiles --><td>\n\t\t\t\t\t\t\t\t\t\t\n\t\t\t\t\t\t\t\t\t</td><!-- Supported Searches --><td>\n\t\t\t\t\t\t\t\t\t\t_id, patient, encounter, code, _id+patient+encounter+code\n\t\t\t\t\t\t\t\t\t\t\n\t\t\t\t\t\t\t\t\t\t\n\t\t\t\t\t\t\t\t\t</td><!-- Supported _includes --><td>\n\t\t\t\t\t\t\t\t\t\t\n\t\t\t\t\t\t\t\t\t</td><!-- Supported _revincludes --><td>\n\t\t\t\t\t\t\t\t\t\t\n\t\t\t\t\t\t\t\t\t</td><!-- Supported Operations --><td>\n\t\t\t\t\t\t\t\t\t\t\n\t\t\t\t\t\t\t\t\t</td></tr><tr><td><a href=\"#diagnosticreport\">DiagnosticReport</a></td><td>\n\t\t\t\t\t\t\t\t\t\t\n\t\t\t\t\t\t\t\t\t\t\tsearch-type\n\t\t\t\t\t\t\t\t\t\t\t\n\t\t\t\t\t\t\t\t\t\t\n\t\t\t\t\t\t\t\t\t</td><!-- Supported Profiles --><td>\n\t\t\t\t\t\t\t\t\t\t\n\t\t\t\t\t\t\t\t\t</td><!-- Supported Searches --><td>\n\t\t\t\t\t\t\t\t\t\t_id, patient, encounter, code, _id+patient+encounter+code\n\t\t\t\t\t\t\t\t\t\t\n\t\t\t\t\t\t\t\t\t\t\n\t\t\t\t\t\t\t\t\t</td><!-- Supported _includes --><td>\n\t\t\t\t\t\t\t\t\t\t\n\t\t\t\t\t\t\t\t\t</td><!-- Supported _revincludes --><td>\n\t\t\t\t\t\t\t\t\t\t\n\t\t\t\t\t\t\t\t\t</td><!-- Supported Operations --><td>\n\t\t\t\t\t\t\t\t\t\t\n\t\t\t\t\t\t\t\t\t</td></tr><tr><td><a href=\"#medicationrequest\">MedicationRequest</a></td><td>\n\t\t\t\t\t\t\t\t\t\t\n\t\t\t\t\t\t\t\t\t\t\tsearch-type\n\t\t\t\t\t\t\t\t\t\t\t\n\t\t\t\t\t\t\t\t\t\t\n\t\t\t\t\t\t\t\t\t</td><!-- Supported Profiles --><td>\n\t\t\t\t\t\t\t\t\t\t\n\t\t\t\t\t\t\t\t\t</td><!-- Supported Searches --><td>\n\t\t\t\t\t\t\t\t\t\t_id, patient, encounter, code, _id+patient+encounter+code\n\t\t\t\t\t\t\t\t\t\t\n\t\t\t\t\t\t\t\t\t\t\n\t\t\t\t\t\t\t\t\t</td><!-- Supported _includes --><td>\n\t\t\t\t\t\t\t\t\t\t\n\t\t\t\t\t\t\t\t\t</td><!-- Supported _revincludes --><td>\n\t\t\t\t\t\t\t\t\t\t\n\t\t\t\t\t\t\t\t\t</td><!-- Supported Operations --><td>\n\t\t\t\t\t\t\t\t\t\t\n\t\t\t\t\t\t\t\t\t</td></tr><tr><td><a href=\"#observation\">Observation</a></td><td>\n\t\t\t\t\t\t\t\t\t\t\n\t\t\t\t\t\t\t\t\t\t\tsearch-type\n\t\t\t\t\t\t\t\t\t\t\t\n\t\t\t\t\t\t\t\t\t\t\n\t\t\t\t\t\t\t\t\t</td><!-- Supported Profiles --><td>\n\t\t\t\t\t\t\t\t\t\t\n\t\t\t\t\t\t\t\t\t</td><!-- Supported Searches --><td>\n\t\t\t\t\t\t\t\t\t\t_id, patient, encounter, code, _id+patient+encounter+code\n\t\t\t\t\t\t\t\t\t\t\n\t\t\t\t\t\t\t\t\t\t\n\t\t\t\t\t\t\t\t\t</td><!-- Supported _includes --><td>\n\t\t\t\t\t\t\t\t\t\t\n\t\t\t\t\t\t\t\t\t</td><!-- Supported _revincludes --><td>\n\t\t\t\t\t\t\t\t\t\t\n\t\t\t\t\t\t\t\t\t</td><!-- Supported Operations --><td>\n\t\t\t\t\t\t\t\t\t\t\n\t\t\t\t\t\t\t\t\t</td></tr><tr><td><a href=\"#procedure\">Procedure</a></td><td>\n\t\t\t\t\t\t\t\t\t\t\n\t\t\t\t\t\t\t\t\t\t\tsearch-type\n\t\t\t\t\t\t\t\t\t\t\t\n\t\t\t\t\t\t\t\t\t\t\n\t\t\t\t\t\t\t\t\t</td><!-- Supported Profiles --><td>\n\t\t\t\t\t\t\t\t\t\t\n\t\t\t\t\t\t\t\t\t</td><!-- Supported Searches --><td>\n\t\t\t\t\t\t\t\t\t\t_id, patient, encounter, code, _id+patient+encounter+code\n\t\t\t\t\t\t\t\t\t\t\n\t\t\t\t\t\t\t\t\t\t\n\t\t\t\t\t\t\t\t\t</td><!-- Supported _includes --><td>\n\t\t\t\t\t\t\t\t\t\t\n\t\t\t\t\t\t\t\t\t</td><!-- Supported _revincludes --><td>\n\t\t\t\t\t\t\t\t\t\t\n\t\t\t\t\t\t\t\t\t</td><!-- Supported Operations --><td>\n\t\t\t\t\t\t\t\t\t\t\n\t\t\t\t\t\t\t\t\t</td></tr><tr><td><a href=\"#servicerequest\">ServiceRequest</a></td><td>\n\t\t\t\t\t\t\t\t\t\t\n\t\t\t\t\t\t\t\t\t\t\tsearch-type\n\t\t\t\t\t\t\t\t\t\t\t\n\t\t\t\t\t\t\t\t\t\t\n\t\t\t\t\t\t\t\t\t</td><!-- Supported Profiles --><td>\n\t\t\t\t\t\t\t\t\t\t\n\t\t\t\t\t\t\t\t\t</td><!-- Supported Searches --><td>\n\t\t\t\t\t\t\t\t\t\t_id, patient, encounter, code, _id+patient+encounter+code\n\t\t\t\t\t\t\t\t\t\t\n\t\t\t\t\t\t\t\t\t\t\n\t\t\t\t\t\t\t\t\t</td><!-- Supported _includes --><td>\n\t\t\t\t\t\t\t\t\t\t\n\t\t\t\t\t\t\t\t\t</td><!-- Supported _revincludes --><td>\n\t\t\t\t\t\t\t\t\t\t\n\t\t\t\t\t\t\t\t\t</td><!-- Supported Operations --><td>\n\t\t\t\t\t\t\t\t\t\t\n\t\t\t\t\t\t\t\t\t</td></tr><tr><td><a href=\"#documentreference\">DocumentReference</a></td><td>\n\t\t\t\t\t\t\t\t\t\t\n\t\t\t\t\t\t\t\t\t\t\tsearch-type\n\t\t\t\t\t\t\t\t\t\t\t\n\t\t\t\t\t\t\t\t\t\t\n\t\t\t\t\t\t\t\t\t</td><!-- Supported Profiles --><td>\n\t\t\t\t\t\t\t\t\t\t\n\t\t\t\t\t\t\t\t\t</td><!-- Supported Searches --><td>\n\t\t\t\t\t\t\t\t\t\t_id, patient, encounter, code, _id+patient+encounter+code\n\t\t\t\t\t\t\t\t\t\t\n\t\t\t\t\t\t\t\t\t\t\n\t\t\t\t\t\t\t\t\t</td><!-- Supported _includes --><td>\n\t\t\t\t\t\t\t\t\t\t\n\t\t\t\t\t\t\t\t\t</td><!-- Supported _revincludes --><td>\n\t\t\t\t\t\t\t\t\t\t\n\t\t\t\t\t\t\t\t\t</td><!-- Supported Operations --><td>\n\t\t\t\t\t\t\t\t\t\t\n\t\t\t\t\t\t\t\t\t</td></tr><tr><td><a href=\"#familymemberhistory\">FamilyMemberHistory</a></td><td>\n\t\t\t\t\t\t\t\t\t\t\n\t\t\t\t\t\t\t\t\t\t\tsearch-type\n\t\t\t\t\t\t\t\t\t\t\t\n\t\t\t\t\t\t\t\t\t\t\n\t\t\t\t\t\t\t\t\t</td><!-- Supported Profiles --><td>\n\t\t\t\t\t\t\t\t\t\t\n\t\t\t\t\t\t\t\t\t</td><!-- Supported Searches --><td>\n\t\t\t\t\t\t\t\t\t\t_id, patient, encounter, code, _id+patient+encounter+code\n\t\t\t\t\t\t\t\t\t\t\n\t\t\t\t\t\t\t\t\t\t\n\t\t\t\t\t\t\t\t\t</td><!-- Supported _includes --><td>\n\t\t\t\t\t\t\t\t\t\t\n\t\t\t\t\t\t\t\t\t</td><!-- Supported _revincludes --><td>\n\t\t\t\t\t\t\t\t\t\t\n\t\t\t\t\t\t\t\t\t</td><!-- Supported Operations --><td>\n\t\t\t\t\t\t\t\t\t\t\n\t\t\t\t\t\t\t\t\t</td></tr><tr><td><a href=\"#medicationadministration\">MedicationAdministration</a></td><td>\n\t\t\t\t\t\t\t\t\t\t\n\t\t\t\t\t\t\t\t\t\t\tsearch-type\n\t\t\t\t\t\t\t\t\t\t\t\n\t\t\t\t\t\t\t\t\t\t\n\t\t\t\t\t\t\t\t\t</td><!-- Supported Profiles --><td>\n\t\t\t\t\t\t\t\t\t\t\n\t\t\t\t\t\t\t\t\t</td><!-- Supported Searches --><td>\n\t\t\t\t\t\t\t\t\t\t_id, patient, encounter, code, _id+patient+encounter+code\n\t\t\t\t\t\t\t\t\t\t\n\t\t\t\t\t\t\t\t\t\t\n\t\t\t\t\t\t\t\t\t</td><!-- Supported _includes --><td>\n\t\t\t\t\t\t\t\t\t\t\n\t\t\t\t\t\t\t\t\t</td><!-- Supported _revincludes --><td>\n\t\t\t\t\t\t\t\t\t\t\n\t\t\t\t\t\t\t\t\t</td><!-- Supported Operations --><td>\n\t\t\t\t\t\t\t\t\t\t\n\t\t\t\t\t\t\t\t\t</td></tr><tr><td><a href=\"#medicationdispense\">MedicationDispense</a></td><td>\n\t\t\t\t\t\t\t\t\t\t\n\t\t\t\t\t\t\t\t\t\t\tsearch-type\n\t\t\t\t\t\t\t\t\t\t\t\n\t\t\t\t\t\t\t\t\t\t\n\t\t\t\t\t\t\t\t\t</td><!-- Supported Profiles --><td>\n\t\t\t\t\t\t\t\t\t\t\n\t\t\t\t\t\t\t\t\t</td><!-- Supported Searches --><td>\n\t\t\t\t\t\t\t\t\t\t_id, patient, encounter, code, _id+patient+encounter+code\n\t\t\t\t\t\t\t\t\t\t\n\t\t\t\t\t\t\t\t\t\t\n\t\t\t\t\t\t\t\t\t</td><!-- Supported _includes --><td>\n\t\t\t\t\t\t\t\t\t\t\n\t\t\t\t\t\t\t\t\t</td><!-- Supported _revincludes --><td>\n\t\t\t\t\t\t\t\t\t\t\n\t\t\t\t\t\t\t\t\t</td><!-- Supported Operations --><td>\n\t\t\t\t\t\t\t\t\t\t\n\t\t\t\t\t\t\t\t\t</td></tr><tr><td><a href=\"#medicationstatement\">MedicationStatement</a></td><td>\n\t\t\t\t\t\t\t\t\t\t\n\t\t\t\t\t\t\t\t\t\t\tsearch-type\n\t\t\t\t\t\t\t\t\t\t\t\n\t\t\t\t\t\t\t\t\t\t\n\t\t\t\t\t\t\t\t\t</td><!-- Supported Profiles --><td>\n\t\t\t\t\t\t\t\t\t\t\n\t\t\t\t\t\t\t\t\t</td><!-- Supported Searches --><td>\n\t\t\t\t\t\t\t\t\t\t_id, patient, encounter, code, _id+patient+encounter+code\n\t\t\t\t\t\t\t\t\t\t\n\t\t\t\t\t\t\t\t\t\t\n\t\t\t\t\t\t\t\t\t</td><!-- Supported _includes --><td>\n\t\t\t\t\t\t\t\t\t\t\n\t\t\t\t\t\t\t\t\t</td><!-- Supported _revincludes --><td>\n\t\t\t\t\t\t\t\t\t\t\n\t\t\t\t\t\t\t\t\t</td><!-- Supported Operations --><td>\n\t\t\t\t\t\t\t\t\t\t\n\t\t\t\t\t\t\t\t\t</td></tr></tbody></table><!-- Resource Details --><h4 class=\"no_toc\" id=\"patient\">Patient</h4><p>Conformance Expectation:\t<strong>None</strong></p><p>Profile Interaction Summary:</p><ul><li><strong>SHALL</strong> support \n\t\t\t\t\t\t\t\t\t\t\t<code>search-type</code>.</li></ul><p>Fetch and Search Criteria:</p><ul><li>\n\t\t\t\t\t\t\t\t\t\t\t\tA Server <strong>SHALL</strong> be capable of returning resources matching a search query using:\n\t\t\t\t\t\t\t\t\t\t\t\t<code class=\"highlighter-rouge\">GET [base]/Patient/[id]{?[parameters]{&amp;_format=[mime-type]}}</code>\n\t\t\t\t\t\t\t\t\t\t\t</li></ul><!-- Only included search parameters that are not MAY or there is no conformance requirement included --><p>Search Parameter Summary:</p><table class=\"grid\"><thead><tr><th>Conformance</th><th>Parameter</th><th>Type</th><th>Example</th></tr></thead><tbody><tr><td><strong>SHALL</strong></td><td><a href=\"http://hl7.org/fhir/R4/search.html#id\">\n\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t_id</a></td><td>\n\t\t\t\t\t\t\t\t\t\t\t\t\t\t\treference\n\t\t\t\t\t\t\t\t\t\t\t\t\t\t</td><td><code class=\"highlighter-rouge\">GET [base]/Patient?_id=[id]</code></td></tr><tr><td><strong>SHALL</strong></td><td><a href=\"http://hl7.org/fhir/R4/patient.html#search\">\n\t\t\t\t\t\t\t\t\t\t\t\t\t\t\tdate</a></td><td>\n\t\t\t\t\t\t\t\t\t\t\t\t\t\t\tdate\n\t\t\t\t\t\t\t\t\t\t\t\t\t\t</td><td><code class=\"highlighter-rouge\">GET [base]/Patient?date=[date]</code></td></tr><tr><td><strong>SHALL</strong></td><td><a href=\"http://hl7.org/fhir/R4/patient.html#search\">\n\t\t\t\t\t\t\t\t\t\t\t\t\t\t\tclass</a></td><td>\n\t\t\t\t\t\t\t\t\t\t\t\t\t\t\treference\n\t\t\t\t\t\t\t\t\t\t\t\t\t\t</td><td><code class=\"highlighter-rouge\">GET [base]/Patient?class=[type]/[id]</code></td></tr></tbody></table><p>Search Parameter Combination Summary:</p><table class=\"grid\"><thead><tr><th>Conformance</th><th>Parameter Combination</th><th>Types</th><th>Example</th></tr></thead><tbody><tr><td>\n\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t</td><td><a href=\"http://hl7.org/fhir/R4/search.html#id\">_id</a></td><td>reference\n\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t</td><td><code class=\"highlighter-rouge\">GET [base]/Patient?_id=[id]</code></td></tr><tr><td>\n\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t</td><td><a href=\"http://hl7.org/fhir/R4/search.html#id\">_id</a>+\n\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t<a href=\"http://hl7.org/fhir/R4/class.html#search\">class</a>+\n\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t<a href=\"http://hl7.org/fhir/R4/date.html#search\">date</a></td><td>reference+reference+date\n\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t</td><td><code class=\"highlighter-rouge\">GET [base]/Patient?_id=[id]&amp;class=[type]/[id]&amp;date=[date]</code></td></tr></tbody></table><h4 class=\"no_toc\" id=\"encounter\">Encounter</h4><p>Conformance Expectation:\t<strong>None</strong></p><p>Profile Interaction Summary:</p><ul><li><strong>SHALL</strong> support \n\t\t\t\t\t\t\t\t\t\t\t<code>search-type</code>.</li></ul><p>Fetch and Search Criteria:</p><ul><li>\n\t\t\t\t\t\t\t\t\t\t\t\tA Server <strong>SHALL</strong> be capable of returning resources matching a search query using:\n\t\t\t\t\t\t\t\t\t\t\t\t<code class=\"highlighter-rouge\">GET [base]/Encounter/[id]{?[parameters]{&amp;_format=[mime-type]}}</code>\n\t\t\t\t\t\t\t\t\t\t\t</li></ul><!-- Only included search parameters that are not MAY or there is no conformance requirement included --><p>Search Parameter Summary:</p><table class=\"grid\"><thead><tr><th>Conformance</th><th>Parameter</th><th>Type</th><th>Example</th></tr></thead><tbody><tr><td><strong>SHALL</strong></td><td><a href=\"http://hl7.org/fhir/R4/search.html#id\">\n\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t_id</a></td><td>\n\t\t\t\t\t\t\t\t\t\t\t\t\t\t\treference\n\t\t\t\t\t\t\t\t\t\t\t\t\t\t</td><td><code class=\"highlighter-rouge\">GET [base]/Encounter?_id=[id]</code></td></tr><tr><td><strong>SHALL</strong></td><td><a href=\"http://hl7.org/fhir/R4/encounter.html#search\">\n\t\t\t\t\t\t\t\t\t\t\t\t\t\t\tdate</a></td><td>\n\t\t\t\t\t\t\t\t\t\t\t\t\t\t\tdate\n\t\t\t\t\t\t\t\t\t\t\t\t\t\t</td><td><code class=\"highlighter-rouge\">GET [base]/Encounter?date=[date]</code></td></tr><tr><td><strong>SHALL</strong></td><td><a href=\"http://hl7.org/fhir/R4/encounter.html#search\">\n\t\t\t\t\t\t\t\t\t\t\t\t\t\t\tclass</a></td><td>\n\t\t\t\t\t\t\t\t\t\t\t\t\t\t\treference\n\t\t\t\t\t\t\t\t\t\t\t\t\t\t</td><td><code class=\"highlighter-rouge\">GET [base]/Encounter?class=[type]/[id]</code></td></tr><tr><td><strong>SHALL</strong></td><td><a href=\"http://hl7.org/fhir/R4/encounter.html#search\">\n\t\t\t\t\t\t\t\t\t\t\t\t\t\t\tpatient</a></td><td>\n\t\t\t\t\t\t\t\t\t\t\t\t\t\t\treference\n\t\t\t\t\t\t\t\t\t\t\t\t\t\t</td><td><code class=\"highlighter-rouge\">GET [base]/Encounter?patient=[type]/[id]</code></td></tr><tr><td><strong>SHALL</strong></td><td><a href=\"http://hl7.org/fhir/R4/encounter.html#search\">\n\t\t\t\t\t\t\t\t\t\t\t\t\t\t\tencounter</a></td><td>\n\t\t\t\t\t\t\t\t\t\t\t\t\t\t\treference\n\t\t\t\t\t\t\t\t\t\t\t\t\t\t</td><td><code class=\"highlighter-rouge\">GET [base]/Encounter?encounter=[type]/[id]</code></td></tr><tr><td><strong>SHALL</strong></td><td><a href=\"http://hl7.org/fhir/R4/encounter.html#search\">\n\t\t\t\t\t\t\t\t\t\t\t\t\t\t\tcode</a></td><td>\n\t\t\t\t\t\t\t\t\t\t\t\t\t\t\ttoken\n\t\t\t\t\t\t\t\t\t\t\t\t\t\t</td><td><code class=\"highlighter-rouge\">GET [base]/Encounter?code=[system]|[code]</code></td></tr></tbody></table><p>Search Parameter Combination Summary:</p><table class=\"grid\"><thead><tr><th>Conformance</th><th>Parameter Combination</th><th>Types</th><th>Example</th></tr></thead><tbody><tr><td>\n\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t</td><td><a href=\"http://hl7.org/fhir/R4/search.html#id\">_id</a></td><td>reference\n\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t</td><td><code class=\"highlighter-rouge\">GET [base]/Encounter?_id=[id]</code></td></tr><tr><td>\n\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t</td><td><a href=\"http://hl7.org/fhir/R4/search.html#id\">_id</a>+\n\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t<a href=\"http://hl7.org/fhir/R4/class.html#search\">class</a>+\n\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t<a href=\"http://hl7.org/fhir/R4/date.html#search\">date</a></td><td>reference+reference+date\n\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t</td><td><code class=\"highlighter-rouge\">GET [base]/Encounter?_id=[id]&amp;class=[type]/[id]&amp;date=[date]</code></td></tr><tr><td>\n\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t</td><td><a href=\"http://hl7.org/fhir/R4/search.html#id\">_id</a>+\n\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t<a href=\"http://hl7.org/fhir/R4/patient.html#search\">patient</a>+\n\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t<a href=\"http://hl7.org/fhir/R4/encounter.html#search\">encounter</a>+\n\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t<a href=\"http://hl7.org/fhir/R4/code.html#search\">code</a></td><td>reference+reference+reference+token\n\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t</td><td><code class=\"highlighter-rouge\">GET [base]/Encounter?_id=[id]&amp;patient=[type]/[id]&amp;encounter=[type]/[id]&amp;code=[system]|[code]</code></td></tr></tbody></table><h4 class=\"no_toc\" id=\"allergyintolerance\">AllergyIntolerance</h4><p>Conformance Expectation:\t<strong>None</strong></p><p>Profile Interaction Summary:</p><ul><li><strong>SHALL</strong> support \n\t\t\t\t\t\t\t\t\t\t\t<code>search-type</code>.</li></ul><p>Fetch and Search Criteria:</p><ul><li>\n\t\t\t\t\t\t\t\t\t\t\t\tA Server <strong>SHALL</strong> be capable of returning resources matching a search query using:\n\t\t\t\t\t\t\t\t\t\t\t\t<code class=\"highlighter-rouge\">GET [base]/AllergyIntolerance/[id]{?[parameters]{&amp;_format=[mime-type]}}</code>\n\t\t\t\t\t\t\t\t\t\t\t</li></ul><!-- Only included search parameters that are not MAY or there is no conformance requirement included --><p>Search Parameter Summary:</p><table class=\"grid\"><thead><tr><th>Conformance</th><th>Parameter</th><th>Type</th><th>Example</th></tr></thead><tbody><tr><td><strong>SHALL</strong></td><td><a href=\"http://hl7.org/fhir/R4/search.html#id\">\n\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t_id</a></td><td>\n\t\t\t\t\t\t\t\t\t\t\t\t\t\t\treference\n\t\t\t\t\t\t\t\t\t\t\t\t\t\t</td><td><code class=\"highlighter-rouge\">GET [base]/AllergyIntolerance?_id=[id]</code></td></tr><tr><td><strong>SHALL</strong></td><td><a href=\"http://hl7.org/fhir/R4/allergyintolerance.html#search\">\n\t\t\t\t\t\t\t\t\t\t\t\t\t\t\tpatient</a></td><td>\n\t\t\t\t\t\t\t\t\t\t\t\t\t\t\treference\n\t\t\t\t\t\t\t\t\t\t\t\t\t\t</td><td><code class=\"highlighter-rouge\">GET [base]/AllergyIntolerance?patient=[type]/[id]</code></td></tr><tr><td><strong>SHALL</strong></td><td><a href=\"http://hl7.org/fhir/R4/allergyintolerance.html#search\">\n\t\t\t\t\t\t\t\t\t\t\t\t\t\t\tencounter</a></td><td>\n\t\t\t\t\t\t\t\t\t\t\t\t\t\t\treference\n\t\t\t\t\t\t\t\t\t\t\t\t\t\t</td><td><code class=\"highlighter-rouge\">GET [base]/AllergyIntolerance?encounter=[type]/[id]</code></td></tr><tr><td><strong>SHALL</strong></td><td><a href=\"http://hl7.org/fhir/R4/allergyintolerance.html#search\">\n\t\t\t\t\t\t\t\t\t\t\t\t\t\t\tcode</a></td><td>\n\t\t\t\t\t\t\t\t\t\t\t\t\t\t\ttoken\n\t\t\t\t\t\t\t\t\t\t\t\t\t\t</td><td><code class=\"highlighter-rouge\">GET [base]/AllergyIntolerance?code=[system]|[code]</code></td></tr></tbody></table><p>Search Parameter Combination Summary:</p><table class=\"grid\"><thead><tr><th>Conformance</th><th>Parameter Combination</th><th>Types</th><th>Example</th></tr></thead><tbody><tr><td>\n\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t</td><td><a href=\"http://hl7.org/fhir/R4/search.html#id\">_id</a>+\n\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t<a href=\"http://hl7.org/fhir/R4/patient.html#search\">patient</a>+\n\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t<a href=\"http://hl7.org/fhir/R4/encounter.html#search\">encounter</a>+\n\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t<a href=\"http://hl7.org/fhir/R4/code.html#search\">code</a></td><td>reference+reference+reference+token\n\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t</td><td><code class=\"highlighter-rouge\">GET [base]/AllergyIntolerance?_id=[id]&amp;patient=[type]/[id]&amp;encounter=[type]/[id]&amp;code=[system]|[code]</code></td></tr></tbody></table><h4 class=\"no_toc\" id=\"condition\">Condition</h4><p>Conformance Expectation:\t<strong>None</strong></p><p>Profile Interaction Summary:</p><ul><li><strong>SHALL</strong> support \n\t\t\t\t\t\t\t\t\t\t\t<code>search-type</code>.</li></ul><p>Fetch and Search Criteria:</p><ul><li>\n\t\t\t\t\t\t\t\t\t\t\t\tA Server <strong>SHALL</strong> be capable of returning resources matching a search query using:\n\t\t\t\t\t\t\t\t\t\t\t\t<code class=\"highlighter-rouge\">GET [base]/Condition/[id]{?[parameters]{&amp;_format=[mime-type]}}</code>\n\t\t\t\t\t\t\t\t\t\t\t</li></ul><!-- Only included search parameters that are not MAY or there is no conformance requirement included --><p>Search Parameter Summary:</p><table class=\"grid\"><thead><tr><th>Conformance</th><th>Parameter</th><th>Type</th><th>Example</th></tr></thead><tbody><tr><td><strong>SHALL</strong></td><td><a href=\"http://hl7.org/fhir/R4/search.html#id\">\n\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t_id</a></td><td>\n\t\t\t\t\t\t\t\t\t\t\t\t\t\t\treference\n\t\t\t\t\t\t\t\t\t\t\t\t\t\t</td><td><code class=\"highlighter-rouge\">GET [base]/Condition?_id=[id]</code></td></tr><tr><td><strong>SHALL</strong></td><td><a href=\"http://hl7.org/fhir/R4/condition.html#search\">\n\t\t\t\t\t\t\t\t\t\t\t\t\t\t\tpatient</a></td><td>\n\t\t\t\t\t\t\t\t\t\t\t\t\t\t\treference\n\t\t\t\t\t\t\t\t\t\t\t\t\t\t</td><td><code class=\"highlighter-rouge\">GET [base]/Condition?patient=[type]/[id]</code></td></tr><tr><td><strong>SHALL</strong></td><td><a href=\"http://hl7.org/fhir/R4/condition.html#search\">\n\t\t\t\t\t\t\t\t\t\t\t\t\t\t\tencounter</a></td><td>\n\t\t\t\t\t\t\t\t\t\t\t\t\t\t\treference\n\t\t\t\t\t\t\t\t\t\t\t\t\t\t</td><td><code class=\"highlighter-rouge\">GET [base]/Condition?encounter=[type]/[id]</code></td></tr><tr><td><strong>SHALL</strong></td><td><a href=\"http://hl7.org/fhir/R4/condition.html#search\">\n\t\t\t\t\t\t\t\t\t\t\t\t\t\t\tcode</a></td><td>\n\t\t\t\t\t\t\t\t\t\t\t\t\t\t\ttoken\n\t\t\t\t\t\t\t\t\t\t\t\t\t\t</td><td><code class=\"highlighter-rouge\">GET [base]/Condition?code=[system]|[code]</code></td></tr></tbody></table><p>Search Parameter Combination Summary:</p><table class=\"grid\"><thead><tr><th>Conformance</th><th>Parameter Combination</th><th>Types</th><th>Example</th></tr></thead><tbody><tr><td>\n\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t</td><td><a href=\"http://hl7.org/fhir/R4/search.html#id\">_id</a>+\n\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t<a href=\"http://hl7.org/fhir/R4/patient.html#search\">patient</a>+\n\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t<a href=\"http://hl7.org/fhir/R4/encounter.html#search\">encounter</a>+\n\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t<a href=\"http://hl7.org/fhir/R4/code.html#search\">code</a></td><td>reference+reference+reference+token\n\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t</td><td><code class=\"highlighter-rouge\">GET [base]/Condition?_id=[id]&amp;patient=[type]/[id]&amp;encounter=[type]/[id]&amp;code=[system]|[code]</code></td></tr></tbody></table><h4 class=\"no_toc\" id=\"diagnosticreport\">DiagnosticReport</h4><p>Conformance Expectation:\t<strong>None</strong></p><p>Profile Interaction Summary:</p><ul><li><strong>SHALL</strong> support \n\t\t\t\t\t\t\t\t\t\t\t<code>search-type</code>.</li></ul><p>Fetch and Search Criteria:</p><ul><li>\n\t\t\t\t\t\t\t\t\t\t\t\tA Server <strong>SHALL</strong> be capable of returning resources matching a search query using:\n\t\t\t\t\t\t\t\t\t\t\t\t<code class=\"highlighter-rouge\">GET [base]/DiagnosticReport/[id]{?[parameters]{&amp;_format=[mime-type]}}</code>\n\t\t\t\t\t\t\t\t\t\t\t</li></ul><!-- Only included search parameters that are not MAY or there is no conformance requirement included --><p>Search Parameter Summary:</p><table class=\"grid\"><thead><tr><th>Conformance</th><th>Parameter</th><th>Type</th><th>Example</th></tr></thead><tbody><tr><td><strong>SHALL</strong></td><td><a href=\"http://hl7.org/fhir/R4/search.html#id\">\n\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t_id</a></td><td>\n\t\t\t\t\t\t\t\t\t\t\t\t\t\t\treference\n\t\t\t\t\t\t\t\t\t\t\t\t\t\t</td><td><code class=\"highlighter-rouge\">GET [base]/DiagnosticReport?_id=[id]</code></td></tr><tr><td><strong>SHALL</strong></td><td><a href=\"http://hl7.org/fhir/R4/diagnosticreport.html#search\">\n\t\t\t\t\t\t\t\t\t\t\t\t\t\t\tpatient</a></td><td>\n\t\t\t\t\t\t\t\t\t\t\t\t\t\t\treference\n\t\t\t\t\t\t\t\t\t\t\t\t\t\t</td><td><code class=\"highlighter-rouge\">GET [base]/DiagnosticReport?patient=[type]/[id]</code></td></tr><tr><td><strong>SHALL</strong></td><td><a href=\"http://hl7.org/fhir/R4/diagnosticreport.html#search\">\n\t\t\t\t\t\t\t\t\t\t\t\t\t\t\tencounter</a></td><td>\n\t\t\t\t\t\t\t\t\t\t\t\t\t\t\treference\n\t\t\t\t\t\t\t\t\t\t\t\t\t\t</td><td><code class=\"highlighter-rouge\">GET [base]/DiagnosticReport?encounter=[type]/[id]</code></td></tr><tr><td><strong>SHALL</strong></td><td><a href=\"http://hl7.org/fhir/R4/diagnosticreport.html#search\">\n\t\t\t\t\t\t\t\t\t\t\t\t\t\t\tcode</a></td><td>\n\t\t\t\t\t\t\t\t\t\t\t\t\t\t\ttoken\n\t\t\t\t\t\t\t\t\t\t\t\t\t\t</td><td><code class=\"highlighter-rouge\">GET [base]/DiagnosticReport?code=[system]|[code]</code></td></tr></tbody></table><p>Search Parameter Combination Summary:</p><table class=\"grid\"><thead><tr><th>Conformance</th><th>Parameter Combination</th><th>Types</th><th>Example</th></tr></thead><tbody><tr><td>\n\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t</td><td><a href=\"http://hl7.org/fhir/R4/search.html#id\">_id</a>+\n\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t<a href=\"http://hl7.org/fhir/R4/patient.html#search\">patient</a>+\n\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t<a href=\"http://hl7.org/fhir/R4/encounter.html#search\">encounter</a>+\n\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t<a href=\"http://hl7.org/fhir/R4/code.html#search\">code</a></td><td>reference+reference+reference+token\n\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t</td><td><code class=\"highlighter-rouge\">GET [base]/DiagnosticReport?_id=[id]&amp;patient=[type]/[id]&amp;encounter=[type]/[id]&amp;code=[system]|[code]</code></td></tr></tbody></table><h4 class=\"no_toc\" id=\"medicationrequest\">MedicationRequest</h4><p>Conformance Expectation:\t<strong>None</strong></p><p>Profile Interaction Summary:</p><ul><li><strong>SHALL</strong> support \n\t\t\t\t\t\t\t\t\t\t\t<code>search-type</code>.</li></ul><p>Fetch and Search Criteria:</p><ul><li>\n\t\t\t\t\t\t\t\t\t\t\t\tA Server <strong>SHALL</strong> be capable of returning resources matching a search query using:\n\t\t\t\t\t\t\t\t\t\t\t\t<code class=\"highlighter-rouge\">GET [base]/MedicationRequest/[id]{?[parameters]{&amp;_format=[mime-type]}}</code>\n\t\t\t\t\t\t\t\t\t\t\t</li></ul><!-- Only included search parameters that are not MAY or there is no conformance requirement included --><p>Search Parameter Summary:</p><table class=\"grid\"><thead><tr><th>Conformance</th><th>Parameter</th><th>Type</th><th>Example</th></tr></thead><tbody><tr><td><strong>SHALL</strong></td><td><a href=\"http://hl7.org/fhir/R4/search.html#id\">\n\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t_id</a></td><td>\n\t\t\t\t\t\t\t\t\t\t\t\t\t\t\treference\n\t\t\t\t\t\t\t\t\t\t\t\t\t\t</td><td><code class=\"highlighter-rouge\">GET [base]/MedicationRequest?_id=[id]</code></td></tr><tr><td><strong>SHALL</strong></td><td><a href=\"http://hl7.org/fhir/R4/medicationrequest.html#search\">\n\t\t\t\t\t\t\t\t\t\t\t\t\t\t\tpatient</a></td><td>\n\t\t\t\t\t\t\t\t\t\t\t\t\t\t\treference\n\t\t\t\t\t\t\t\t\t\t\t\t\t\t</td><td><code class=\"highlighter-rouge\">GET [base]/MedicationRequest?patient=[type]/[id]</code></td></tr><tr><td><strong>SHALL</strong></td><td><a href=\"http://hl7.org/fhir/R4/medicationrequest.html#search\">\n\t\t\t\t\t\t\t\t\t\t\t\t\t\t\tencounter</a></td><td>\n\t\t\t\t\t\t\t\t\t\t\t\t\t\t\treference\n\t\t\t\t\t\t\t\t\t\t\t\t\t\t</td><td><code class=\"highlighter-rouge\">GET [base]/MedicationRequest?encounter=[type]/[id]</code></td></tr><tr><td><strong>SHALL</strong></td><td><a href=\"http://hl7.org/fhir/R4/medicationrequest.html#search\">\n\t\t\t\t\t\t\t\t\t\t\t\t\t\t\tcode</a></td><td>\n\t\t\t\t\t\t\t\t\t\t\t\t\t\t\ttoken\n\t\t\t\t\t\t\t\t\t\t\t\t\t\t</td><td><code class=\"highlighter-rouge\">GET [base]/MedicationRequest?code=[system]|[code]</code></td></tr></tbody></table><p>Search Parameter Combination Summary:</p><table class=\"grid\"><thead><tr><th>Conformance</th><th>Parameter Combination</th><th>Types</th><th>Example</th></tr></thead><tbody><tr><td>\n\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t</td><td><a href=\"http://hl7.org/fhir/R4/search.html#id\">_id</a>+\n\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t<a href=\"http://hl7.org/fhir/R4/patient.html#search\">patient</a>+\n\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t<a href=\"http://hl7.org/fhir/R4/encounter.html#search\">encounter</a>+\n\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t<a href=\"http://hl7.org/fhir/R4/code.html#search\">code</a></td><td>reference+reference+reference+token\n\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t</td><td><code class=\"highlighter-rouge\">GET [base]/MedicationRequest?_id=[id]&amp;patient=[type]/[id]&amp;encounter=[type]/[id]&amp;code=[system]|[code]</code></td></tr></tbody></table><h4 class=\"no_toc\" id=\"observation\">Observation</h4><p>Conformance Expectation:\t<strong>None</strong></p><p>Profile Interaction Summary:</p><ul><li><strong>SHALL</strong> support \n\t\t\t\t\t\t\t\t\t\t\t<code>search-type</code>.</li></ul><p>Fetch and Search Criteria:</p><ul><li>\n\t\t\t\t\t\t\t\t\t\t\t\tA Server <strong>SHALL</strong> be capable of returning resources matching a search query using:\n\t\t\t\t\t\t\t\t\t\t\t\t<code class=\"highlighter-rouge\">GET [base]/Observation/[id]{?[parameters]{&amp;_format=[mime-type]}}</code>\n\t\t\t\t\t\t\t\t\t\t\t</li></ul><!-- Only included search parameters that are not MAY or there is no conformance requirement included --><p>Search Parameter Summary:</p><table class=\"grid\"><thead><tr><th>Conformance</th><th>Parameter</th><th>Type</th><th>Example</th></tr></thead><tbody><tr><td><strong>SHALL</strong></td><td><a href=\"http://hl7.org/fhir/R4/search.html#id\">\n\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t_id</a></td><td>\n\t\t\t\t\t\t\t\t\t\t\t\t\t\t\treference\n\t\t\t\t\t\t\t\t\t\t\t\t\t\t</td><td><code class=\"highlighter-rouge\">GET [base]/Observation?_id=[id]</code></td></tr><tr><td><strong>SHALL</strong></td><td><a href=\"http://hl7.org/fhir/R4/observation.html#search\">\n\t\t\t\t\t\t\t\t\t\t\t\t\t\t\tpatient</a></td><td>\n\t\t\t\t\t\t\t\t\t\t\t\t\t\t\treference\n\t\t\t\t\t\t\t\t\t\t\t\t\t\t</td><td><code class=\"highlighter-rouge\">GET [base]/Observation?patient=[type]/[id]</code></td></tr><tr><td><strong>SHALL</strong></td><td><a href=\"http://hl7.org/fhir/R4/observation.html#search\">\n\t\t\t\t\t\t\t\t\t\t\t\t\t\t\tencounter</a></td><td>\n\t\t\t\t\t\t\t\t\t\t\t\t\t\t\treference\n\t\t\t\t\t\t\t\t\t\t\t\t\t\t</td><td><code class=\"highlighter-rouge\">GET [base]/Observation?encounter=[type]/[id]</code></td></tr><tr><td><strong>SHALL</strong></td><td><a href=\"http://hl7.org/fhir/R4/observation.html#search\">\n\t\t\t\t\t\t\t\t\t\t\t\t\t\t\tcode</a></td><td>\n\t\t\t\t\t\t\t\t\t\t\t\t\t\t\ttoken\n\t\t\t\t\t\t\t\t\t\t\t\t\t\t</td><td><code class=\"highlighter-rouge\">GET [base]/Observation?code=[system]|[code]</code></td></tr></tbody></table><p>Search Parameter Combination Summary:</p><table class=\"grid\"><thead><tr><th>Conformance</th><th>Parameter Combination</th><th>Types</th><th>Example</th></tr></thead><tbody><tr><td>\n\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t</td><td><a href=\"http://hl7.org/fhir/R4/search.html#id\">_id</a>+\n\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t<a href=\"http://hl7.org/fhir/R4/patient.html#search\">patient</a>+\n\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t<a href=\"http://hl7.org/fhir/R4/encounter.html#search\">encounter</a>+\n\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t<a href=\"http://hl7.org/fhir/R4/code.html#search\">code</a></td><td>reference+reference+reference+token\n\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t</td><td><code class=\"highlighter-rouge\">GET [base]/Observation?_id=[id]&amp;patient=[type]/[id]&amp;encounter=[type]/[id]&amp;code=[system]|[code]</code></td></tr></tbody></table><h4 class=\"no_toc\" id=\"procedure\">Procedure</h4><p>Conformance Expectation:\t<strong>None</strong></p><p>Profile Interaction Summary:</p><ul><li><strong>SHALL</strong> support \n\t\t\t\t\t\t\t\t\t\t\t<code>search-type</code>.</li></ul><p>Fetch and Search Criteria:</p><ul><li>\n\t\t\t\t\t\t\t\t\t\t\t\tA Server <strong>SHALL</strong> be capable of returning resources matching a search query using:\n\t\t\t\t\t\t\t\t\t\t\t\t<code class=\"highlighter-rouge\">GET [base]/Procedure/[id]{?[parameters]{&amp;_format=[mime-type]}}</code>\n\t\t\t\t\t\t\t\t\t\t\t</li></ul><!-- Only included search parameters that are not MAY or there is no conformance requirement included --><p>Search Parameter Summary:</p><table class=\"grid\"><thead><tr><th>Conformance</th><th>Parameter</th><th>Type</th><th>Example</th></tr></thead><tbody><tr><td><strong>SHALL</strong></td><td><a href=\"http://hl7.org/fhir/R4/search.html#id\">\n\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t_id</a></td><td>\n\t\t\t\t\t\t\t\t\t\t\t\t\t\t\treference\n\t\t\t\t\t\t\t\t\t\t\t\t\t\t</td><td><code class=\"highlighter-rouge\">GET [base]/Procedure?_id=[id]</code></td></tr><tr><td><strong>SHALL</strong></td><td><a href=\"http://hl7.org/fhir/R4/procedure.html#search\">\n\t\t\t\t\t\t\t\t\t\t\t\t\t\t\tpatient</a></td><td>\n\t\t\t\t\t\t\t\t\t\t\t\t\t\t\treference\n\t\t\t\t\t\t\t\t\t\t\t\t\t\t</td><td><code class=\"highlighter-rouge\">GET [base]/Procedure?patient=[type]/[id]</code></td></tr><tr><td><strong>SHALL</strong></td><td><a href=\"http://hl7.org/fhir/R4/procedure.html#search\">\n\t\t\t\t\t\t\t\t\t\t\t\t\t\t\tencounter</a></td><td>\n\t\t\t\t\t\t\t\t\t\t\t\t\t\t\treference\n\t\t\t\t\t\t\t\t\t\t\t\t\t\t</td><td><code class=\"highlighter-rouge\">GET [base]/Procedure?encounter=[type]/[id]</code></td></tr><tr><td><strong>SHALL</strong></td><td><a href=\"http://hl7.org/fhir/R4/procedure.html#search\">\n\t\t\t\t\t\t\t\t\t\t\t\t\t\t\tcode</a></td><td>\n\t\t\t\t\t\t\t\t\t\t\t\t\t\t\ttoken\n\t\t\t\t\t\t\t\t\t\t\t\t\t\t</td><td><code class=\"highlighter-rouge\">GET [base]/Procedure?code=[system]|[code]</code></td></tr></tbody></table><p>Search Parameter Combination Summary:</p><table class=\"grid\"><thead><tr><th>Conformance</th><th>Parameter Combination</th><th>Types</th><th>Example</th></tr></thead><tbody><tr><td>\n\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t</td><td><a href=\"http://hl7.org/fhir/R4/search.html#id\">_id</a>+\n\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t<a href=\"http://hl7.org/fhir/R4/patient.html#search\">patient</a>+\n\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t<a href=\"http://hl7.org/fhir/R4/encounter.html#search\">encounter</a>+\n\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t<a href=\"http://hl7.org/fhir/R4/code.html#search\">code</a></td><td>reference+reference+reference+token\n\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t</td><td><code class=\"highlighter-rouge\">GET [base]/Procedure?_id=[id]&amp;patient=[type]/[id]&amp;encounter=[type]/[id]&amp;code=[system]|[code]</code></td></tr></tbody></table><h4 class=\"no_toc\" id=\"servicerequest\">ServiceRequest</h4><p>Conformance Expectation:\t<strong>None</strong></p><p>Profile Interaction Summary:</p><ul><li><strong>SHALL</strong> support \n\t\t\t\t\t\t\t\t\t\t\t<code>search-type</code>.</li></ul><p>Fetch and Search Criteria:</p><ul><li>\n\t\t\t\t\t\t\t\t\t\t\t\tA Server <strong>SHALL</strong> be capable of returning resources matching a search query using:\n\t\t\t\t\t\t\t\t\t\t\t\t<code class=\"highlighter-rouge\">GET [base]/ServiceRequest/[id]{?[parameters]{&amp;_format=[mime-type]}}</code>\n\t\t\t\t\t\t\t\t\t\t\t</li></ul><!-- Only included search parameters that are not MAY or there is no conformance requirement included --><p>Search Parameter Summary:</p><table class=\"grid\"><thead><tr><th>Conformance</th><th>Parameter</th><th>Type</th><th>Example</th></tr></thead><tbody><tr><td><strong>SHALL</strong></td><td><a href=\"http://hl7.org/fhir/R4/search.html#id\">\n\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t_id</a></td><td>\n\t\t\t\t\t\t\t\t\t\t\t\t\t\t\treference\n\t\t\t\t\t\t\t\t\t\t\t\t\t\t</td><td><code class=\"highlighter-rouge\">GET [base]/ServiceRequest?_id=[id]</code></td></tr><tr><td><strong>SHALL</strong></td><td><a href=\"http://hl7.org/fhir/R4/servicerequest.html#search\">\n\t\t\t\t\t\t\t\t\t\t\t\t\t\t\tpatient</a></td><td>\n\t\t\t\t\t\t\t\t\t\t\t\t\t\t\treference\n\t\t\t\t\t\t\t\t\t\t\t\t\t\t</td><td><code class=\"highlighter-rouge\">GET [base]/ServiceRequest?patient=[type]/[id]</code></td></tr><tr><td><strong>SHALL</strong></td><td><a href=\"http://hl7.org/fhir/R4/servicerequest.html#search\">\n\t\t\t\t\t\t\t\t\t\t\t\t\t\t\tencounter</a></td><td>\n\t\t\t\t\t\t\t\t\t\t\t\t\t\t\treference\n\t\t\t\t\t\t\t\t\t\t\t\t\t\t</td><td><code class=\"highlighter-rouge\">GET [base]/ServiceRequest?encounter=[type]/[id]</code></td></tr><tr><td><strong>SHALL</strong></td><td><a href=\"http://hl7.org/fhir/R4/servicerequest.html#search\">\n\t\t\t\t\t\t\t\t\t\t\t\t\t\t\tcode</a></td><td>\n\t\t\t\t\t\t\t\t\t\t\t\t\t\t\ttoken\n\t\t\t\t\t\t\t\t\t\t\t\t\t\t</td><td><code class=\"highlighter-rouge\">GET [base]/ServiceRequest?code=[system]|[code]</code></td></tr></tbody></table><p>Search Parameter Combination Summary:</p><table class=\"grid\"><thead><tr><th>Conformance</th><th>Parameter Combination</th><th>Types</th><th>Example</th></tr></thead><tbody><tr><td>\n\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t</td><td><a href=\"http://hl7.org/fhir/R4/search.html#id\">_id</a>+\n\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t<a href=\"http://hl7.org/fhir/R4/patient.html#search\">patient</a>+\n\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t<a href=\"http://hl7.org/fhir/R4/encounter.html#search\">encounter</a>+\n\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t<a href=\"http://hl7.org/fhir/R4/code.html#search\">code</a></td><td>reference+reference+reference+token\n\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t</td><td><code class=\"highlighter-rouge\">GET [base]/ServiceRequest?_id=[id]&amp;patient=[type]/[id]&amp;encounter=[type]/[id]&amp;code=[system]|[code]</code></td></tr></tbody></table><h4 class=\"no_toc\" id=\"documentreference\">DocumentReference</h4><p>Conformance Expectation:\t<strong>None</strong></p><p>Profile Interaction Summary:</p><ul><li><strong>SHOULD</strong> support \n\t\t\t\t\t\t\t\t\t\t\t<code>search-type</code>.</li></ul><p>Fetch and Search Criteria:</p><ul><li>\n\t\t\t\t\t\t\t\t\t\t\t\tA Server <strong>SHOULD</strong> be capable of returning resources matching a search query using:\n\t\t\t\t\t\t\t\t\t\t\t\t<code class=\"highlighter-rouge\">GET [base]/DocumentReference/[id]{?[parameters]{&amp;_format=[mime-type]}}</code>\n\t\t\t\t\t\t\t\t\t\t\t</li></ul><!-- Only included search parameters that are not MAY or there is no conformance requirement included --><p>Search Parameter Summary:</p><table class=\"grid\"><thead><tr><th>Conformance</th><th>Parameter</th><th>Type</th><th>Example</th></tr></thead><tbody><tr><td><strong>SHALL</strong></td><td><a href=\"http://hl7.org/fhir/R4/search.html#id\">\n\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t_id</a></td><td>\n\t\t\t\t\t\t\t\t\t\t\t\t\t\t\treference\n\t\t\t\t\t\t\t\t\t\t\t\t\t\t</td><td><code class=\"highlighter-rouge\">GET [base]/DocumentReference?_id=[id]</code></td></tr><tr><td><strong>SHALL</strong></td><td><a href=\"http://hl7.org/fhir/R4/documentreference.html#search\">\n\t\t\t\t\t\t\t\t\t\t\t\t\t\t\tpatient</a></td><td>\n\t\t\t\t\t\t\t\t\t\t\t\t\t\t\treference\n\t\t\t\t\t\t\t\t\t\t\t\t\t\t</td><td><code class=\"highlighter-rouge\">GET [base]/DocumentReference?patient=[type]/[id]</code></td></tr><tr><td><strong>SHALL</strong></td><td><a href=\"http://hl7.org/fhir/R4/documentreference.html#search\">\n\t\t\t\t\t\t\t\t\t\t\t\t\t\t\tencounter</a></td><td>\n\t\t\t\t\t\t\t\t\t\t\t\t\t\t\treference\n\t\t\t\t\t\t\t\t\t\t\t\t\t\t</td><td><code class=\"highlighter-rouge\">GET [base]/DocumentReference?encounter=[type]/[id]</code></td></tr><tr><td><strong>SHALL</strong></td><td><a href=\"http://hl7.org/fhir/R4/documentreference.html#search\">\n\t\t\t\t\t\t\t\t\t\t\t\t\t\t\tcode</a></td><td>\n\t\t\t\t\t\t\t\t\t\t\t\t\t\t\ttoken\n\t\t\t\t\t\t\t\t\t\t\t\t\t\t</td><td><code class=\"highlighter-rouge\">GET [base]/DocumentReference?code=[system]|[code]</code></td></tr></tbody></table><p>Search Parameter Combination Summary:</p><table class=\"grid\"><thead><tr><th>Conformance</th><th>Parameter Combination</th><th>Types</th><th>Example</th></tr></thead><tbody><tr><td>\n\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t</td><td><a href=\"http://hl7.org/fhir/R4/search.html#id\">_id</a>+\n\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t<a href=\"http://hl7.org/fhir/R4/patient.html#search\">patient</a>+\n\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t<a href=\"http://hl7.org/fhir/R4/encounter.html#search\">encounter</a>+\n\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t<a href=\"http://hl7.org/fhir/R4/code.html#search\">code</a></td><td>reference+reference+reference+token\n\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t</td><td><code class=\"highlighter-rouge\">GET [base]/DocumentReference?_id=[id]&amp;patient=[type]/[id]&amp;encounter=[type]/[id]&amp;code=[system]|[code]</code></td></tr></tbody></table><h4 class=\"no_toc\" id=\"familymemberhistory\">FamilyMemberHistory</h4><p>Conformance Expectation:\t<strong>None</strong></p><p>Profile Interaction Summary:</p><ul><li><strong>SHOULD</strong> support \n\t\t\t\t\t\t\t\t\t\t\t<code>search-type</code>.</li></ul><p>Fetch and Search Criteria:</p><ul><li>\n\t\t\t\t\t\t\t\t\t\t\t\tA Server <strong>SHOULD</strong> be capable of returning resources matching a search query using:\n\t\t\t\t\t\t\t\t\t\t\t\t<code class=\"highlighter-rouge\">GET [base]/FamilyMemberHistory/[id]{?[parameters]{&amp;_format=[mime-type]}}</code>\n\t\t\t\t\t\t\t\t\t\t\t</li></ul><!-- Only included search parameters that are not MAY or there is no conformance requirement included --><p>Search Parameter Summary:</p><table class=\"grid\"><thead><tr><th>Conformance</th><th>Parameter</th><th>Type</th><th>Example</th></tr></thead><tbody><tr><td><strong>SHALL</strong></td><td><a href=\"http://hl7.org/fhir/R4/search.html#id\">\n\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t_id</a></td><td>\n\t\t\t\t\t\t\t\t\t\t\t\t\t\t\treference\n\t\t\t\t\t\t\t\t\t\t\t\t\t\t</td><td><code class=\"highlighter-rouge\">GET [base]/FamilyMemberHistory?_id=[id]</code></td></tr><tr><td><strong>SHALL</strong></td><td><a href=\"http://hl7.org/fhir/R4/familymemberhistory.html#search\">\n\t\t\t\t\t\t\t\t\t\t\t\t\t\t\tpatient</a></td><td>\n\t\t\t\t\t\t\t\t\t\t\t\t\t\t\treference\n\t\t\t\t\t\t\t\t\t\t\t\t\t\t</td><td><code class=\"highlighter-rouge\">GET [base]/FamilyMemberHistory?patient=[type]/[id]</code></td></tr><tr><td><strong>SHALL</strong></td><td><a href=\"http://hl7.org/fhir/R4/familymemberhistory.html#search\">\n\t\t\t\t\t\t\t\t\t\t\t\t\t\t\tencounter</a></td><td>\n\t\t\t\t\t\t\t\t\t\t\t\t\t\t\treference\n\t\t\t\t\t\t\t\t\t\t\t\t\t\t</td><td><code class=\"highlighter-rouge\">GET [base]/FamilyMemberHistory?encounter=[type]/[id]</code></td></tr><tr><td><strong>SHALL</strong></td><td><a href=\"http://hl7.org/fhir/R4/familymemberhistory.html#search\">\n\t\t\t\t\t\t\t\t\t\t\t\t\t\t\tcode</a></td><td>\n\t\t\t\t\t\t\t\t\t\t\t\t\t\t\ttoken\n\t\t\t\t\t\t\t\t\t\t\t\t\t\t</td><td><code class=\"highlighter-rouge\">GET [base]/FamilyMemberHistory?code=[system]|[code]</code></td></tr></tbody></table><p>Search Parameter Combination Summary:</p><table class=\"grid\"><thead><tr><th>Conformance</th><th>Parameter Combination</th><th>Types</th><th>Example</th></tr></thead><tbody><tr><td>\n\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t</td><td><a href=\"http://hl7.org/fhir/R4/search.html#id\">_id</a>+\n\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t<a href=\"http://hl7.org/fhir/R4/patient.html#search\">patient</a>+\n\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t<a href=\"http://hl7.org/fhir/R4/encounter.html#search\">encounter</a>+\n\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t<a href=\"http://hl7.org/fhir/R4/code.html#search\">code</a></td><td>reference+reference+reference+token\n\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t</td><td><code class=\"highlighter-rouge\">GET [base]/FamilyMemberHistory?_id=[id]&amp;patient=[type]/[id]&amp;encounter=[type]/[id]&amp;code=[system]|[code]</code></td></tr></tbody></table><h4 class=\"no_toc\" id=\"medicationadministration\">MedicationAdministration</h4><p>Conformance Expectation:\t<strong>None</strong></p><p>Profile Interaction Summary:</p><ul><li><strong>SHOULD</strong> support \n\t\t\t\t\t\t\t\t\t\t\t<code>search-type</code>.</li></ul><p>Fetch and Search Criteria:</p><ul><li>\n\t\t\t\t\t\t\t\t\t\t\t\tA Server <strong>SHOULD</strong> be capable of returning resources matching a search query using:\n\t\t\t\t\t\t\t\t\t\t\t\t<code class=\"highlighter-rouge\">GET [base]/MedicationAdministration/[id]{?[parameters]{&amp;_format=[mime-type]}}</code>\n\t\t\t\t\t\t\t\t\t\t\t</li></ul><!-- Only included search parameters that are not MAY or there is no conformance requirement included --><p>Search Parameter Summary:</p><table class=\"grid\"><thead><tr><th>Conformance</th><th>Parameter</th><th>Type</th><th>Example</th></tr></thead><tbody><tr><td><strong>SHALL</strong></td><td><a href=\"http://hl7.org/fhir/R4/search.html#id\">\n\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t_id</a></td><td>\n\t\t\t\t\t\t\t\t\t\t\t\t\t\t\treference\n\t\t\t\t\t\t\t\t\t\t\t\t\t\t</td><td><code class=\"highlighter-rouge\">GET [base]/MedicationAdministration?_id=[id]</code></td></tr><tr><td><strong>SHALL</strong></td><td><a href=\"http://hl7.org/fhir/R4/medicationadministration.html#search\">\n\t\t\t\t\t\t\t\t\t\t\t\t\t\t\tpatient</a></td><td>\n\t\t\t\t\t\t\t\t\t\t\t\t\t\t\treference\n\t\t\t\t\t\t\t\t\t\t\t\t\t\t</td><td><code class=\"highlighter-rouge\">GET [base]/MedicationAdministration?patient=[type]/[id]</code></td></tr><tr><td><strong>SHALL</strong></td><td><a href=\"http://hl7.org/fhir/R4/medicationadministration.html#search\">\n\t\t\t\t\t\t\t\t\t\t\t\t\t\t\tencounter</a></td><td>\n\t\t\t\t\t\t\t\t\t\t\t\t\t\t\treference\n\t\t\t\t\t\t\t\t\t\t\t\t\t\t</td><td><code class=\"highlighter-rouge\">GET [base]/MedicationAdministration?encounter=[type]/[id]</code></td></tr><tr><td><strong>SHALL</strong></td><td><a href=\"http://hl7.org/fhir/R4/medicationadministration.html#search\">\n\t\t\t\t\t\t\t\t\t\t\t\t\t\t\tcode</a></td><td>\n\t\t\t\t\t\t\t\t\t\t\t\t\t\t\ttoken\n\t\t\t\t\t\t\t\t\t\t\t\t\t\t</td><td><code class=\"highlighter-rouge\">GET [base]/MedicationAdministration?code=[system]|[code]</code></td></tr></tbody></table><p>Search Parameter Combination Summary:</p><table class=\"grid\"><thead><tr><th>Conformance</th><th>Parameter Combination</th><th>Types</th><th>Example</th></tr></thead><tbody><tr><td>\n\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t</td><td><a href=\"http://hl7.org/fhir/R4/search.html#id\">_id</a>+\n\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t<a href=\"http://hl7.org/fhir/R4/patient.html#search\">patient</a>+\n\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t<a href=\"http://hl7.org/fhir/R4/encounter.html#search\">encounter</a>+\n\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t<a href=\"http://hl7.org/fhir/R4/code.html#search\">code</a></td><td>reference+reference+reference+token\n\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t</td><td><code class=\"highlighter-rouge\">GET [base]/MedicationAdministration?_id=[id]&amp;patient=[type]/[id]&amp;encounter=[type]/[id]&amp;code=[system]|[code]</code></td></tr></tbody></table><h4 class=\"no_toc\" id=\"medicationdispense\">MedicationDispense</h4><p>Conformance Expectation:\t<strong>None</strong></p><p>Profile Interaction Summary:</p><ul><li><strong>SHOULD</strong> support \n\t\t\t\t\t\t\t\t\t\t\t<code>search-type</code>.</li></ul><p>Fetch and Search Criteria:</p><ul><li>\n\t\t\t\t\t\t\t\t\t\t\t\tA Server <strong>SHOULD</strong> be capable of returning resources matching a search query using:\n\t\t\t\t\t\t\t\t\t\t\t\t<code class=\"highlighter-rouge\">GET [base]/MedicationDispense/[id]{?[parameters]{&amp;_format=[mime-type]}}</code>\n\t\t\t\t\t\t\t\t\t\t\t</li></ul><!-- Only included search parameters that are not MAY or there is no conformance requirement included --><p>Search Parameter Summary:</p><table class=\"grid\"><thead><tr><th>Conformance</th><th>Parameter</th><th>Type</th><th>Example</th></tr></thead><tbody><tr><td><strong>SHALL</strong></td><td><a href=\"http://hl7.org/fhir/R4/search.html#id\">\n\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t_id</a></td><td>\n\t\t\t\t\t\t\t\t\t\t\t\t\t\t\treference\n\t\t\t\t\t\t\t\t\t\t\t\t\t\t</td><td><code class=\"highlighter-rouge\">GET [base]/MedicationDispense?_id=[id]</code></td></tr><tr><td><strong>SHALL</strong></td><td><a href=\"http://hl7.org/fhir/R4/medicationdispense.html#search\">\n\t\t\t\t\t\t\t\t\t\t\t\t\t\t\tpatient</a></td><td>\n\t\t\t\t\t\t\t\t\t\t\t\t\t\t\treference\n\t\t\t\t\t\t\t\t\t\t\t\t\t\t</td><td><code class=\"highlighter-rouge\">GET [base]/MedicationDispense?patient=[type]/[id]</code></td></tr><tr><td><strong>SHALL</strong></td><td><a href=\"http://hl7.org/fhir/R4/medicationdispense.html#search\">\n\t\t\t\t\t\t\t\t\t\t\t\t\t\t\tencounter</a></td><td>\n\t\t\t\t\t\t\t\t\t\t\t\t\t\t\treference\n\t\t\t\t\t\t\t\t\t\t\t\t\t\t</td><td><code class=\"highlighter-rouge\">GET [base]/MedicationDispense?encounter=[type]/[id]</code></td></tr><tr><td><strong>SHALL</strong></td><td><a href=\"http://hl7.org/fhir/R4/medicationdispense.html#search\">\n\t\t\t\t\t\t\t\t\t\t\t\t\t\t\tcode</a></td><td>\n\t\t\t\t\t\t\t\t\t\t\t\t\t\t\ttoken\n\t\t\t\t\t\t\t\t\t\t\t\t\t\t</td><td><code class=\"highlighter-rouge\">GET [base]/MedicationDispense?code=[system]|[code]</code></td></tr></tbody></table><p>Search Parameter Combination Summary:</p><table class=\"grid\"><thead><tr><th>Conformance</th><th>Parameter Combination</th><th>Types</th><th>Example</th></tr></thead><tbody><tr><td>\n\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t</td><td><a href=\"http://hl7.org/fhir/R4/search.html#id\">_id</a>+\n\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t<a href=\"http://hl7.org/fhir/R4/patient.html#search\">patient</a>+\n\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t<a href=\"http://hl7.org/fhir/R4/encounter.html#search\">encounter</a>+\n\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t<a href=\"http://hl7.org/fhir/R4/code.html#search\">code</a></td><td>reference+reference+reference+token\n\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t</td><td><code class=\"highlighter-rouge\">GET [base]/MedicationDispense?_id=[id]&amp;patient=[type]/[id]&amp;encounter=[type]/[id]&amp;code=[system]|[code]</code></td></tr></tbody></table><h4 class=\"no_toc\" id=\"medicationstatement\">MedicationStatement</h4><p>Conformance Expectation:\t<strong>None</strong></p><p>Profile Interaction Summary:</p><ul><li><strong>SHOULD</strong> support \n\t\t\t\t\t\t\t\t\t\t\t<code>search-type</code>.</li></ul><p>Fetch and Search Criteria:</p><ul><li>\n\t\t\t\t\t\t\t\t\t\t\t\tA Server <strong>SHOULD</strong> be capable of returning resources matching a search query using:\n\t\t\t\t\t\t\t\t\t\t\t\t<code class=\"highlighter-rouge\">GET [base]/MedicationStatement/[id]{?[parameters]{&amp;_format=[mime-type]}}</code>\n\t\t\t\t\t\t\t\t\t\t\t</li></ul><!-- Only included search parameters that are not MAY or there is no conformance requirement included --><p>Search Parameter Summary:</p><table class=\"grid\"><thead><tr><th>Conformance</th><th>Parameter</th><th>Type</th><th>Example</th></tr></thead><tbody><tr><td><strong>SHALL</strong></td><td><a href=\"http://hl7.org/fhir/R4/search.html#id\">\n\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t_id</a></td><td>\n\t\t\t\t\t\t\t\t\t\t\t\t\t\t\treference\n\t\t\t\t\t\t\t\t\t\t\t\t\t\t</td><td><code class=\"highlighter-rouge\">GET [base]/MedicationStatement?_id=[id]</code></td></tr><tr><td><strong>SHALL</strong></td><td><a href=\"http://hl7.org/fhir/R4/medicationstatement.html#search\">\n\t\t\t\t\t\t\t\t\t\t\t\t\t\t\tpatient</a></td><td>\n\t\t\t\t\t\t\t\t\t\t\t\t\t\t\treference\n\t\t\t\t\t\t\t\t\t\t\t\t\t\t</td><td><code class=\"highlighter-rouge\">GET [base]/MedicationStatement?patient=[type]/[id]</code></td></tr><tr><td><strong>SHALL</strong></td><td><a href=\"http://hl7.org/fhir/R4/medicationstatement.html#search\">\n\t\t\t\t\t\t\t\t\t\t\t\t\t\t\tencounter</a></td><td>\n\t\t\t\t\t\t\t\t\t\t\t\t\t\t\treference\n\t\t\t\t\t\t\t\t\t\t\t\t\t\t</td><td><code class=\"highlighter-rouge\">GET [base]/MedicationStatement?encounter=[type]/[id]</code></td></tr><tr><td><strong>SHALL</strong></td><td><a href=\"http://hl7.org/fhir/R4/medicationstatement.html#search\">\n\t\t\t\t\t\t\t\t\t\t\t\t\t\t\tcode</a></td><td>\n\t\t\t\t\t\t\t\t\t\t\t\t\t\t\ttoken\n\t\t\t\t\t\t\t\t\t\t\t\t\t\t</td><td><code class=\"highlighter-rouge\">GET [base]/MedicationStatement?code=[system]|[code]</code></td></tr></tbody></table><p>Search Parameter Combination Summary:</p><table class=\"grid\"><thead><tr><th>Conformance</th><th>Parameter Combination</th><th>Types</th><th>Example</th></tr></thead><tbody><tr><td>\n\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t</td><td><a href=\"http://hl7.org/fhir/R4/search.html#id\">_id</a>+\n\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t<a href=\"http://hl7.org/fhir/R4/patient.html#search\">patient</a>+\n\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t<a href=\"http://hl7.org/fhir/R4/encounter.html#search\">encounter</a>+\n\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t<a href=\"http://hl7.org/fhir/R4/code.html#search\">code</a></td><td>reference+reference+reference+token\n\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t</td><td><code class=\"highlighter-rouge\">GET [base]/MedicationStatement?_id=[id]&amp;patient=[type]/[id]&amp;encounter=[type]/[id]&amp;code=[system]|[code]</code></td></tr></tbody></table></div>"
* text.status = #generated
