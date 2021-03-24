
Instance: MeasureComputer
InstanceOf: CapabilityStatementWithSlices
Usage: #definition
Description: """
Defines the requirements for the Measure Computer."""
* insert SanerDefinitionContent
* name = "MeasureComputer"
* title = "Measure Computer."
* date = "2021-03-24T14:32:47.8509818-04:00"
* kind = #requirements
* description = "Defines the requirements for the Measure Computer."
* format[0] = #xml
* format[1] = #json
* fhirVersion = #4.0.1

* rest[clientSlice].mode = #client

* rest[clientSlice].resource[MeasureSlice].type = #Measure

* rest[clientSlice].resource[MeasureSlice].operation[0].name = "evaluate-measure"
* rest[clientSlice].resource[MeasureSlice].operation[0].definition = "http://hl7.org/fhir/uv/saner/OperationDefinition/Measure-evaluate-measure"
* rest[clientSlice].resource[MeasureSlice].operation[0].documentation = "Evaluate the measure"

* rest[clientSlice].resource[PatientSlice].type = #Patient

* rest[clientSlice].resource[PatientSlice].interaction[0].code = #search-type
* rest[clientSlice].resource[PatientSlice].interaction[0].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest[clientSlice].resource[PatientSlice].interaction[0].extension.valueCode = #SHALL

* rest[clientSlice].resource[PatientSlice].searchParam[0].name = "_id"
* rest[clientSlice].resource[PatientSlice].searchParam[0].type = #reference
* rest[clientSlice].resource[PatientSlice].searchParam[0].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest[clientSlice].resource[PatientSlice].searchParam[0].extension.valueCode = #SHALL

* rest[clientSlice].resource[PatientSlice].searchParam[1].name = "date"
* rest[clientSlice].resource[PatientSlice].searchParam[1].type = #date
* rest[clientSlice].resource[PatientSlice].searchParam[1].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest[clientSlice].resource[PatientSlice].searchParam[1].extension.valueCode = #MAY

* rest[clientSlice].resource[PatientSlice].searchParam[2].name = "class"
* rest[clientSlice].resource[PatientSlice].searchParam[2].type = #reference
* rest[clientSlice].resource[PatientSlice].searchParam[2].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest[clientSlice].resource[PatientSlice].searchParam[2].extension.valueCode = #SHALL

* rest[clientSlice].resource[PatientSlice].extension[0].url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-search-parameter-combination"
* rest[clientSlice].resource[PatientSlice].extension[0].extension[0].url = "required"
* rest[clientSlice].resource[PatientSlice].extension[0].extension[0].valueString = "_id"

* rest[clientSlice].resource[PatientSlice].extension[1].url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-search-parameter-combination"
* rest[clientSlice].resource[PatientSlice].extension[1].extension[0].url = "required"
* rest[clientSlice].resource[PatientSlice].extension[1].extension[0].valueString = "_id"
* rest[clientSlice].resource[PatientSlice].extension[1].extension[1].url = "required"
* rest[clientSlice].resource[PatientSlice].extension[1].extension[1].valueString = "class"
* rest[clientSlice].resource[PatientSlice].extension[1].extension[2].url = "optional"
* rest[clientSlice].resource[PatientSlice].extension[1].extension[2].valueString = "date"

* rest[clientSlice].resource[EncounterSlice].type = #Encounter

* rest[clientSlice].resource[EncounterSlice].interaction[0].code = #search-type
* rest[clientSlice].resource[EncounterSlice].interaction[0].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest[clientSlice].resource[EncounterSlice].interaction[0].extension.valueCode = #SHALL

* rest[clientSlice].resource[EncounterSlice].searchParam[0].name = "_id"
* rest[clientSlice].resource[EncounterSlice].searchParam[0].type = #reference
* rest[clientSlice].resource[EncounterSlice].searchParam[0].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest[clientSlice].resource[EncounterSlice].searchParam[0].extension.valueCode = #SHALL

* rest[clientSlice].resource[EncounterSlice].searchParam[1].name = "date"
* rest[clientSlice].resource[EncounterSlice].searchParam[1].type = #date
* rest[clientSlice].resource[EncounterSlice].searchParam[1].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest[clientSlice].resource[EncounterSlice].searchParam[1].extension.valueCode = #MAY

* rest[clientSlice].resource[EncounterSlice].searchParam[2].name = "class"
* rest[clientSlice].resource[EncounterSlice].searchParam[2].type = #reference
* rest[clientSlice].resource[EncounterSlice].searchParam[2].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest[clientSlice].resource[EncounterSlice].searchParam[2].extension.valueCode = #SHALL

* rest[clientSlice].resource[EncounterSlice].searchParam[3].name = "patient"
* rest[clientSlice].resource[EncounterSlice].searchParam[3].type = #reference
* rest[clientSlice].resource[EncounterSlice].searchParam[3].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest[clientSlice].resource[EncounterSlice].searchParam[3].extension.valueCode = #SHALL

* rest[clientSlice].resource[EncounterSlice].searchParam[4].name = "encounter"
* rest[clientSlice].resource[EncounterSlice].searchParam[4].type = #reference
* rest[clientSlice].resource[EncounterSlice].searchParam[4].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest[clientSlice].resource[EncounterSlice].searchParam[4].extension.valueCode = #SHALL

* rest[clientSlice].resource[EncounterSlice].searchParam[5].name = "code"
* rest[clientSlice].resource[EncounterSlice].searchParam[5].type = #token
* rest[clientSlice].resource[EncounterSlice].searchParam[5].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest[clientSlice].resource[EncounterSlice].searchParam[5].extension.valueCode = #SHALL

* rest[clientSlice].resource[EncounterSlice].extension[0].url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-search-parameter-combination"
* rest[clientSlice].resource[EncounterSlice].extension[0].extension[0].url = "required"
* rest[clientSlice].resource[EncounterSlice].extension[0].extension[0].valueString = "_id"

* rest[clientSlice].resource[EncounterSlice].extension[1].url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-search-parameter-combination"
* rest[clientSlice].resource[EncounterSlice].extension[1].extension[0].url = "required"
* rest[clientSlice].resource[EncounterSlice].extension[1].extension[0].valueString = "_id"
* rest[clientSlice].resource[EncounterSlice].extension[1].extension[1].url = "required"
* rest[clientSlice].resource[EncounterSlice].extension[1].extension[1].valueString = "class"
* rest[clientSlice].resource[EncounterSlice].extension[1].extension[2].url = "optional"
* rest[clientSlice].resource[EncounterSlice].extension[1].extension[2].valueString = "date"

* rest[clientSlice].resource[EncounterSlice].extension[2].url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-search-parameter-combination"
* rest[clientSlice].resource[EncounterSlice].extension[2].extension[0].url = "required"
* rest[clientSlice].resource[EncounterSlice].extension[2].extension[0].valueString = "_id"
* rest[clientSlice].resource[EncounterSlice].extension[2].extension[1].url = "required"
* rest[clientSlice].resource[EncounterSlice].extension[2].extension[1].valueString = "patient"
* rest[clientSlice].resource[EncounterSlice].extension[2].extension[2].url = "required"
* rest[clientSlice].resource[EncounterSlice].extension[2].extension[2].valueString = "encounter"
* rest[clientSlice].resource[EncounterSlice].extension[2].extension[3].url = "required"
* rest[clientSlice].resource[EncounterSlice].extension[2].extension[3].valueString = "code"

* rest[clientSlice].resource[AllergyIntoleranceSlice].type = #AllergyIntolerance

* rest[clientSlice].resource[AllergyIntoleranceSlice].interaction[0].code = #search-type
* rest[clientSlice].resource[AllergyIntoleranceSlice].interaction[0].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest[clientSlice].resource[AllergyIntoleranceSlice].interaction[0].extension.valueCode = #SHOULD

* rest[clientSlice].resource[AllergyIntoleranceSlice].searchParam[0].name = "_id"
* rest[clientSlice].resource[AllergyIntoleranceSlice].searchParam[0].type = #reference
* rest[clientSlice].resource[AllergyIntoleranceSlice].searchParam[0].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest[clientSlice].resource[AllergyIntoleranceSlice].searchParam[0].extension.valueCode = #SHALL

* rest[clientSlice].resource[AllergyIntoleranceSlice].searchParam[1].name = "patient"
* rest[clientSlice].resource[AllergyIntoleranceSlice].searchParam[1].type = #reference
* rest[clientSlice].resource[AllergyIntoleranceSlice].searchParam[1].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest[clientSlice].resource[AllergyIntoleranceSlice].searchParam[1].extension.valueCode = #SHALL

* rest[clientSlice].resource[AllergyIntoleranceSlice].searchParam[2].name = "encounter"
* rest[clientSlice].resource[AllergyIntoleranceSlice].searchParam[2].type = #reference
* rest[clientSlice].resource[AllergyIntoleranceSlice].searchParam[2].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest[clientSlice].resource[AllergyIntoleranceSlice].searchParam[2].extension.valueCode = #SHALL

* rest[clientSlice].resource[AllergyIntoleranceSlice].searchParam[3].name = "code"
* rest[clientSlice].resource[AllergyIntoleranceSlice].searchParam[3].type = #token
* rest[clientSlice].resource[AllergyIntoleranceSlice].searchParam[3].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest[clientSlice].resource[AllergyIntoleranceSlice].searchParam[3].extension.valueCode = #SHALL

* rest[clientSlice].resource[AllergyIntoleranceSlice].extension[0].url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-search-parameter-combination"
* rest[clientSlice].resource[AllergyIntoleranceSlice].extension[0].extension[0].url = "required"
* rest[clientSlice].resource[AllergyIntoleranceSlice].extension[0].extension[0].valueString = "_id"
* rest[clientSlice].resource[AllergyIntoleranceSlice].extension[0].extension[1].url = "required"
* rest[clientSlice].resource[AllergyIntoleranceSlice].extension[0].extension[1].valueString = "patient"
* rest[clientSlice].resource[AllergyIntoleranceSlice].extension[0].extension[2].url = "required"
* rest[clientSlice].resource[AllergyIntoleranceSlice].extension[0].extension[2].valueString = "encounter"
* rest[clientSlice].resource[AllergyIntoleranceSlice].extension[0].extension[3].url = "required"
* rest[clientSlice].resource[AllergyIntoleranceSlice].extension[0].extension[3].valueString = "code"

* rest[clientSlice].resource[ConditionSlice].type = #Condition

* rest[clientSlice].resource[ConditionSlice].interaction[0].code = #search-type
* rest[clientSlice].resource[ConditionSlice].interaction[0].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest[clientSlice].resource[ConditionSlice].interaction[0].extension.valueCode = #SHOULD

* rest[clientSlice].resource[ConditionSlice].searchParam[0].name = "_id"
* rest[clientSlice].resource[ConditionSlice].searchParam[0].type = #reference
* rest[clientSlice].resource[ConditionSlice].searchParam[0].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest[clientSlice].resource[ConditionSlice].searchParam[0].extension.valueCode = #SHALL

* rest[clientSlice].resource[ConditionSlice].searchParam[1].name = "patient"
* rest[clientSlice].resource[ConditionSlice].searchParam[1].type = #reference
* rest[clientSlice].resource[ConditionSlice].searchParam[1].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest[clientSlice].resource[ConditionSlice].searchParam[1].extension.valueCode = #SHALL

* rest[clientSlice].resource[ConditionSlice].searchParam[2].name = "encounter"
* rest[clientSlice].resource[ConditionSlice].searchParam[2].type = #reference
* rest[clientSlice].resource[ConditionSlice].searchParam[2].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest[clientSlice].resource[ConditionSlice].searchParam[2].extension.valueCode = #SHALL

* rest[clientSlice].resource[ConditionSlice].searchParam[3].name = "code"
* rest[clientSlice].resource[ConditionSlice].searchParam[3].type = #token
* rest[clientSlice].resource[ConditionSlice].searchParam[3].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest[clientSlice].resource[ConditionSlice].searchParam[3].extension.valueCode = #SHALL

* rest[clientSlice].resource[ConditionSlice].extension[0].url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-search-parameter-combination"
* rest[clientSlice].resource[ConditionSlice].extension[0].extension[0].url = "required"
* rest[clientSlice].resource[ConditionSlice].extension[0].extension[0].valueString = "_id"
* rest[clientSlice].resource[ConditionSlice].extension[0].extension[1].url = "required"
* rest[clientSlice].resource[ConditionSlice].extension[0].extension[1].valueString = "patient"
* rest[clientSlice].resource[ConditionSlice].extension[0].extension[2].url = "required"
* rest[clientSlice].resource[ConditionSlice].extension[0].extension[2].valueString = "encounter"
* rest[clientSlice].resource[ConditionSlice].extension[0].extension[3].url = "required"
* rest[clientSlice].resource[ConditionSlice].extension[0].extension[3].valueString = "code"

* rest[clientSlice].resource[DiagnosticReportSlice].type = #DiagnosticReport

* rest[clientSlice].resource[DiagnosticReportSlice].interaction[0].code = #search-type
* rest[clientSlice].resource[DiagnosticReportSlice].interaction[0].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest[clientSlice].resource[DiagnosticReportSlice].interaction[0].extension.valueCode = #SHOULD

* rest[clientSlice].resource[DiagnosticReportSlice].searchParam[0].name = "_id"
* rest[clientSlice].resource[DiagnosticReportSlice].searchParam[0].type = #reference
* rest[clientSlice].resource[DiagnosticReportSlice].searchParam[0].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest[clientSlice].resource[DiagnosticReportSlice].searchParam[0].extension.valueCode = #SHALL

* rest[clientSlice].resource[DiagnosticReportSlice].searchParam[1].name = "patient"
* rest[clientSlice].resource[DiagnosticReportSlice].searchParam[1].type = #reference
* rest[clientSlice].resource[DiagnosticReportSlice].searchParam[1].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest[clientSlice].resource[DiagnosticReportSlice].searchParam[1].extension.valueCode = #SHALL

* rest[clientSlice].resource[DiagnosticReportSlice].searchParam[2].name = "encounter"
* rest[clientSlice].resource[DiagnosticReportSlice].searchParam[2].type = #reference
* rest[clientSlice].resource[DiagnosticReportSlice].searchParam[2].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest[clientSlice].resource[DiagnosticReportSlice].searchParam[2].extension.valueCode = #SHALL

* rest[clientSlice].resource[DiagnosticReportSlice].searchParam[3].name = "code"
* rest[clientSlice].resource[DiagnosticReportSlice].searchParam[3].type = #token
* rest[clientSlice].resource[DiagnosticReportSlice].searchParam[3].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest[clientSlice].resource[DiagnosticReportSlice].searchParam[3].extension.valueCode = #SHALL

* rest[clientSlice].resource[DiagnosticReportSlice].extension[0].url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-search-parameter-combination"
* rest[clientSlice].resource[DiagnosticReportSlice].extension[0].extension[0].url = "required"
* rest[clientSlice].resource[DiagnosticReportSlice].extension[0].extension[0].valueString = "_id"
* rest[clientSlice].resource[DiagnosticReportSlice].extension[0].extension[1].url = "required"
* rest[clientSlice].resource[DiagnosticReportSlice].extension[0].extension[1].valueString = "patient"
* rest[clientSlice].resource[DiagnosticReportSlice].extension[0].extension[2].url = "required"
* rest[clientSlice].resource[DiagnosticReportSlice].extension[0].extension[2].valueString = "encounter"
* rest[clientSlice].resource[DiagnosticReportSlice].extension[0].extension[3].url = "required"
* rest[clientSlice].resource[DiagnosticReportSlice].extension[0].extension[3].valueString = "code"

* rest[clientSlice].resource[MedicationRequestSlice].type = #MedicationRequest

* rest[clientSlice].resource[MedicationRequestSlice].interaction[0].code = #search-type
* rest[clientSlice].resource[MedicationRequestSlice].interaction[0].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest[clientSlice].resource[MedicationRequestSlice].interaction[0].extension.valueCode = #SHOULD

* rest[clientSlice].resource[MedicationRequestSlice].searchParam[0].name = "_id"
* rest[clientSlice].resource[MedicationRequestSlice].searchParam[0].type = #reference
* rest[clientSlice].resource[MedicationRequestSlice].searchParam[0].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest[clientSlice].resource[MedicationRequestSlice].searchParam[0].extension.valueCode = #SHALL

* rest[clientSlice].resource[MedicationRequestSlice].searchParam[1].name = "patient"
* rest[clientSlice].resource[MedicationRequestSlice].searchParam[1].type = #reference
* rest[clientSlice].resource[MedicationRequestSlice].searchParam[1].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest[clientSlice].resource[MedicationRequestSlice].searchParam[1].extension.valueCode = #SHALL

* rest[clientSlice].resource[MedicationRequestSlice].searchParam[2].name = "encounter"
* rest[clientSlice].resource[MedicationRequestSlice].searchParam[2].type = #reference
* rest[clientSlice].resource[MedicationRequestSlice].searchParam[2].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest[clientSlice].resource[MedicationRequestSlice].searchParam[2].extension.valueCode = #SHALL

* rest[clientSlice].resource[MedicationRequestSlice].searchParam[3].name = "code"
* rest[clientSlice].resource[MedicationRequestSlice].searchParam[3].type = #token
* rest[clientSlice].resource[MedicationRequestSlice].searchParam[3].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest[clientSlice].resource[MedicationRequestSlice].searchParam[3].extension.valueCode = #SHALL

* rest[clientSlice].resource[MedicationRequestSlice].extension[0].url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-search-parameter-combination"
* rest[clientSlice].resource[MedicationRequestSlice].extension[0].extension[0].url = "required"
* rest[clientSlice].resource[MedicationRequestSlice].extension[0].extension[0].valueString = "_id"
* rest[clientSlice].resource[MedicationRequestSlice].extension[0].extension[1].url = "required"
* rest[clientSlice].resource[MedicationRequestSlice].extension[0].extension[1].valueString = "patient"
* rest[clientSlice].resource[MedicationRequestSlice].extension[0].extension[2].url = "required"
* rest[clientSlice].resource[MedicationRequestSlice].extension[0].extension[2].valueString = "encounter"
* rest[clientSlice].resource[MedicationRequestSlice].extension[0].extension[3].url = "required"
* rest[clientSlice].resource[MedicationRequestSlice].extension[0].extension[3].valueString = "code"

* rest[clientSlice].resource[ObservationSlice].type = #Observation

* rest[clientSlice].resource[ObservationSlice].interaction[0].code = #search-type
* rest[clientSlice].resource[ObservationSlice].interaction[0].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest[clientSlice].resource[ObservationSlice].interaction[0].extension.valueCode = #SHOULD

* rest[clientSlice].resource[ObservationSlice].searchParam[0].name = "_id"
* rest[clientSlice].resource[ObservationSlice].searchParam[0].type = #reference
* rest[clientSlice].resource[ObservationSlice].searchParam[0].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest[clientSlice].resource[ObservationSlice].searchParam[0].extension.valueCode = #SHALL

* rest[clientSlice].resource[ObservationSlice].searchParam[1].name = "patient"
* rest[clientSlice].resource[ObservationSlice].searchParam[1].type = #reference
* rest[clientSlice].resource[ObservationSlice].searchParam[1].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest[clientSlice].resource[ObservationSlice].searchParam[1].extension.valueCode = #SHALL

* rest[clientSlice].resource[ObservationSlice].searchParam[2].name = "encounter"
* rest[clientSlice].resource[ObservationSlice].searchParam[2].type = #reference
* rest[clientSlice].resource[ObservationSlice].searchParam[2].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest[clientSlice].resource[ObservationSlice].searchParam[2].extension.valueCode = #SHALL

* rest[clientSlice].resource[ObservationSlice].searchParam[3].name = "code"
* rest[clientSlice].resource[ObservationSlice].searchParam[3].type = #token
* rest[clientSlice].resource[ObservationSlice].searchParam[3].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest[clientSlice].resource[ObservationSlice].searchParam[3].extension.valueCode = #SHALL

* rest[clientSlice].resource[ObservationSlice].extension[0].url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-search-parameter-combination"
* rest[clientSlice].resource[ObservationSlice].extension[0].extension[0].url = "required"
* rest[clientSlice].resource[ObservationSlice].extension[0].extension[0].valueString = "_id"
* rest[clientSlice].resource[ObservationSlice].extension[0].extension[1].url = "required"
* rest[clientSlice].resource[ObservationSlice].extension[0].extension[1].valueString = "patient"
* rest[clientSlice].resource[ObservationSlice].extension[0].extension[2].url = "required"
* rest[clientSlice].resource[ObservationSlice].extension[0].extension[2].valueString = "encounter"
* rest[clientSlice].resource[ObservationSlice].extension[0].extension[3].url = "required"
* rest[clientSlice].resource[ObservationSlice].extension[0].extension[3].valueString = "code"

* rest[clientSlice].resource[ProcedureSlice].type = #Procedure

* rest[clientSlice].resource[ProcedureSlice].interaction[0].code = #search-type
* rest[clientSlice].resource[ProcedureSlice].interaction[0].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest[clientSlice].resource[ProcedureSlice].interaction[0].extension.valueCode = #SHOULD

* rest[clientSlice].resource[ProcedureSlice].searchParam[0].name = "_id"
* rest[clientSlice].resource[ProcedureSlice].searchParam[0].type = #reference
* rest[clientSlice].resource[ProcedureSlice].searchParam[0].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest[clientSlice].resource[ProcedureSlice].searchParam[0].extension.valueCode = #SHALL

* rest[clientSlice].resource[ProcedureSlice].searchParam[1].name = "patient"
* rest[clientSlice].resource[ProcedureSlice].searchParam[1].type = #reference
* rest[clientSlice].resource[ProcedureSlice].searchParam[1].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest[clientSlice].resource[ProcedureSlice].searchParam[1].extension.valueCode = #SHALL

* rest[clientSlice].resource[ProcedureSlice].searchParam[2].name = "encounter"
* rest[clientSlice].resource[ProcedureSlice].searchParam[2].type = #reference
* rest[clientSlice].resource[ProcedureSlice].searchParam[2].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest[clientSlice].resource[ProcedureSlice].searchParam[2].extension.valueCode = #SHALL

* rest[clientSlice].resource[ProcedureSlice].searchParam[3].name = "code"
* rest[clientSlice].resource[ProcedureSlice].searchParam[3].type = #token
* rest[clientSlice].resource[ProcedureSlice].searchParam[3].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest[clientSlice].resource[ProcedureSlice].searchParam[3].extension.valueCode = #SHALL

* rest[clientSlice].resource[ProcedureSlice].extension[0].url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-search-parameter-combination"
* rest[clientSlice].resource[ProcedureSlice].extension[0].extension[0].url = "required"
* rest[clientSlice].resource[ProcedureSlice].extension[0].extension[0].valueString = "_id"
* rest[clientSlice].resource[ProcedureSlice].extension[0].extension[1].url = "required"
* rest[clientSlice].resource[ProcedureSlice].extension[0].extension[1].valueString = "patient"
* rest[clientSlice].resource[ProcedureSlice].extension[0].extension[2].url = "required"
* rest[clientSlice].resource[ProcedureSlice].extension[0].extension[2].valueString = "encounter"
* rest[clientSlice].resource[ProcedureSlice].extension[0].extension[3].url = "required"
* rest[clientSlice].resource[ProcedureSlice].extension[0].extension[3].valueString = "code"

* rest[clientSlice].resource[ServiceRequestSlice].type = #ServiceRequest

* rest[clientSlice].resource[ServiceRequestSlice].interaction[0].code = #search-type
* rest[clientSlice].resource[ServiceRequestSlice].interaction[0].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest[clientSlice].resource[ServiceRequestSlice].interaction[0].extension.valueCode = #SHOULD

* rest[clientSlice].resource[ServiceRequestSlice].searchParam[0].name = "_id"
* rest[clientSlice].resource[ServiceRequestSlice].searchParam[0].type = #reference
* rest[clientSlice].resource[ServiceRequestSlice].searchParam[0].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest[clientSlice].resource[ServiceRequestSlice].searchParam[0].extension.valueCode = #SHALL

* rest[clientSlice].resource[ServiceRequestSlice].searchParam[1].name = "patient"
* rest[clientSlice].resource[ServiceRequestSlice].searchParam[1].type = #reference
* rest[clientSlice].resource[ServiceRequestSlice].searchParam[1].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest[clientSlice].resource[ServiceRequestSlice].searchParam[1].extension.valueCode = #SHALL

* rest[clientSlice].resource[ServiceRequestSlice].searchParam[2].name = "encounter"
* rest[clientSlice].resource[ServiceRequestSlice].searchParam[2].type = #reference
* rest[clientSlice].resource[ServiceRequestSlice].searchParam[2].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest[clientSlice].resource[ServiceRequestSlice].searchParam[2].extension.valueCode = #SHALL

* rest[clientSlice].resource[ServiceRequestSlice].searchParam[3].name = "code"
* rest[clientSlice].resource[ServiceRequestSlice].searchParam[3].type = #token
* rest[clientSlice].resource[ServiceRequestSlice].searchParam[3].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest[clientSlice].resource[ServiceRequestSlice].searchParam[3].extension.valueCode = #SHALL

* rest[clientSlice].resource[ServiceRequestSlice].extension[0].url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-search-parameter-combination"
* rest[clientSlice].resource[ServiceRequestSlice].extension[0].extension[0].url = "required"
* rest[clientSlice].resource[ServiceRequestSlice].extension[0].extension[0].valueString = "_id"
* rest[clientSlice].resource[ServiceRequestSlice].extension[0].extension[1].url = "required"
* rest[clientSlice].resource[ServiceRequestSlice].extension[0].extension[1].valueString = "patient"
* rest[clientSlice].resource[ServiceRequestSlice].extension[0].extension[2].url = "required"
* rest[clientSlice].resource[ServiceRequestSlice].extension[0].extension[2].valueString = "encounter"
* rest[clientSlice].resource[ServiceRequestSlice].extension[0].extension[3].url = "required"
* rest[clientSlice].resource[ServiceRequestSlice].extension[0].extension[3].valueString = "code"

* rest[clientSlice].resource[DocumentReferenceSlice].type = #DocumentReference

* rest[clientSlice].resource[DocumentReferenceSlice].interaction[0].code = #search-type
* rest[clientSlice].resource[DocumentReferenceSlice].interaction[0].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest[clientSlice].resource[DocumentReferenceSlice].interaction[0].extension.valueCode = #SHOULD

* rest[clientSlice].resource[DocumentReferenceSlice].searchParam[0].name = "_id"
* rest[clientSlice].resource[DocumentReferenceSlice].searchParam[0].type = #reference
* rest[clientSlice].resource[DocumentReferenceSlice].searchParam[0].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest[clientSlice].resource[DocumentReferenceSlice].searchParam[0].extension.valueCode = #SHALL

* rest[clientSlice].resource[DocumentReferenceSlice].searchParam[1].name = "patient"
* rest[clientSlice].resource[DocumentReferenceSlice].searchParam[1].type = #reference
* rest[clientSlice].resource[DocumentReferenceSlice].searchParam[1].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest[clientSlice].resource[DocumentReferenceSlice].searchParam[1].extension.valueCode = #SHALL

* rest[clientSlice].resource[DocumentReferenceSlice].searchParam[2].name = "encounter"
* rest[clientSlice].resource[DocumentReferenceSlice].searchParam[2].type = #reference
* rest[clientSlice].resource[DocumentReferenceSlice].searchParam[2].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest[clientSlice].resource[DocumentReferenceSlice].searchParam[2].extension.valueCode = #SHALL

* rest[clientSlice].resource[DocumentReferenceSlice].searchParam[3].name = "code"
* rest[clientSlice].resource[DocumentReferenceSlice].searchParam[3].type = #token
* rest[clientSlice].resource[DocumentReferenceSlice].searchParam[3].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest[clientSlice].resource[DocumentReferenceSlice].searchParam[3].extension.valueCode = #SHALL

* rest[clientSlice].resource[DocumentReferenceSlice].extension[0].url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-search-parameter-combination"
* rest[clientSlice].resource[DocumentReferenceSlice].extension[0].extension[0].url = "required"
* rest[clientSlice].resource[DocumentReferenceSlice].extension[0].extension[0].valueString = "_id"
* rest[clientSlice].resource[DocumentReferenceSlice].extension[0].extension[1].url = "required"
* rest[clientSlice].resource[DocumentReferenceSlice].extension[0].extension[1].valueString = "patient"
* rest[clientSlice].resource[DocumentReferenceSlice].extension[0].extension[2].url = "required"
* rest[clientSlice].resource[DocumentReferenceSlice].extension[0].extension[2].valueString = "encounter"
* rest[clientSlice].resource[DocumentReferenceSlice].extension[0].extension[3].url = "required"
* rest[clientSlice].resource[DocumentReferenceSlice].extension[0].extension[3].valueString = "code"

* rest[clientSlice].resource[FamilyMemberHistorySlice].type = #FamilyMemberHistory

* rest[clientSlice].resource[FamilyMemberHistorySlice].interaction[0].code = #search-type
* rest[clientSlice].resource[FamilyMemberHistorySlice].interaction[0].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest[clientSlice].resource[FamilyMemberHistorySlice].interaction[0].extension.valueCode = #SHOULD

* rest[clientSlice].resource[FamilyMemberHistorySlice].searchParam[0].name = "_id"
* rest[clientSlice].resource[FamilyMemberHistorySlice].searchParam[0].type = #reference
* rest[clientSlice].resource[FamilyMemberHistorySlice].searchParam[0].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest[clientSlice].resource[FamilyMemberHistorySlice].searchParam[0].extension.valueCode = #SHALL

* rest[clientSlice].resource[FamilyMemberHistorySlice].searchParam[1].name = "patient"
* rest[clientSlice].resource[FamilyMemberHistorySlice].searchParam[1].type = #reference
* rest[clientSlice].resource[FamilyMemberHistorySlice].searchParam[1].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest[clientSlice].resource[FamilyMemberHistorySlice].searchParam[1].extension.valueCode = #SHALL

* rest[clientSlice].resource[FamilyMemberHistorySlice].searchParam[2].name = "encounter"
* rest[clientSlice].resource[FamilyMemberHistorySlice].searchParam[2].type = #reference
* rest[clientSlice].resource[FamilyMemberHistorySlice].searchParam[2].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest[clientSlice].resource[FamilyMemberHistorySlice].searchParam[2].extension.valueCode = #SHALL

* rest[clientSlice].resource[FamilyMemberHistorySlice].searchParam[3].name = "code"
* rest[clientSlice].resource[FamilyMemberHistorySlice].searchParam[3].type = #token
* rest[clientSlice].resource[FamilyMemberHistorySlice].searchParam[3].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest[clientSlice].resource[FamilyMemberHistorySlice].searchParam[3].extension.valueCode = #SHALL

* rest[clientSlice].resource[FamilyMemberHistorySlice].extension[0].url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-search-parameter-combination"
* rest[clientSlice].resource[FamilyMemberHistorySlice].extension[0].extension[0].url = "required"
* rest[clientSlice].resource[FamilyMemberHistorySlice].extension[0].extension[0].valueString = "_id"
* rest[clientSlice].resource[FamilyMemberHistorySlice].extension[0].extension[1].url = "required"
* rest[clientSlice].resource[FamilyMemberHistorySlice].extension[0].extension[1].valueString = "patient"
* rest[clientSlice].resource[FamilyMemberHistorySlice].extension[0].extension[2].url = "required"
* rest[clientSlice].resource[FamilyMemberHistorySlice].extension[0].extension[2].valueString = "encounter"
* rest[clientSlice].resource[FamilyMemberHistorySlice].extension[0].extension[3].url = "required"
* rest[clientSlice].resource[FamilyMemberHistorySlice].extension[0].extension[3].valueString = "code"

* rest[clientSlice].resource[MedicationAdministrationSlice].type = #MedicationAdministration

* rest[clientSlice].resource[MedicationAdministrationSlice].interaction[0].code = #search-type
* rest[clientSlice].resource[MedicationAdministrationSlice].interaction[0].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest[clientSlice].resource[MedicationAdministrationSlice].interaction[0].extension.valueCode = #SHOULD

* rest[clientSlice].resource[MedicationAdministrationSlice].searchParam[0].name = "_id"
* rest[clientSlice].resource[MedicationAdministrationSlice].searchParam[0].type = #reference
* rest[clientSlice].resource[MedicationAdministrationSlice].searchParam[0].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest[clientSlice].resource[MedicationAdministrationSlice].searchParam[0].extension.valueCode = #SHALL

* rest[clientSlice].resource[MedicationAdministrationSlice].searchParam[1].name = "patient"
* rest[clientSlice].resource[MedicationAdministrationSlice].searchParam[1].type = #reference
* rest[clientSlice].resource[MedicationAdministrationSlice].searchParam[1].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest[clientSlice].resource[MedicationAdministrationSlice].searchParam[1].extension.valueCode = #SHALL

* rest[clientSlice].resource[MedicationAdministrationSlice].searchParam[2].name = "encounter"
* rest[clientSlice].resource[MedicationAdministrationSlice].searchParam[2].type = #reference
* rest[clientSlice].resource[MedicationAdministrationSlice].searchParam[2].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest[clientSlice].resource[MedicationAdministrationSlice].searchParam[2].extension.valueCode = #SHALL

* rest[clientSlice].resource[MedicationAdministrationSlice].searchParam[3].name = "code"
* rest[clientSlice].resource[MedicationAdministrationSlice].searchParam[3].type = #token
* rest[clientSlice].resource[MedicationAdministrationSlice].searchParam[3].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest[clientSlice].resource[MedicationAdministrationSlice].searchParam[3].extension.valueCode = #SHALL

* rest[clientSlice].resource[MedicationAdministrationSlice].extension[0].url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-search-parameter-combination"
* rest[clientSlice].resource[MedicationAdministrationSlice].extension[0].extension[0].url = "required"
* rest[clientSlice].resource[MedicationAdministrationSlice].extension[0].extension[0].valueString = "_id"
* rest[clientSlice].resource[MedicationAdministrationSlice].extension[0].extension[1].url = "required"
* rest[clientSlice].resource[MedicationAdministrationSlice].extension[0].extension[1].valueString = "patient"
* rest[clientSlice].resource[MedicationAdministrationSlice].extension[0].extension[2].url = "required"
* rest[clientSlice].resource[MedicationAdministrationSlice].extension[0].extension[2].valueString = "encounter"
* rest[clientSlice].resource[MedicationAdministrationSlice].extension[0].extension[3].url = "required"
* rest[clientSlice].resource[MedicationAdministrationSlice].extension[0].extension[3].valueString = "code"

* rest[clientSlice].resource[MedicationDispenseSlice].type = #MedicationDispense

* rest[clientSlice].resource[MedicationDispenseSlice].interaction[0].code = #search-type
* rest[clientSlice].resource[MedicationDispenseSlice].interaction[0].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest[clientSlice].resource[MedicationDispenseSlice].interaction[0].extension.valueCode = #SHOULD

* rest[clientSlice].resource[MedicationDispenseSlice].searchParam[0].name = "_id"
* rest[clientSlice].resource[MedicationDispenseSlice].searchParam[0].type = #reference
* rest[clientSlice].resource[MedicationDispenseSlice].searchParam[0].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest[clientSlice].resource[MedicationDispenseSlice].searchParam[0].extension.valueCode = #SHALL

* rest[clientSlice].resource[MedicationDispenseSlice].searchParam[1].name = "patient"
* rest[clientSlice].resource[MedicationDispenseSlice].searchParam[1].type = #reference
* rest[clientSlice].resource[MedicationDispenseSlice].searchParam[1].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest[clientSlice].resource[MedicationDispenseSlice].searchParam[1].extension.valueCode = #SHALL

* rest[clientSlice].resource[MedicationDispenseSlice].searchParam[2].name = "encounter"
* rest[clientSlice].resource[MedicationDispenseSlice].searchParam[2].type = #reference
* rest[clientSlice].resource[MedicationDispenseSlice].searchParam[2].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest[clientSlice].resource[MedicationDispenseSlice].searchParam[2].extension.valueCode = #SHALL

* rest[clientSlice].resource[MedicationDispenseSlice].searchParam[3].name = "code"
* rest[clientSlice].resource[MedicationDispenseSlice].searchParam[3].type = #token
* rest[clientSlice].resource[MedicationDispenseSlice].searchParam[3].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest[clientSlice].resource[MedicationDispenseSlice].searchParam[3].extension.valueCode = #SHALL

* rest[clientSlice].resource[MedicationDispenseSlice].extension[0].url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-search-parameter-combination"
* rest[clientSlice].resource[MedicationDispenseSlice].extension[0].extension[0].url = "required"
* rest[clientSlice].resource[MedicationDispenseSlice].extension[0].extension[0].valueString = "_id"
* rest[clientSlice].resource[MedicationDispenseSlice].extension[0].extension[1].url = "required"
* rest[clientSlice].resource[MedicationDispenseSlice].extension[0].extension[1].valueString = "patient"
* rest[clientSlice].resource[MedicationDispenseSlice].extension[0].extension[2].url = "required"
* rest[clientSlice].resource[MedicationDispenseSlice].extension[0].extension[2].valueString = "encounter"
* rest[clientSlice].resource[MedicationDispenseSlice].extension[0].extension[3].url = "required"
* rest[clientSlice].resource[MedicationDispenseSlice].extension[0].extension[3].valueString = "code"

* rest[clientSlice].resource[MedicationStatementSlice].type = #MedicationStatement

* rest[clientSlice].resource[MedicationStatementSlice].interaction[0].code = #search-type
* rest[clientSlice].resource[MedicationStatementSlice].interaction[0].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest[clientSlice].resource[MedicationStatementSlice].interaction[0].extension.valueCode = #SHOULD

* rest[clientSlice].resource[MedicationStatementSlice].searchParam[0].name = "_id"
* rest[clientSlice].resource[MedicationStatementSlice].searchParam[0].type = #reference
* rest[clientSlice].resource[MedicationStatementSlice].searchParam[0].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest[clientSlice].resource[MedicationStatementSlice].searchParam[0].extension.valueCode = #SHALL

* rest[clientSlice].resource[MedicationStatementSlice].searchParam[1].name = "patient"
* rest[clientSlice].resource[MedicationStatementSlice].searchParam[1].type = #reference
* rest[clientSlice].resource[MedicationStatementSlice].searchParam[1].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest[clientSlice].resource[MedicationStatementSlice].searchParam[1].extension.valueCode = #SHALL

* rest[clientSlice].resource[MedicationStatementSlice].searchParam[2].name = "encounter"
* rest[clientSlice].resource[MedicationStatementSlice].searchParam[2].type = #reference
* rest[clientSlice].resource[MedicationStatementSlice].searchParam[2].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest[clientSlice].resource[MedicationStatementSlice].searchParam[2].extension.valueCode = #SHALL

* rest[clientSlice].resource[MedicationStatementSlice].searchParam[3].name = "code"
* rest[clientSlice].resource[MedicationStatementSlice].searchParam[3].type = #token
* rest[clientSlice].resource[MedicationStatementSlice].searchParam[3].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest[clientSlice].resource[MedicationStatementSlice].searchParam[3].extension.valueCode = #SHALL

* rest[clientSlice].resource[MedicationStatementSlice].extension[0].url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-search-parameter-combination"
* rest[clientSlice].resource[MedicationStatementSlice].extension[0].extension[0].url = "required"
* rest[clientSlice].resource[MedicationStatementSlice].extension[0].extension[0].valueString = "_id"
* rest[clientSlice].resource[MedicationStatementSlice].extension[0].extension[1].url = "required"
* rest[clientSlice].resource[MedicationStatementSlice].extension[0].extension[1].valueString = "patient"
* rest[clientSlice].resource[MedicationStatementSlice].extension[0].extension[2].url = "required"
* rest[clientSlice].resource[MedicationStatementSlice].extension[0].extension[2].valueString = "encounter"
* rest[clientSlice].resource[MedicationStatementSlice].extension[0].extension[3].url = "required"
* rest[clientSlice].resource[MedicationStatementSlice].extension[0].extension[3].valueString = "code"

* rest[serverSlice].mode = #server

* rest[serverSlice].resource[MeasureSlice].type = #Measure

* rest[serverSlice].resource[MeasureSlice].operation[0].name = "evaluate-measure"
* rest[serverSlice].resource[MeasureSlice].operation[0].definition = "http://hl7.org/fhir/uv/saner/OperationDefinition/Measure-evaluate-measure"
* rest[serverSlice].resource[MeasureSlice].operation[0].documentation = "Evaluate the measure"
