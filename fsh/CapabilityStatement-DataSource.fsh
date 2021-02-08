
Instance: DataSource
InstanceOf: CapabilityStatementWithSlices
Usage: #definition
Description: """
Defines the requirements for the Data Source."""
* insert SanerDefinitionContent
* name = "DataSource"
* title = "Data Source."
* date = "2021-01-11T09:39:55.251153-05:00"
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
