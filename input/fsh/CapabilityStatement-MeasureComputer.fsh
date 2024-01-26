
Instance: MeasureComputer
InstanceOf: CapabilityStatementWithSlices
Usage: #definition
Description: """
Defines the requirements for the Measure Computer."""
* insert SanerDefinitionContent
* name = "MeasureComputer"
* title = "Measure Computer"
* date = "2021-07-26"
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
* text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\"><h2 id=\"title\">Measure Computer</h2><ul><li><b>Official URL:</b><code>http://hl7.org/fhir/uv/saner/CapabilityStatement/MeasureComputer</code></li><li><b>Implementation Guide Version:</b> 1.0.1</li><li><b>FHIR Version:</b> 4.0.1</li><li><b>Intended Use:</b> Requirements</li><li><b>Supported Formats:</b>\n\t\t\t\t\n                    XML, JSON\n\t\t\t\t\n\t\t\t\t</li><li><b>Published:</b> 2021-07-26</li><li><b>Published by:</b> HL7 International Public Health Workgroup</li><li><b>Status:</b> Draft (experimental)</li></ul><p>Defines the requirements for the Measure Computer.</p><!-- REST Behavior --><h3 id=\"behavior\">FHIR Client RESTful Capabilities</h3><h3 class=\"no_toc\" id=\"resource--details\">RESTful Capabilities by Resource/Profile:</h3><p><strong>Summary</strong></p><table class=\"grid\"><thead><tr><th>Resource Type</th><th>Supported Interactions</th><th>Supported Profiles</th><th>Supported Searches</th><th>Supported <code>_includes</code></th><th>Supported <code>_revincludes</code></th><th>Supported Operations</th></tr></thead><tbody><tr><td><a href=\"#measure\">Measure</a></td><td>\n\t\t\t\t\t\t\t\t\t\t\n\t\t\t\t\t\t\t\t\t</td><!-- Supported Profiles --><td>\n\t\t\t\t\t\t\t\t\t\t\n\t\t\t\t\t\t\t\t\t</td><!-- Supported Searches --><td>\n\t\t\t\t\t\t\t\t\t\t\n\t\t\t\t\t\t\t\t\t</td><!-- Supported _includes --><td>\n\t\t\t\t\t\t\t\t\t\t\n\t\t\t\t\t\t\t\t\t</td><!-- Supported _revincludes --><td>\n\t\t\t\t\t\t\t\t\t\t\n\t\t\t\t\t\t\t\t\t</td><!-- Supported Operations --><td>\n\t\t\t\t\t\t\t\t\t\t$evaluate-measure\n\t\t\t\t\t\t\t\t\t</td></tr><tr><td><a href=\"#patient\">Patient</a></td><td>\n\t\t\t\t\t\t\t\t\t\t\n\t\t\t\t\t\t\t\t\t\t\tsearch-type\n\t\t\t\t\t\t\t\t\t\t\t\n\t\t\t\t\t\t\t\t\t\t\n\t\t\t\t\t\t\t\t\t</td><!-- Supported Profiles --><td>\n\t\t\t\t\t\t\t\t\t\t\n\t\t\t\t\t\t\t\t\t</td><!-- Supported Searches --><td>\n\t\t\t\t\t\t\t\t\t\t_id, date, class, _id, _id+class+date\n\t\t\t\t\t\t\t\t\t\t\n\t\t\t\t\t\t\t\t\t\t\n\t\t\t\t\t\t\t\t\t</td><!-- Supported _includes --><td>\n\t\t\t\t\t\t\t\t\t\t\n\t\t\t\t\t\t\t\t\t</td><!-- Supported _revincludes --><td>\n\t\t\t\t\t\t\t\t\t\t\n\t\t\t\t\t\t\t\t\t</td><!-- Supported Operations --><td>\n\t\t\t\t\t\t\t\t\t\t\n\t\t\t\t\t\t\t\t\t</td></tr><tr><td><a href=\"#encounter\">Encounter</a></td><td>\n\t\t\t\t\t\t\t\t\t\t\n\t\t\t\t\t\t\t\t\t\t\tsearch-type\n\t\t\t\t\t\t\t\t\t\t\t\n\t\t\t\t\t\t\t\t\t\t\n\t\t\t\t\t\t\t\t\t</td><!-- Supported Profiles --><td>\n\t\t\t\t\t\t\t\t\t\t\n\t\t\t\t\t\t\t\t\t</td><!-- Supported Searches --><td>\n\t\t\t\t\t\t\t\t\t\t_id, date, class, patient, encounter, code, _id, _id+class+date, _id+patient+encounter+code\n\t\t\t\t\t\t\t\t\t\t\n\t\t\t\t\t\t\t\t\t\t\n\t\t\t\t\t\t\t\t\t</td><!-- Supported _includes --><td>\n\t\t\t\t\t\t\t\t\t\t\n\t\t\t\t\t\t\t\t\t</td><!-- Supported _revincludes --><td>\n\t\t\t\t\t\t\t\t\t\t\n\t\t\t\t\t\t\t\t\t</td><!-- Supported Operations --><td>\n\t\t\t\t\t\t\t\t\t\t\n\t\t\t\t\t\t\t\t\t</td></tr><tr><td><a href=\"#allergyintolerance\">AllergyIntolerance</a></td><td>\n\t\t\t\t\t\t\t\t\t\t\n\t\t\t\t\t\t\t\t\t\t\tsearch-type\n\t\t\t\t\t\t\t\t\t\t\t\n\t\t\t\t\t\t\t\t\t\t\n\t\t\t\t\t\t\t\t\t</td><!-- Supported Profiles --><td>\n\t\t\t\t\t\t\t\t\t\t\n\t\t\t\t\t\t\t\t\t</td><!-- Supported Searches --><td>\n\t\t\t\t\t\t\t\t\t\t_id, patient, encounter, code, _id+patient+encounter+code\n\t\t\t\t\t\t\t\t\t\t\n\t\t\t\t\t\t\t\t\t\t\n\t\t\t\t\t\t\t\t\t</td><!-- Supported _includes --><td>\n\t\t\t\t\t\t\t\t\t\t\n\t\t\t\t\t\t\t\t\t</td><!-- Supported _revincludes --><td>\n\t\t\t\t\t\t\t\t\t\t\n\t\t\t\t\t\t\t\t\t</td><!-- Supported Operations --><td>\n\t\t\t\t\t\t\t\t\t\t\n\t\t\t\t\t\t\t\t\t</td></tr><tr><td><a href=\"#condition\">Condition</a></td><td>\n\t\t\t\t\t\t\t\t\t\t\n\t\t\t\t\t\t\t\t\t\t\tsearch-type\n\t\t\t\t\t\t\t\t\t\t\t\n\t\t\t\t\t\t\t\t\t\t\n\t\t\t\t\t\t\t\t\t</td><!-- Supported Profiles --><td>\n\t\t\t\t\t\t\t\t\t\t\n\t\t\t\t\t\t\t\t\t</td><!-- Supported Searches --><td>\n\t\t\t\t\t\t\t\t\t\t_id, patient, encounter, code, _id+patient+encounter+code\n\t\t\t\t\t\t\t\t\t\t\n\t\t\t\t\t\t\t\t\t\t\n\t\t\t\t\t\t\t\t\t</td><!-- Supported _includes --><td>\n\t\t\t\t\t\t\t\t\t\t\n\t\t\t\t\t\t\t\t\t</td><!-- Supported _revincludes --><td>\n\t\t\t\t\t\t\t\t\t\t\n\t\t\t\t\t\t\t\t\t</td><!-- Supported Operations --><td>\n\t\t\t\t\t\t\t\t\t\t\n\t\t\t\t\t\t\t\t\t</td></tr><tr><td><a href=\"#diagnosticreport\">DiagnosticReport</a></td><td>\n\t\t\t\t\t\t\t\t\t\t\n\t\t\t\t\t\t\t\t\t\t\tsearch-type\n\t\t\t\t\t\t\t\t\t\t\t\n\t\t\t\t\t\t\t\t\t\t\n\t\t\t\t\t\t\t\t\t</td><!-- Supported Profiles --><td>\n\t\t\t\t\t\t\t\t\t\t\n\t\t\t\t\t\t\t\t\t</td><!-- Supported Searches --><td>\n\t\t\t\t\t\t\t\t\t\t_id, patient, encounter, code, _id+patient+encounter+code\n\t\t\t\t\t\t\t\t\t\t\n\t\t\t\t\t\t\t\t\t\t\n\t\t\t\t\t\t\t\t\t</td><!-- Supported _includes --><td>\n\t\t\t\t\t\t\t\t\t\t\n\t\t\t\t\t\t\t\t\t</td><!-- Supported _revincludes --><td>\n\t\t\t\t\t\t\t\t\t\t\n\t\t\t\t\t\t\t\t\t</td><!-- Supported Operations --><td>\n\t\t\t\t\t\t\t\t\t\t\n\t\t\t\t\t\t\t\t\t</td></tr><tr><td><a href=\"#medicationrequest\">MedicationRequest</a></td><td>\n\t\t\t\t\t\t\t\t\t\t\n\t\t\t\t\t\t\t\t\t\t\tsearch-type\n\t\t\t\t\t\t\t\t\t\t\t\n\t\t\t\t\t\t\t\t\t\t\n\t\t\t\t\t\t\t\t\t</td><!-- Supported Profiles --><td>\n\t\t\t\t\t\t\t\t\t\t\n\t\t\t\t\t\t\t\t\t</td><!-- Supported Searches --><td>\n\t\t\t\t\t\t\t\t\t\t_id, patient, encounter, code, _id+patient+encounter+code\n\t\t\t\t\t\t\t\t\t\t\n\t\t\t\t\t\t\t\t\t\t\n\t\t\t\t\t\t\t\t\t</td><!-- Supported _includes --><td>\n\t\t\t\t\t\t\t\t\t\t\n\t\t\t\t\t\t\t\t\t</td><!-- Supported _revincludes --><td>\n\t\t\t\t\t\t\t\t\t\t\n\t\t\t\t\t\t\t\t\t</td><!-- Supported Operations --><td>\n\t\t\t\t\t\t\t\t\t\t\n\t\t\t\t\t\t\t\t\t</td></tr><tr><td><a href=\"#observation\">Observation</a></td><td>\n\t\t\t\t\t\t\t\t\t\t\n\t\t\t\t\t\t\t\t\t\t\tsearch-type\n\t\t\t\t\t\t\t\t\t\t\t\n\t\t\t\t\t\t\t\t\t\t\n\t\t\t\t\t\t\t\t\t</td><!-- Supported Profiles --><td>\n\t\t\t\t\t\t\t\t\t\t\n\t\t\t\t\t\t\t\t\t</td><!-- Supported Searches --><td>\n\t\t\t\t\t\t\t\t\t\t_id, patient, encounter, code, _id+patient+encounter+code\n\t\t\t\t\t\t\t\t\t\t\n\t\t\t\t\t\t\t\t\t\t\n\t\t\t\t\t\t\t\t\t</td><!-- Supported _includes --><td>\n\t\t\t\t\t\t\t\t\t\t\n\t\t\t\t\t\t\t\t\t</td><!-- Supported _revincludes --><td>\n\t\t\t\t\t\t\t\t\t\t\n\t\t\t\t\t\t\t\t\t</td><!-- Supported Operations --><td>\n\t\t\t\t\t\t\t\t\t\t\n\t\t\t\t\t\t\t\t\t</td></tr><tr><td><a href=\"#procedure\">Procedure</a></td><td>\n\t\t\t\t\t\t\t\t\t\t\n\t\t\t\t\t\t\t\t\t\t\tsearch-type\n\t\t\t\t\t\t\t\t\t\t\t\n\t\t\t\t\t\t\t\t\t\t\n\t\t\t\t\t\t\t\t\t</td><!-- Supported Profiles --><td>\n\t\t\t\t\t\t\t\t\t\t\n\t\t\t\t\t\t\t\t\t</td><!-- Supported Searches --><td>\n\t\t\t\t\t\t\t\t\t\t_id, patient, encounter, code, _id+patient+encounter+code\n\t\t\t\t\t\t\t\t\t\t\n\t\t\t\t\t\t\t\t\t\t\n\t\t\t\t\t\t\t\t\t</td><!-- Supported _includes --><td>\n\t\t\t\t\t\t\t\t\t\t\n\t\t\t\t\t\t\t\t\t</td><!-- Supported _revincludes --><td>\n\t\t\t\t\t\t\t\t\t\t\n\t\t\t\t\t\t\t\t\t</td><!-- Supported Operations --><td>\n\t\t\t\t\t\t\t\t\t\t\n\t\t\t\t\t\t\t\t\t</td></tr><tr><td><a href=\"#servicerequest\">ServiceRequest</a></td><td>\n\t\t\t\t\t\t\t\t\t\t\n\t\t\t\t\t\t\t\t\t\t\tsearch-type\n\t\t\t\t\t\t\t\t\t\t\t\n\t\t\t\t\t\t\t\t\t\t\n\t\t\t\t\t\t\t\t\t</td><!-- Supported Profiles --><td>\n\t\t\t\t\t\t\t\t\t\t\n\t\t\t\t\t\t\t\t\t</td><!-- Supported Searches --><td>\n\t\t\t\t\t\t\t\t\t\t_id, patient, encounter, code, _id+patient+encounter+code\n\t\t\t\t\t\t\t\t\t\t\n\t\t\t\t\t\t\t\t\t\t\n\t\t\t\t\t\t\t\t\t</td><!-- Supported _includes --><td>\n\t\t\t\t\t\t\t\t\t\t\n\t\t\t\t\t\t\t\t\t</td><!-- Supported _revincludes --><td>\n\t\t\t\t\t\t\t\t\t\t\n\t\t\t\t\t\t\t\t\t</td><!-- Supported Operations --><td>\n\t\t\t\t\t\t\t\t\t\t\n\t\t\t\t\t\t\t\t\t</td></tr><tr><td><a href=\"#documentreference\">DocumentReference</a></td><td>\n\t\t\t\t\t\t\t\t\t\t\n\t\t\t\t\t\t\t\t\t\t\tsearch-type\n\t\t\t\t\t\t\t\t\t\t\t\n\t\t\t\t\t\t\t\t\t\t\n\t\t\t\t\t\t\t\t\t</td><!-- Supported Profiles --><td>\n\t\t\t\t\t\t\t\t\t\t\n\t\t\t\t\t\t\t\t\t</td><!-- Supported Searches --><td>\n\t\t\t\t\t\t\t\t\t\t_id, patient, encounter, code, _id+patient+encounter+code\n\t\t\t\t\t\t\t\t\t\t\n\t\t\t\t\t\t\t\t\t\t\n\t\t\t\t\t\t\t\t\t</td><!-- Supported _includes --><td>\n\t\t\t\t\t\t\t\t\t\t\n\t\t\t\t\t\t\t\t\t</td><!-- Supported _revincludes --><td>\n\t\t\t\t\t\t\t\t\t\t\n\t\t\t\t\t\t\t\t\t</td><!-- Supported Operations --><td>\n\t\t\t\t\t\t\t\t\t\t\n\t\t\t\t\t\t\t\t\t</td></tr><tr><td><a href=\"#familymemberhistory\">FamilyMemberHistory</a></td><td>\n\t\t\t\t\t\t\t\t\t\t\n\t\t\t\t\t\t\t\t\t\t\tsearch-type\n\t\t\t\t\t\t\t\t\t\t\t\n\t\t\t\t\t\t\t\t\t\t\n\t\t\t\t\t\t\t\t\t</td><!-- Supported Profiles --><td>\n\t\t\t\t\t\t\t\t\t\t\n\t\t\t\t\t\t\t\t\t</td><!-- Supported Searches --><td>\n\t\t\t\t\t\t\t\t\t\t_id, patient, encounter, code, _id+patient+encounter+code\n\t\t\t\t\t\t\t\t\t\t\n\t\t\t\t\t\t\t\t\t\t\n\t\t\t\t\t\t\t\t\t</td><!-- Supported _includes --><td>\n\t\t\t\t\t\t\t\t\t\t\n\t\t\t\t\t\t\t\t\t</td><!-- Supported _revincludes --><td>\n\t\t\t\t\t\t\t\t\t\t\n\t\t\t\t\t\t\t\t\t</td><!-- Supported Operations --><td>\n\t\t\t\t\t\t\t\t\t\t\n\t\t\t\t\t\t\t\t\t</td></tr><tr><td><a href=\"#medicationadministration\">MedicationAdministration</a></td><td>\n\t\t\t\t\t\t\t\t\t\t\n\t\t\t\t\t\t\t\t\t\t\tsearch-type\n\t\t\t\t\t\t\t\t\t\t\t\n\t\t\t\t\t\t\t\t\t\t\n\t\t\t\t\t\t\t\t\t</td><!-- Supported Profiles --><td>\n\t\t\t\t\t\t\t\t\t\t\n\t\t\t\t\t\t\t\t\t</td><!-- Supported Searches --><td>\n\t\t\t\t\t\t\t\t\t\t_id, patient, encounter, code, _id+patient+encounter+code\n\t\t\t\t\t\t\t\t\t\t\n\t\t\t\t\t\t\t\t\t\t\n\t\t\t\t\t\t\t\t\t</td><!-- Supported _includes --><td>\n\t\t\t\t\t\t\t\t\t\t\n\t\t\t\t\t\t\t\t\t</td><!-- Supported _revincludes --><td>\n\t\t\t\t\t\t\t\t\t\t\n\t\t\t\t\t\t\t\t\t</td><!-- Supported Operations --><td>\n\t\t\t\t\t\t\t\t\t\t\n\t\t\t\t\t\t\t\t\t</td></tr><tr><td><a href=\"#medicationdispense\">MedicationDispense</a></td><td>\n\t\t\t\t\t\t\t\t\t\t\n\t\t\t\t\t\t\t\t\t\t\tsearch-type\n\t\t\t\t\t\t\t\t\t\t\t\n\t\t\t\t\t\t\t\t\t\t\n\t\t\t\t\t\t\t\t\t</td><!-- Supported Profiles --><td>\n\t\t\t\t\t\t\t\t\t\t\n\t\t\t\t\t\t\t\t\t</td><!-- Supported Searches --><td>\n\t\t\t\t\t\t\t\t\t\t_id, patient, encounter, code, _id+patient+encounter+code\n\t\t\t\t\t\t\t\t\t\t\n\t\t\t\t\t\t\t\t\t\t\n\t\t\t\t\t\t\t\t\t</td><!-- Supported _includes --><td>\n\t\t\t\t\t\t\t\t\t\t\n\t\t\t\t\t\t\t\t\t</td><!-- Supported _revincludes --><td>\n\t\t\t\t\t\t\t\t\t\t\n\t\t\t\t\t\t\t\t\t</td><!-- Supported Operations --><td>\n\t\t\t\t\t\t\t\t\t\t\n\t\t\t\t\t\t\t\t\t</td></tr><tr><td><a href=\"#medicationstatement\">MedicationStatement</a></td><td>\n\t\t\t\t\t\t\t\t\t\t\n\t\t\t\t\t\t\t\t\t\t\tsearch-type\n\t\t\t\t\t\t\t\t\t\t\t\n\t\t\t\t\t\t\t\t\t\t\n\t\t\t\t\t\t\t\t\t</td><!-- Supported Profiles --><td>\n\t\t\t\t\t\t\t\t\t\t\n\t\t\t\t\t\t\t\t\t</td><!-- Supported Searches --><td>\n\t\t\t\t\t\t\t\t\t\t_id, patient, encounter, code, _id+patient+encounter+code\n\t\t\t\t\t\t\t\t\t\t\n\t\t\t\t\t\t\t\t\t\t\n\t\t\t\t\t\t\t\t\t</td><!-- Supported _includes --><td>\n\t\t\t\t\t\t\t\t\t\t\n\t\t\t\t\t\t\t\t\t</td><!-- Supported _revincludes --><td>\n\t\t\t\t\t\t\t\t\t\t\n\t\t\t\t\t\t\t\t\t</td><!-- Supported Operations --><td>\n\t\t\t\t\t\t\t\t\t\t\n\t\t\t\t\t\t\t\t\t</td></tr></tbody></table><!-- Resource Details --><h4 class=\"no_toc\" id=\"measure\">Measure</h4><p>Conformance Expectation:\t<strong>(conformance expectation undefined)</strong></p><p>Operation Summary:</p><ul><li><code>$evaluate-measure</code><sup>&#8224;</sup>.</li></ul><blockquote><p>$evaluate-measure<sup>&#8224;</sup></p><p>Evaluate the measure</p></blockquote><h4 class=\"no_toc\" id=\"patient\">Patient</h4><p>Conformance Expectation:\t<strong>None</strong></p><p>Profile Interaction Summary:</p><ul><li><strong>SHALL</strong> support \n\t\t\t\t\t\t\t\t\t\t\t<code>search-type</code>.</li></ul><p>Fetch and Search Criteria:</p><ul><li>\n\t\t\t\t\t\t\t\t\t\t\t\tA Client <strong>SHALL</strong> be capable of fetching resources matching a search query using:\n\t\t\t\t\t\t\t\t\t\t\t\t<code class=\"highlighter-rouge\">GET [base]/Patient/[id]{?[parameters]{&amp;_format=[mime-type]}}</code>\n\t\t\t\t\t\t\t\t\t\t\t</li></ul><!-- Only included search parameters that are not MAY or there is no conformance requirement included --><p>Search Parameter Summary:</p><table class=\"grid\"><thead><tr><th>Conformance</th><th>Parameter</th><th>Type</th><th>Example</th></tr></thead><tbody><tr><td><strong>SHALL</strong></td><td><a href=\"http://hl7.org/fhir/R4/search.html#id\">\n\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t_id</a></td><td>\n\t\t\t\t\t\t\t\t\t\t\t\t\t\t\treference\n\t\t\t\t\t\t\t\t\t\t\t\t\t\t</td><td><code class=\"highlighter-rouge\">GET [base]/Patient?_id=[id]</code></td></tr><tr><td><strong>SHALL</strong></td><td><a href=\"http://hl7.org/fhir/R4/patient.html#search\">\n\t\t\t\t\t\t\t\t\t\t\t\t\t\t\tclass</a></td><td>\n\t\t\t\t\t\t\t\t\t\t\t\t\t\t\treference\n\t\t\t\t\t\t\t\t\t\t\t\t\t\t</td><td><code class=\"highlighter-rouge\">GET [base]/Patient?class=[type]/[id]</code></td></tr></tbody></table><p>Search Parameter Combination Summary:</p><table class=\"grid\"><thead><tr><th>Conformance</th><th>Parameter Combination</th><th>Types</th><th>Example</th></tr></thead><tbody><tr><td>\n\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t</td><td><a href=\"http://hl7.org/fhir/R4/search.html#id\">_id</a></td><td>reference\n\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t</td><td><code class=\"highlighter-rouge\">GET [base]/Patient?_id=[id]</code></td></tr><tr><td>\n\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t</td><td><a href=\"http://hl7.org/fhir/R4/search.html#id\">_id</a>+\n\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t<a href=\"http://hl7.org/fhir/R4/class.html#search\">class</a>+\n\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t<a href=\"http://hl7.org/fhir/R4/date.html#search\">date</a></td><td>reference+reference+date\n\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t</td><td><code class=\"highlighter-rouge\">GET [base]/Patient?_id=[id]&amp;class=[type]/[id]&amp;date=[date]</code></td></tr></tbody></table><h4 class=\"no_toc\" id=\"encounter\">Encounter</h4><p>Conformance Expectation:\t<strong>None</strong></p><p>Profile Interaction Summary:</p><ul><li><strong>SHALL</strong> support \n\t\t\t\t\t\t\t\t\t\t\t<code>search-type</code>.</li></ul><p>Fetch and Search Criteria:</p><ul><li>\n\t\t\t\t\t\t\t\t\t\t\t\tA Client <strong>SHALL</strong> be capable of fetching resources matching a search query using:\n\t\t\t\t\t\t\t\t\t\t\t\t<code class=\"highlighter-rouge\">GET [base]/Encounter/[id]{?[parameters]{&amp;_format=[mime-type]}}</code>\n\t\t\t\t\t\t\t\t\t\t\t</li></ul><!-- Only included search parameters that are not MAY or there is no conformance requirement included --><p>Search Parameter Summary:</p><table class=\"grid\"><thead><tr><th>Conformance</th><th>Parameter</th><th>Type</th><th>Example</th></tr></thead><tbody><tr><td><strong>SHALL</strong></td><td><a href=\"http://hl7.org/fhir/R4/search.html#id\">\n\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t_id</a></td><td>\n\t\t\t\t\t\t\t\t\t\t\t\t\t\t\treference\n\t\t\t\t\t\t\t\t\t\t\t\t\t\t</td><td><code class=\"highlighter-rouge\">GET [base]/Encounter?_id=[id]</code></td></tr><tr><td><strong>SHALL</strong></td><td><a href=\"http://hl7.org/fhir/R4/encounter.html#search\">\n\t\t\t\t\t\t\t\t\t\t\t\t\t\t\tclass</a></td><td>\n\t\t\t\t\t\t\t\t\t\t\t\t\t\t\treference\n\t\t\t\t\t\t\t\t\t\t\t\t\t\t</td><td><code class=\"highlighter-rouge\">GET [base]/Encounter?class=[type]/[id]</code></td></tr><tr><td><strong>SHALL</strong></td><td><a href=\"http://hl7.org/fhir/R4/encounter.html#search\">\n\t\t\t\t\t\t\t\t\t\t\t\t\t\t\tpatient</a></td><td>\n\t\t\t\t\t\t\t\t\t\t\t\t\t\t\treference\n\t\t\t\t\t\t\t\t\t\t\t\t\t\t</td><td><code class=\"highlighter-rouge\">GET [base]/Encounter?patient=[type]/[id]</code></td></tr><tr><td><strong>SHALL</strong></td><td><a href=\"http://hl7.org/fhir/R4/encounter.html#search\">\n\t\t\t\t\t\t\t\t\t\t\t\t\t\t\tencounter</a></td><td>\n\t\t\t\t\t\t\t\t\t\t\t\t\t\t\treference\n\t\t\t\t\t\t\t\t\t\t\t\t\t\t</td><td><code class=\"highlighter-rouge\">GET [base]/Encounter?encounter=[type]/[id]</code></td></tr><tr><td><strong>SHALL</strong></td><td><a href=\"http://hl7.org/fhir/R4/encounter.html#search\">\n\t\t\t\t\t\t\t\t\t\t\t\t\t\t\tcode</a></td><td>\n\t\t\t\t\t\t\t\t\t\t\t\t\t\t\ttoken\n\t\t\t\t\t\t\t\t\t\t\t\t\t\t</td><td><code class=\"highlighter-rouge\">GET [base]/Encounter?code=[system]|[code]</code></td></tr></tbody></table><p>Search Parameter Combination Summary:</p><table class=\"grid\"><thead><tr><th>Conformance</th><th>Parameter Combination</th><th>Types</th><th>Example</th></tr></thead><tbody><tr><td>\n\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t</td><td><a href=\"http://hl7.org/fhir/R4/search.html#id\">_id</a></td><td>reference\n\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t</td><td><code class=\"highlighter-rouge\">GET [base]/Encounter?_id=[id]</code></td></tr><tr><td>\n\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t</td><td><a href=\"http://hl7.org/fhir/R4/search.html#id\">_id</a>+\n\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t<a href=\"http://hl7.org/fhir/R4/class.html#search\">class</a>+\n\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t<a href=\"http://hl7.org/fhir/R4/date.html#search\">date</a></td><td>reference+reference+date\n\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t</td><td><code class=\"highlighter-rouge\">GET [base]/Encounter?_id=[id]&amp;class=[type]/[id]&amp;date=[date]</code></td></tr><tr><td>\n\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t</td><td><a href=\"http://hl7.org/fhir/R4/search.html#id\">_id</a>+\n\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t<a href=\"http://hl7.org/fhir/R4/patient.html#search\">patient</a>+\n\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t<a href=\"http://hl7.org/fhir/R4/encounter.html#search\">encounter</a>+\n\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t<a href=\"http://hl7.org/fhir/R4/code.html#search\">code</a></td><td>reference+reference+reference+token\n\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t</td><td><code class=\"highlighter-rouge\">GET [base]/Encounter?_id=[id]&amp;patient=[type]/[id]&amp;encounter=[type]/[id]&amp;code=[system]|[code]</code></td></tr></tbody></table><h4 class=\"no_toc\" id=\"allergyintolerance\">AllergyIntolerance</h4><p>Conformance Expectation:\t<strong>None</strong></p><p>Profile Interaction Summary:</p><ul><li><strong>SHOULD</strong> support \n\t\t\t\t\t\t\t\t\t\t\t<code>search-type</code>.</li></ul><p>Fetch and Search Criteria:</p><ul><li>\n\t\t\t\t\t\t\t\t\t\t\t\tA Client <strong>SHOULD</strong> be capable of fetching resources matching a search query using:\n\t\t\t\t\t\t\t\t\t\t\t\t<code class=\"highlighter-rouge\">GET [base]/AllergyIntolerance/[id]{?[parameters]{&amp;_format=[mime-type]}}</code>\n\t\t\t\t\t\t\t\t\t\t\t</li></ul><!-- Only included search parameters that are not MAY or there is no conformance requirement included --><p>Search Parameter Summary:</p><table class=\"grid\"><thead><tr><th>Conformance</th><th>Parameter</th><th>Type</th><th>Example</th></tr></thead><tbody><tr><td><strong>SHALL</strong></td><td><a href=\"http://hl7.org/fhir/R4/search.html#id\">\n\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t_id</a></td><td>\n\t\t\t\t\t\t\t\t\t\t\t\t\t\t\treference\n\t\t\t\t\t\t\t\t\t\t\t\t\t\t</td><td><code class=\"highlighter-rouge\">GET [base]/AllergyIntolerance?_id=[id]</code></td></tr><tr><td><strong>SHALL</strong></td><td><a href=\"http://hl7.org/fhir/R4/allergyintolerance.html#search\">\n\t\t\t\t\t\t\t\t\t\t\t\t\t\t\tpatient</a></td><td>\n\t\t\t\t\t\t\t\t\t\t\t\t\t\t\treference\n\t\t\t\t\t\t\t\t\t\t\t\t\t\t</td><td><code class=\"highlighter-rouge\">GET [base]/AllergyIntolerance?patient=[type]/[id]</code></td></tr><tr><td><strong>SHALL</strong></td><td><a href=\"http://hl7.org/fhir/R4/allergyintolerance.html#search\">\n\t\t\t\t\t\t\t\t\t\t\t\t\t\t\tencounter</a></td><td>\n\t\t\t\t\t\t\t\t\t\t\t\t\t\t\treference\n\t\t\t\t\t\t\t\t\t\t\t\t\t\t</td><td><code class=\"highlighter-rouge\">GET [base]/AllergyIntolerance?encounter=[type]/[id]</code></td></tr><tr><td><strong>SHALL</strong></td><td><a href=\"http://hl7.org/fhir/R4/allergyintolerance.html#search\">\n\t\t\t\t\t\t\t\t\t\t\t\t\t\t\tcode</a></td><td>\n\t\t\t\t\t\t\t\t\t\t\t\t\t\t\ttoken\n\t\t\t\t\t\t\t\t\t\t\t\t\t\t</td><td><code class=\"highlighter-rouge\">GET [base]/AllergyIntolerance?code=[system]|[code]</code></td></tr></tbody></table><p>Search Parameter Combination Summary:</p><table class=\"grid\"><thead><tr><th>Conformance</th><th>Parameter Combination</th><th>Types</th><th>Example</th></tr></thead><tbody><tr><td>\n\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t</td><td><a href=\"http://hl7.org/fhir/R4/search.html#id\">_id</a>+\n\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t<a href=\"http://hl7.org/fhir/R4/patient.html#search\">patient</a>+\n\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t<a href=\"http://hl7.org/fhir/R4/encounter.html#search\">encounter</a>+\n\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t<a href=\"http://hl7.org/fhir/R4/code.html#search\">code</a></td><td>reference+reference+reference+token\n\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t</td><td><code class=\"highlighter-rouge\">GET [base]/AllergyIntolerance?_id=[id]&amp;patient=[type]/[id]&amp;encounter=[type]/[id]&amp;code=[system]|[code]</code></td></tr></tbody></table><h4 class=\"no_toc\" id=\"condition\">Condition</h4><p>Conformance Expectation:\t<strong>None</strong></p><p>Profile Interaction Summary:</p><ul><li><strong>SHOULD</strong> support \n\t\t\t\t\t\t\t\t\t\t\t<code>search-type</code>.</li></ul><p>Fetch and Search Criteria:</p><ul><li>\n\t\t\t\t\t\t\t\t\t\t\t\tA Client <strong>SHOULD</strong> be capable of fetching resources matching a search query using:\n\t\t\t\t\t\t\t\t\t\t\t\t<code class=\"highlighter-rouge\">GET [base]/Condition/[id]{?[parameters]{&amp;_format=[mime-type]}}</code>\n\t\t\t\t\t\t\t\t\t\t\t</li></ul><!-- Only included search parameters that are not MAY or there is no conformance requirement included --><p>Search Parameter Summary:</p><table class=\"grid\"><thead><tr><th>Conformance</th><th>Parameter</th><th>Type</th><th>Example</th></tr></thead><tbody><tr><td><strong>SHALL</strong></td><td><a href=\"http://hl7.org/fhir/R4/search.html#id\">\n\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t_id</a></td><td>\n\t\t\t\t\t\t\t\t\t\t\t\t\t\t\treference\n\t\t\t\t\t\t\t\t\t\t\t\t\t\t</td><td><code class=\"highlighter-rouge\">GET [base]/Condition?_id=[id]</code></td></tr><tr><td><strong>SHALL</strong></td><td><a href=\"http://hl7.org/fhir/R4/condition.html#search\">\n\t\t\t\t\t\t\t\t\t\t\t\t\t\t\tpatient</a></td><td>\n\t\t\t\t\t\t\t\t\t\t\t\t\t\t\treference\n\t\t\t\t\t\t\t\t\t\t\t\t\t\t</td><td><code class=\"highlighter-rouge\">GET [base]/Condition?patient=[type]/[id]</code></td></tr><tr><td><strong>SHALL</strong></td><td><a href=\"http://hl7.org/fhir/R4/condition.html#search\">\n\t\t\t\t\t\t\t\t\t\t\t\t\t\t\tencounter</a></td><td>\n\t\t\t\t\t\t\t\t\t\t\t\t\t\t\treference\n\t\t\t\t\t\t\t\t\t\t\t\t\t\t</td><td><code class=\"highlighter-rouge\">GET [base]/Condition?encounter=[type]/[id]</code></td></tr><tr><td><strong>SHALL</strong></td><td><a href=\"http://hl7.org/fhir/R4/condition.html#search\">\n\t\t\t\t\t\t\t\t\t\t\t\t\t\t\tcode</a></td><td>\n\t\t\t\t\t\t\t\t\t\t\t\t\t\t\ttoken\n\t\t\t\t\t\t\t\t\t\t\t\t\t\t</td><td><code class=\"highlighter-rouge\">GET [base]/Condition?code=[system]|[code]</code></td></tr></tbody></table><p>Search Parameter Combination Summary:</p><table class=\"grid\"><thead><tr><th>Conformance</th><th>Parameter Combination</th><th>Types</th><th>Example</th></tr></thead><tbody><tr><td>\n\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t</td><td><a href=\"http://hl7.org/fhir/R4/search.html#id\">_id</a>+\n\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t<a href=\"http://hl7.org/fhir/R4/patient.html#search\">patient</a>+\n\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t<a href=\"http://hl7.org/fhir/R4/encounter.html#search\">encounter</a>+\n\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t<a href=\"http://hl7.org/fhir/R4/code.html#search\">code</a></td><td>reference+reference+reference+token\n\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t</td><td><code class=\"highlighter-rouge\">GET [base]/Condition?_id=[id]&amp;patient=[type]/[id]&amp;encounter=[type]/[id]&amp;code=[system]|[code]</code></td></tr></tbody></table><h4 class=\"no_toc\" id=\"diagnosticreport\">DiagnosticReport</h4><p>Conformance Expectation:\t<strong>None</strong></p><p>Profile Interaction Summary:</p><ul><li><strong>SHOULD</strong> support \n\t\t\t\t\t\t\t\t\t\t\t<code>search-type</code>.</li></ul><p>Fetch and Search Criteria:</p><ul><li>\n\t\t\t\t\t\t\t\t\t\t\t\tA Client <strong>SHOULD</strong> be capable of fetching resources matching a search query using:\n\t\t\t\t\t\t\t\t\t\t\t\t<code class=\"highlighter-rouge\">GET [base]/DiagnosticReport/[id]{?[parameters]{&amp;_format=[mime-type]}}</code>\n\t\t\t\t\t\t\t\t\t\t\t</li></ul><!-- Only included search parameters that are not MAY or there is no conformance requirement included --><p>Search Parameter Summary:</p><table class=\"grid\"><thead><tr><th>Conformance</th><th>Parameter</th><th>Type</th><th>Example</th></tr></thead><tbody><tr><td><strong>SHALL</strong></td><td><a href=\"http://hl7.org/fhir/R4/search.html#id\">\n\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t_id</a></td><td>\n\t\t\t\t\t\t\t\t\t\t\t\t\t\t\treference\n\t\t\t\t\t\t\t\t\t\t\t\t\t\t</td><td><code class=\"highlighter-rouge\">GET [base]/DiagnosticReport?_id=[id]</code></td></tr><tr><td><strong>SHALL</strong></td><td><a href=\"http://hl7.org/fhir/R4/diagnosticreport.html#search\">\n\t\t\t\t\t\t\t\t\t\t\t\t\t\t\tpatient</a></td><td>\n\t\t\t\t\t\t\t\t\t\t\t\t\t\t\treference\n\t\t\t\t\t\t\t\t\t\t\t\t\t\t</td><td><code class=\"highlighter-rouge\">GET [base]/DiagnosticReport?patient=[type]/[id]</code></td></tr><tr><td><strong>SHALL</strong></td><td><a href=\"http://hl7.org/fhir/R4/diagnosticreport.html#search\">\n\t\t\t\t\t\t\t\t\t\t\t\t\t\t\tencounter</a></td><td>\n\t\t\t\t\t\t\t\t\t\t\t\t\t\t\treference\n\t\t\t\t\t\t\t\t\t\t\t\t\t\t</td><td><code class=\"highlighter-rouge\">GET [base]/DiagnosticReport?encounter=[type]/[id]</code></td></tr><tr><td><strong>SHALL</strong></td><td><a href=\"http://hl7.org/fhir/R4/diagnosticreport.html#search\">\n\t\t\t\t\t\t\t\t\t\t\t\t\t\t\tcode</a></td><td>\n\t\t\t\t\t\t\t\t\t\t\t\t\t\t\ttoken\n\t\t\t\t\t\t\t\t\t\t\t\t\t\t</td><td><code class=\"highlighter-rouge\">GET [base]/DiagnosticReport?code=[system]|[code]</code></td></tr></tbody></table><p>Search Parameter Combination Summary:</p><table class=\"grid\"><thead><tr><th>Conformance</th><th>Parameter Combination</th><th>Types</th><th>Example</th></tr></thead><tbody><tr><td>\n\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t</td><td><a href=\"http://hl7.org/fhir/R4/search.html#id\">_id</a>+\n\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t<a href=\"http://hl7.org/fhir/R4/patient.html#search\">patient</a>+\n\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t<a href=\"http://hl7.org/fhir/R4/encounter.html#search\">encounter</a>+\n\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t<a href=\"http://hl7.org/fhir/R4/code.html#search\">code</a></td><td>reference+reference+reference+token\n\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t</td><td><code class=\"highlighter-rouge\">GET [base]/DiagnosticReport?_id=[id]&amp;patient=[type]/[id]&amp;encounter=[type]/[id]&amp;code=[system]|[code]</code></td></tr></tbody></table><h4 class=\"no_toc\" id=\"medicationrequest\">MedicationRequest</h4><p>Conformance Expectation:\t<strong>None</strong></p><p>Profile Interaction Summary:</p><ul><li><strong>SHOULD</strong> support \n\t\t\t\t\t\t\t\t\t\t\t<code>search-type</code>.</li></ul><p>Fetch and Search Criteria:</p><ul><li>\n\t\t\t\t\t\t\t\t\t\t\t\tA Client <strong>SHOULD</strong> be capable of fetching resources matching a search query using:\n\t\t\t\t\t\t\t\t\t\t\t\t<code class=\"highlighter-rouge\">GET [base]/MedicationRequest/[id]{?[parameters]{&amp;_format=[mime-type]}}</code>\n\t\t\t\t\t\t\t\t\t\t\t</li></ul><!-- Only included search parameters that are not MAY or there is no conformance requirement included --><p>Search Parameter Summary:</p><table class=\"grid\"><thead><tr><th>Conformance</th><th>Parameter</th><th>Type</th><th>Example</th></tr></thead><tbody><tr><td><strong>SHALL</strong></td><td><a href=\"http://hl7.org/fhir/R4/search.html#id\">\n\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t_id</a></td><td>\n\t\t\t\t\t\t\t\t\t\t\t\t\t\t\treference\n\t\t\t\t\t\t\t\t\t\t\t\t\t\t</td><td><code class=\"highlighter-rouge\">GET [base]/MedicationRequest?_id=[id]</code></td></tr><tr><td><strong>SHALL</strong></td><td><a href=\"http://hl7.org/fhir/R4/medicationrequest.html#search\">\n\t\t\t\t\t\t\t\t\t\t\t\t\t\t\tpatient</a></td><td>\n\t\t\t\t\t\t\t\t\t\t\t\t\t\t\treference\n\t\t\t\t\t\t\t\t\t\t\t\t\t\t</td><td><code class=\"highlighter-rouge\">GET [base]/MedicationRequest?patient=[type]/[id]</code></td></tr><tr><td><strong>SHALL</strong></td><td><a href=\"http://hl7.org/fhir/R4/medicationrequest.html#search\">\n\t\t\t\t\t\t\t\t\t\t\t\t\t\t\tencounter</a></td><td>\n\t\t\t\t\t\t\t\t\t\t\t\t\t\t\treference\n\t\t\t\t\t\t\t\t\t\t\t\t\t\t</td><td><code class=\"highlighter-rouge\">GET [base]/MedicationRequest?encounter=[type]/[id]</code></td></tr><tr><td><strong>SHALL</strong></td><td><a href=\"http://hl7.org/fhir/R4/medicationrequest.html#search\">\n\t\t\t\t\t\t\t\t\t\t\t\t\t\t\tcode</a></td><td>\n\t\t\t\t\t\t\t\t\t\t\t\t\t\t\ttoken\n\t\t\t\t\t\t\t\t\t\t\t\t\t\t</td><td><code class=\"highlighter-rouge\">GET [base]/MedicationRequest?code=[system]|[code]</code></td></tr></tbody></table><p>Search Parameter Combination Summary:</p><table class=\"grid\"><thead><tr><th>Conformance</th><th>Parameter Combination</th><th>Types</th><th>Example</th></tr></thead><tbody><tr><td>\n\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t</td><td><a href=\"http://hl7.org/fhir/R4/search.html#id\">_id</a>+\n\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t<a href=\"http://hl7.org/fhir/R4/patient.html#search\">patient</a>+\n\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t<a href=\"http://hl7.org/fhir/R4/encounter.html#search\">encounter</a>+\n\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t<a href=\"http://hl7.org/fhir/R4/code.html#search\">code</a></td><td>reference+reference+reference+token\n\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t</td><td><code class=\"highlighter-rouge\">GET [base]/MedicationRequest?_id=[id]&amp;patient=[type]/[id]&amp;encounter=[type]/[id]&amp;code=[system]|[code]</code></td></tr></tbody></table><h4 class=\"no_toc\" id=\"observation\">Observation</h4><p>Conformance Expectation:\t<strong>None</strong></p><p>Profile Interaction Summary:</p><ul><li><strong>SHOULD</strong> support \n\t\t\t\t\t\t\t\t\t\t\t<code>search-type</code>.</li></ul><p>Fetch and Search Criteria:</p><ul><li>\n\t\t\t\t\t\t\t\t\t\t\t\tA Client <strong>SHOULD</strong> be capable of fetching resources matching a search query using:\n\t\t\t\t\t\t\t\t\t\t\t\t<code class=\"highlighter-rouge\">GET [base]/Observation/[id]{?[parameters]{&amp;_format=[mime-type]}}</code>\n\t\t\t\t\t\t\t\t\t\t\t</li></ul><!-- Only included search parameters that are not MAY or there is no conformance requirement included --><p>Search Parameter Summary:</p><table class=\"grid\"><thead><tr><th>Conformance</th><th>Parameter</th><th>Type</th><th>Example</th></tr></thead><tbody><tr><td><strong>SHALL</strong></td><td><a href=\"http://hl7.org/fhir/R4/search.html#id\">\n\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t_id</a></td><td>\n\t\t\t\t\t\t\t\t\t\t\t\t\t\t\treference\n\t\t\t\t\t\t\t\t\t\t\t\t\t\t</td><td><code class=\"highlighter-rouge\">GET [base]/Observation?_id=[id]</code></td></tr><tr><td><strong>SHALL</strong></td><td><a href=\"http://hl7.org/fhir/R4/observation.html#search\">\n\t\t\t\t\t\t\t\t\t\t\t\t\t\t\tpatient</a></td><td>\n\t\t\t\t\t\t\t\t\t\t\t\t\t\t\treference\n\t\t\t\t\t\t\t\t\t\t\t\t\t\t</td><td><code class=\"highlighter-rouge\">GET [base]/Observation?patient=[type]/[id]</code></td></tr><tr><td><strong>SHALL</strong></td><td><a href=\"http://hl7.org/fhir/R4/observation.html#search\">\n\t\t\t\t\t\t\t\t\t\t\t\t\t\t\tencounter</a></td><td>\n\t\t\t\t\t\t\t\t\t\t\t\t\t\t\treference\n\t\t\t\t\t\t\t\t\t\t\t\t\t\t</td><td><code class=\"highlighter-rouge\">GET [base]/Observation?encounter=[type]/[id]</code></td></tr><tr><td><strong>SHALL</strong></td><td><a href=\"http://hl7.org/fhir/R4/observation.html#search\">\n\t\t\t\t\t\t\t\t\t\t\t\t\t\t\tcode</a></td><td>\n\t\t\t\t\t\t\t\t\t\t\t\t\t\t\ttoken\n\t\t\t\t\t\t\t\t\t\t\t\t\t\t</td><td><code class=\"highlighter-rouge\">GET [base]/Observation?code=[system]|[code]</code></td></tr></tbody></table><p>Search Parameter Combination Summary:</p><table class=\"grid\"><thead><tr><th>Conformance</th><th>Parameter Combination</th><th>Types</th><th>Example</th></tr></thead><tbody><tr><td>\n\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t</td><td><a href=\"http://hl7.org/fhir/R4/search.html#id\">_id</a>+\n\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t<a href=\"http://hl7.org/fhir/R4/patient.html#search\">patient</a>+\n\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t<a href=\"http://hl7.org/fhir/R4/encounter.html#search\">encounter</a>+\n\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t<a href=\"http://hl7.org/fhir/R4/code.html#search\">code</a></td><td>reference+reference+reference+token\n\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t</td><td><code class=\"highlighter-rouge\">GET [base]/Observation?_id=[id]&amp;patient=[type]/[id]&amp;encounter=[type]/[id]&amp;code=[system]|[code]</code></td></tr></tbody></table><h4 class=\"no_toc\" id=\"procedure\">Procedure</h4><p>Conformance Expectation:\t<strong>None</strong></p><p>Profile Interaction Summary:</p><ul><li><strong>SHOULD</strong> support \n\t\t\t\t\t\t\t\t\t\t\t<code>search-type</code>.</li></ul><p>Fetch and Search Criteria:</p><ul><li>\n\t\t\t\t\t\t\t\t\t\t\t\tA Client <strong>SHOULD</strong> be capable of fetching resources matching a search query using:\n\t\t\t\t\t\t\t\t\t\t\t\t<code class=\"highlighter-rouge\">GET [base]/Procedure/[id]{?[parameters]{&amp;_format=[mime-type]}}</code>\n\t\t\t\t\t\t\t\t\t\t\t</li></ul><!-- Only included search parameters that are not MAY or there is no conformance requirement included --><p>Search Parameter Summary:</p><table class=\"grid\"><thead><tr><th>Conformance</th><th>Parameter</th><th>Type</th><th>Example</th></tr></thead><tbody><tr><td><strong>SHALL</strong></td><td><a href=\"http://hl7.org/fhir/R4/search.html#id\">\n\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t_id</a></td><td>\n\t\t\t\t\t\t\t\t\t\t\t\t\t\t\treference\n\t\t\t\t\t\t\t\t\t\t\t\t\t\t</td><td><code class=\"highlighter-rouge\">GET [base]/Procedure?_id=[id]</code></td></tr><tr><td><strong>SHALL</strong></td><td><a href=\"http://hl7.org/fhir/R4/procedure.html#search\">\n\t\t\t\t\t\t\t\t\t\t\t\t\t\t\tpatient</a></td><td>\n\t\t\t\t\t\t\t\t\t\t\t\t\t\t\treference\n\t\t\t\t\t\t\t\t\t\t\t\t\t\t</td><td><code class=\"highlighter-rouge\">GET [base]/Procedure?patient=[type]/[id]</code></td></tr><tr><td><strong>SHALL</strong></td><td><a href=\"http://hl7.org/fhir/R4/procedure.html#search\">\n\t\t\t\t\t\t\t\t\t\t\t\t\t\t\tencounter</a></td><td>\n\t\t\t\t\t\t\t\t\t\t\t\t\t\t\treference\n\t\t\t\t\t\t\t\t\t\t\t\t\t\t</td><td><code class=\"highlighter-rouge\">GET [base]/Procedure?encounter=[type]/[id]</code></td></tr><tr><td><strong>SHALL</strong></td><td><a href=\"http://hl7.org/fhir/R4/procedure.html#search\">\n\t\t\t\t\t\t\t\t\t\t\t\t\t\t\tcode</a></td><td>\n\t\t\t\t\t\t\t\t\t\t\t\t\t\t\ttoken\n\t\t\t\t\t\t\t\t\t\t\t\t\t\t</td><td><code class=\"highlighter-rouge\">GET [base]/Procedure?code=[system]|[code]</code></td></tr></tbody></table><p>Search Parameter Combination Summary:</p><table class=\"grid\"><thead><tr><th>Conformance</th><th>Parameter Combination</th><th>Types</th><th>Example</th></tr></thead><tbody><tr><td>\n\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t</td><td><a href=\"http://hl7.org/fhir/R4/search.html#id\">_id</a>+\n\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t<a href=\"http://hl7.org/fhir/R4/patient.html#search\">patient</a>+\n\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t<a href=\"http://hl7.org/fhir/R4/encounter.html#search\">encounter</a>+\n\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t<a href=\"http://hl7.org/fhir/R4/code.html#search\">code</a></td><td>reference+reference+reference+token\n\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t</td><td><code class=\"highlighter-rouge\">GET [base]/Procedure?_id=[id]&amp;patient=[type]/[id]&amp;encounter=[type]/[id]&amp;code=[system]|[code]</code></td></tr></tbody></table><h4 class=\"no_toc\" id=\"servicerequest\">ServiceRequest</h4><p>Conformance Expectation:\t<strong>None</strong></p><p>Profile Interaction Summary:</p><ul><li><strong>SHOULD</strong> support \n\t\t\t\t\t\t\t\t\t\t\t<code>search-type</code>.</li></ul><p>Fetch and Search Criteria:</p><ul><li>\n\t\t\t\t\t\t\t\t\t\t\t\tA Client <strong>SHOULD</strong> be capable of fetching resources matching a search query using:\n\t\t\t\t\t\t\t\t\t\t\t\t<code class=\"highlighter-rouge\">GET [base]/ServiceRequest/[id]{?[parameters]{&amp;_format=[mime-type]}}</code>\n\t\t\t\t\t\t\t\t\t\t\t</li></ul><!-- Only included search parameters that are not MAY or there is no conformance requirement included --><p>Search Parameter Summary:</p><table class=\"grid\"><thead><tr><th>Conformance</th><th>Parameter</th><th>Type</th><th>Example</th></tr></thead><tbody><tr><td><strong>SHALL</strong></td><td><a href=\"http://hl7.org/fhir/R4/search.html#id\">\n\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t_id</a></td><td>\n\t\t\t\t\t\t\t\t\t\t\t\t\t\t\treference\n\t\t\t\t\t\t\t\t\t\t\t\t\t\t</td><td><code class=\"highlighter-rouge\">GET [base]/ServiceRequest?_id=[id]</code></td></tr><tr><td><strong>SHALL</strong></td><td><a href=\"http://hl7.org/fhir/R4/servicerequest.html#search\">\n\t\t\t\t\t\t\t\t\t\t\t\t\t\t\tpatient</a></td><td>\n\t\t\t\t\t\t\t\t\t\t\t\t\t\t\treference\n\t\t\t\t\t\t\t\t\t\t\t\t\t\t</td><td><code class=\"highlighter-rouge\">GET [base]/ServiceRequest?patient=[type]/[id]</code></td></tr><tr><td><strong>SHALL</strong></td><td><a href=\"http://hl7.org/fhir/R4/servicerequest.html#search\">\n\t\t\t\t\t\t\t\t\t\t\t\t\t\t\tencounter</a></td><td>\n\t\t\t\t\t\t\t\t\t\t\t\t\t\t\treference\n\t\t\t\t\t\t\t\t\t\t\t\t\t\t</td><td><code class=\"highlighter-rouge\">GET [base]/ServiceRequest?encounter=[type]/[id]</code></td></tr><tr><td><strong>SHALL</strong></td><td><a href=\"http://hl7.org/fhir/R4/servicerequest.html#search\">\n\t\t\t\t\t\t\t\t\t\t\t\t\t\t\tcode</a></td><td>\n\t\t\t\t\t\t\t\t\t\t\t\t\t\t\ttoken\n\t\t\t\t\t\t\t\t\t\t\t\t\t\t</td><td><code class=\"highlighter-rouge\">GET [base]/ServiceRequest?code=[system]|[code]</code></td></tr></tbody></table><p>Search Parameter Combination Summary:</p><table class=\"grid\"><thead><tr><th>Conformance</th><th>Parameter Combination</th><th>Types</th><th>Example</th></tr></thead><tbody><tr><td>\n\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t</td><td><a href=\"http://hl7.org/fhir/R4/search.html#id\">_id</a>+\n\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t<a href=\"http://hl7.org/fhir/R4/patient.html#search\">patient</a>+\n\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t<a href=\"http://hl7.org/fhir/R4/encounter.html#search\">encounter</a>+\n\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t<a href=\"http://hl7.org/fhir/R4/code.html#search\">code</a></td><td>reference+reference+reference+token\n\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t</td><td><code class=\"highlighter-rouge\">GET [base]/ServiceRequest?_id=[id]&amp;patient=[type]/[id]&amp;encounter=[type]/[id]&amp;code=[system]|[code]</code></td></tr></tbody></table><h4 class=\"no_toc\" id=\"documentreference\">DocumentReference</h4><p>Conformance Expectation:\t<strong>None</strong></p><p>Profile Interaction Summary:</p><ul><li><strong>SHOULD</strong> support \n\t\t\t\t\t\t\t\t\t\t\t<code>search-type</code>.</li></ul><p>Fetch and Search Criteria:</p><ul><li>\n\t\t\t\t\t\t\t\t\t\t\t\tA Client <strong>SHOULD</strong> be capable of fetching resources matching a search query using:\n\t\t\t\t\t\t\t\t\t\t\t\t<code class=\"highlighter-rouge\">GET [base]/DocumentReference/[id]{?[parameters]{&amp;_format=[mime-type]}}</code>\n\t\t\t\t\t\t\t\t\t\t\t</li></ul><!-- Only included search parameters that are not MAY or there is no conformance requirement included --><p>Search Parameter Summary:</p><table class=\"grid\"><thead><tr><th>Conformance</th><th>Parameter</th><th>Type</th><th>Example</th></tr></thead><tbody><tr><td><strong>SHALL</strong></td><td><a href=\"http://hl7.org/fhir/R4/search.html#id\">\n\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t_id</a></td><td>\n\t\t\t\t\t\t\t\t\t\t\t\t\t\t\treference\n\t\t\t\t\t\t\t\t\t\t\t\t\t\t</td><td><code class=\"highlighter-rouge\">GET [base]/DocumentReference?_id=[id]</code></td></tr><tr><td><strong>SHALL</strong></td><td><a href=\"http://hl7.org/fhir/R4/documentreference.html#search\">\n\t\t\t\t\t\t\t\t\t\t\t\t\t\t\tpatient</a></td><td>\n\t\t\t\t\t\t\t\t\t\t\t\t\t\t\treference\n\t\t\t\t\t\t\t\t\t\t\t\t\t\t</td><td><code class=\"highlighter-rouge\">GET [base]/DocumentReference?patient=[type]/[id]</code></td></tr><tr><td><strong>SHALL</strong></td><td><a href=\"http://hl7.org/fhir/R4/documentreference.html#search\">\n\t\t\t\t\t\t\t\t\t\t\t\t\t\t\tencounter</a></td><td>\n\t\t\t\t\t\t\t\t\t\t\t\t\t\t\treference\n\t\t\t\t\t\t\t\t\t\t\t\t\t\t</td><td><code class=\"highlighter-rouge\">GET [base]/DocumentReference?encounter=[type]/[id]</code></td></tr><tr><td><strong>SHALL</strong></td><td><a href=\"http://hl7.org/fhir/R4/documentreference.html#search\">\n\t\t\t\t\t\t\t\t\t\t\t\t\t\t\tcode</a></td><td>\n\t\t\t\t\t\t\t\t\t\t\t\t\t\t\ttoken\n\t\t\t\t\t\t\t\t\t\t\t\t\t\t</td><td><code class=\"highlighter-rouge\">GET [base]/DocumentReference?code=[system]|[code]</code></td></tr></tbody></table><p>Search Parameter Combination Summary:</p><table class=\"grid\"><thead><tr><th>Conformance</th><th>Parameter Combination</th><th>Types</th><th>Example</th></tr></thead><tbody><tr><td>\n\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t</td><td><a href=\"http://hl7.org/fhir/R4/search.html#id\">_id</a>+\n\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t<a href=\"http://hl7.org/fhir/R4/patient.html#search\">patient</a>+\n\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t<a href=\"http://hl7.org/fhir/R4/encounter.html#search\">encounter</a>+\n\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t<a href=\"http://hl7.org/fhir/R4/code.html#search\">code</a></td><td>reference+reference+reference+token\n\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t</td><td><code class=\"highlighter-rouge\">GET [base]/DocumentReference?_id=[id]&amp;patient=[type]/[id]&amp;encounter=[type]/[id]&amp;code=[system]|[code]</code></td></tr></tbody></table><h4 class=\"no_toc\" id=\"familymemberhistory\">FamilyMemberHistory</h4><p>Conformance Expectation:\t<strong>None</strong></p><p>Profile Interaction Summary:</p><ul><li><strong>SHOULD</strong> support \n\t\t\t\t\t\t\t\t\t\t\t<code>search-type</code>.</li></ul><p>Fetch and Search Criteria:</p><ul><li>\n\t\t\t\t\t\t\t\t\t\t\t\tA Client <strong>SHOULD</strong> be capable of fetching resources matching a search query using:\n\t\t\t\t\t\t\t\t\t\t\t\t<code class=\"highlighter-rouge\">GET [base]/FamilyMemberHistory/[id]{?[parameters]{&amp;_format=[mime-type]}}</code>\n\t\t\t\t\t\t\t\t\t\t\t</li></ul><!-- Only included search parameters that are not MAY or there is no conformance requirement included --><p>Search Parameter Summary:</p><table class=\"grid\"><thead><tr><th>Conformance</th><th>Parameter</th><th>Type</th><th>Example</th></tr></thead><tbody><tr><td><strong>SHALL</strong></td><td><a href=\"http://hl7.org/fhir/R4/search.html#id\">\n\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t_id</a></td><td>\n\t\t\t\t\t\t\t\t\t\t\t\t\t\t\treference\n\t\t\t\t\t\t\t\t\t\t\t\t\t\t</td><td><code class=\"highlighter-rouge\">GET [base]/FamilyMemberHistory?_id=[id]</code></td></tr><tr><td><strong>SHALL</strong></td><td><a href=\"http://hl7.org/fhir/R4/familymemberhistory.html#search\">\n\t\t\t\t\t\t\t\t\t\t\t\t\t\t\tpatient</a></td><td>\n\t\t\t\t\t\t\t\t\t\t\t\t\t\t\treference\n\t\t\t\t\t\t\t\t\t\t\t\t\t\t</td><td><code class=\"highlighter-rouge\">GET [base]/FamilyMemberHistory?patient=[type]/[id]</code></td></tr><tr><td><strong>SHALL</strong></td><td><a href=\"http://hl7.org/fhir/R4/familymemberhistory.html#search\">\n\t\t\t\t\t\t\t\t\t\t\t\t\t\t\tencounter</a></td><td>\n\t\t\t\t\t\t\t\t\t\t\t\t\t\t\treference\n\t\t\t\t\t\t\t\t\t\t\t\t\t\t</td><td><code class=\"highlighter-rouge\">GET [base]/FamilyMemberHistory?encounter=[type]/[id]</code></td></tr><tr><td><strong>SHALL</strong></td><td><a href=\"http://hl7.org/fhir/R4/familymemberhistory.html#search\">\n\t\t\t\t\t\t\t\t\t\t\t\t\t\t\tcode</a></td><td>\n\t\t\t\t\t\t\t\t\t\t\t\t\t\t\ttoken\n\t\t\t\t\t\t\t\t\t\t\t\t\t\t</td><td><code class=\"highlighter-rouge\">GET [base]/FamilyMemberHistory?code=[system]|[code]</code></td></tr></tbody></table><p>Search Parameter Combination Summary:</p><table class=\"grid\"><thead><tr><th>Conformance</th><th>Parameter Combination</th><th>Types</th><th>Example</th></tr></thead><tbody><tr><td>\n\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t</td><td><a href=\"http://hl7.org/fhir/R4/search.html#id\">_id</a>+\n\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t<a href=\"http://hl7.org/fhir/R4/patient.html#search\">patient</a>+\n\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t<a href=\"http://hl7.org/fhir/R4/encounter.html#search\">encounter</a>+\n\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t<a href=\"http://hl7.org/fhir/R4/code.html#search\">code</a></td><td>reference+reference+reference+token\n\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t</td><td><code class=\"highlighter-rouge\">GET [base]/FamilyMemberHistory?_id=[id]&amp;patient=[type]/[id]&amp;encounter=[type]/[id]&amp;code=[system]|[code]</code></td></tr></tbody></table><h4 class=\"no_toc\" id=\"medicationadministration\">MedicationAdministration</h4><p>Conformance Expectation:\t<strong>None</strong></p><p>Profile Interaction Summary:</p><ul><li><strong>SHOULD</strong> support \n\t\t\t\t\t\t\t\t\t\t\t<code>search-type</code>.</li></ul><p>Fetch and Search Criteria:</p><ul><li>\n\t\t\t\t\t\t\t\t\t\t\t\tA Client <strong>SHOULD</strong> be capable of fetching resources matching a search query using:\n\t\t\t\t\t\t\t\t\t\t\t\t<code class=\"highlighter-rouge\">GET [base]/MedicationAdministration/[id]{?[parameters]{&amp;_format=[mime-type]}}</code>\n\t\t\t\t\t\t\t\t\t\t\t</li></ul><!-- Only included search parameters that are not MAY or there is no conformance requirement included --><p>Search Parameter Summary:</p><table class=\"grid\"><thead><tr><th>Conformance</th><th>Parameter</th><th>Type</th><th>Example</th></tr></thead><tbody><tr><td><strong>SHALL</strong></td><td><a href=\"http://hl7.org/fhir/R4/search.html#id\">\n\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t_id</a></td><td>\n\t\t\t\t\t\t\t\t\t\t\t\t\t\t\treference\n\t\t\t\t\t\t\t\t\t\t\t\t\t\t</td><td><code class=\"highlighter-rouge\">GET [base]/MedicationAdministration?_id=[id]</code></td></tr><tr><td><strong>SHALL</strong></td><td><a href=\"http://hl7.org/fhir/R4/medicationadministration.html#search\">\n\t\t\t\t\t\t\t\t\t\t\t\t\t\t\tpatient</a></td><td>\n\t\t\t\t\t\t\t\t\t\t\t\t\t\t\treference\n\t\t\t\t\t\t\t\t\t\t\t\t\t\t</td><td><code class=\"highlighter-rouge\">GET [base]/MedicationAdministration?patient=[type]/[id]</code></td></tr><tr><td><strong>SHALL</strong></td><td><a href=\"http://hl7.org/fhir/R4/medicationadministration.html#search\">\n\t\t\t\t\t\t\t\t\t\t\t\t\t\t\tencounter</a></td><td>\n\t\t\t\t\t\t\t\t\t\t\t\t\t\t\treference\n\t\t\t\t\t\t\t\t\t\t\t\t\t\t</td><td><code class=\"highlighter-rouge\">GET [base]/MedicationAdministration?encounter=[type]/[id]</code></td></tr><tr><td><strong>SHALL</strong></td><td><a href=\"http://hl7.org/fhir/R4/medicationadministration.html#search\">\n\t\t\t\t\t\t\t\t\t\t\t\t\t\t\tcode</a></td><td>\n\t\t\t\t\t\t\t\t\t\t\t\t\t\t\ttoken\n\t\t\t\t\t\t\t\t\t\t\t\t\t\t</td><td><code class=\"highlighter-rouge\">GET [base]/MedicationAdministration?code=[system]|[code]</code></td></tr></tbody></table><p>Search Parameter Combination Summary:</p><table class=\"grid\"><thead><tr><th>Conformance</th><th>Parameter Combination</th><th>Types</th><th>Example</th></tr></thead><tbody><tr><td>\n\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t</td><td><a href=\"http://hl7.org/fhir/R4/search.html#id\">_id</a>+\n\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t<a href=\"http://hl7.org/fhir/R4/patient.html#search\">patient</a>+\n\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t<a href=\"http://hl7.org/fhir/R4/encounter.html#search\">encounter</a>+\n\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t<a href=\"http://hl7.org/fhir/R4/code.html#search\">code</a></td><td>reference+reference+reference+token\n\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t</td><td><code class=\"highlighter-rouge\">GET [base]/MedicationAdministration?_id=[id]&amp;patient=[type]/[id]&amp;encounter=[type]/[id]&amp;code=[system]|[code]</code></td></tr></tbody></table><h4 class=\"no_toc\" id=\"medicationdispense\">MedicationDispense</h4><p>Conformance Expectation:\t<strong>None</strong></p><p>Profile Interaction Summary:</p><ul><li><strong>SHOULD</strong> support \n\t\t\t\t\t\t\t\t\t\t\t<code>search-type</code>.</li></ul><p>Fetch and Search Criteria:</p><ul><li>\n\t\t\t\t\t\t\t\t\t\t\t\tA Client <strong>SHOULD</strong> be capable of fetching resources matching a search query using:\n\t\t\t\t\t\t\t\t\t\t\t\t<code class=\"highlighter-rouge\">GET [base]/MedicationDispense/[id]{?[parameters]{&amp;_format=[mime-type]}}</code>\n\t\t\t\t\t\t\t\t\t\t\t</li></ul><!-- Only included search parameters that are not MAY or there is no conformance requirement included --><p>Search Parameter Summary:</p><table class=\"grid\"><thead><tr><th>Conformance</th><th>Parameter</th><th>Type</th><th>Example</th></tr></thead><tbody><tr><td><strong>SHALL</strong></td><td><a href=\"http://hl7.org/fhir/R4/search.html#id\">\n\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t_id</a></td><td>\n\t\t\t\t\t\t\t\t\t\t\t\t\t\t\treference\n\t\t\t\t\t\t\t\t\t\t\t\t\t\t</td><td><code class=\"highlighter-rouge\">GET [base]/MedicationDispense?_id=[id]</code></td></tr><tr><td><strong>SHALL</strong></td><td><a href=\"http://hl7.org/fhir/R4/medicationdispense.html#search\">\n\t\t\t\t\t\t\t\t\t\t\t\t\t\t\tpatient</a></td><td>\n\t\t\t\t\t\t\t\t\t\t\t\t\t\t\treference\n\t\t\t\t\t\t\t\t\t\t\t\t\t\t</td><td><code class=\"highlighter-rouge\">GET [base]/MedicationDispense?patient=[type]/[id]</code></td></tr><tr><td><strong>SHALL</strong></td><td><a href=\"http://hl7.org/fhir/R4/medicationdispense.html#search\">\n\t\t\t\t\t\t\t\t\t\t\t\t\t\t\tencounter</a></td><td>\n\t\t\t\t\t\t\t\t\t\t\t\t\t\t\treference\n\t\t\t\t\t\t\t\t\t\t\t\t\t\t</td><td><code class=\"highlighter-rouge\">GET [base]/MedicationDispense?encounter=[type]/[id]</code></td></tr><tr><td><strong>SHALL</strong></td><td><a href=\"http://hl7.org/fhir/R4/medicationdispense.html#search\">\n\t\t\t\t\t\t\t\t\t\t\t\t\t\t\tcode</a></td><td>\n\t\t\t\t\t\t\t\t\t\t\t\t\t\t\ttoken\n\t\t\t\t\t\t\t\t\t\t\t\t\t\t</td><td><code class=\"highlighter-rouge\">GET [base]/MedicationDispense?code=[system]|[code]</code></td></tr></tbody></table><p>Search Parameter Combination Summary:</p><table class=\"grid\"><thead><tr><th>Conformance</th><th>Parameter Combination</th><th>Types</th><th>Example</th></tr></thead><tbody><tr><td>\n\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t</td><td><a href=\"http://hl7.org/fhir/R4/search.html#id\">_id</a>+\n\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t<a href=\"http://hl7.org/fhir/R4/patient.html#search\">patient</a>+\n\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t<a href=\"http://hl7.org/fhir/R4/encounter.html#search\">encounter</a>+\n\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t<a href=\"http://hl7.org/fhir/R4/code.html#search\">code</a></td><td>reference+reference+reference+token\n\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t</td><td><code class=\"highlighter-rouge\">GET [base]/MedicationDispense?_id=[id]&amp;patient=[type]/[id]&amp;encounter=[type]/[id]&amp;code=[system]|[code]</code></td></tr></tbody></table><h4 class=\"no_toc\" id=\"medicationstatement\">MedicationStatement</h4><p>Conformance Expectation:\t<strong>None</strong></p><p>Profile Interaction Summary:</p><ul><li><strong>SHOULD</strong> support \n\t\t\t\t\t\t\t\t\t\t\t<code>search-type</code>.</li></ul><p>Fetch and Search Criteria:</p><ul><li>\n\t\t\t\t\t\t\t\t\t\t\t\tA Client <strong>SHOULD</strong> be capable of fetching resources matching a search query using:\n\t\t\t\t\t\t\t\t\t\t\t\t<code class=\"highlighter-rouge\">GET [base]/MedicationStatement/[id]{?[parameters]{&amp;_format=[mime-type]}}</code>\n\t\t\t\t\t\t\t\t\t\t\t</li></ul><!-- Only included search parameters that are not MAY or there is no conformance requirement included --><p>Search Parameter Summary:</p><table class=\"grid\"><thead><tr><th>Conformance</th><th>Parameter</th><th>Type</th><th>Example</th></tr></thead><tbody><tr><td><strong>SHALL</strong></td><td><a href=\"http://hl7.org/fhir/R4/search.html#id\">\n\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t_id</a></td><td>\n\t\t\t\t\t\t\t\t\t\t\t\t\t\t\treference\n\t\t\t\t\t\t\t\t\t\t\t\t\t\t</td><td><code class=\"highlighter-rouge\">GET [base]/MedicationStatement?_id=[id]</code></td></tr><tr><td><strong>SHALL</strong></td><td><a href=\"http://hl7.org/fhir/R4/medicationstatement.html#search\">\n\t\t\t\t\t\t\t\t\t\t\t\t\t\t\tpatient</a></td><td>\n\t\t\t\t\t\t\t\t\t\t\t\t\t\t\treference\n\t\t\t\t\t\t\t\t\t\t\t\t\t\t</td><td><code class=\"highlighter-rouge\">GET [base]/MedicationStatement?patient=[type]/[id]</code></td></tr><tr><td><strong>SHALL</strong></td><td><a href=\"http://hl7.org/fhir/R4/medicationstatement.html#search\">\n\t\t\t\t\t\t\t\t\t\t\t\t\t\t\tencounter</a></td><td>\n\t\t\t\t\t\t\t\t\t\t\t\t\t\t\treference\n\t\t\t\t\t\t\t\t\t\t\t\t\t\t</td><td><code class=\"highlighter-rouge\">GET [base]/MedicationStatement?encounter=[type]/[id]</code></td></tr><tr><td><strong>SHALL</strong></td><td><a href=\"http://hl7.org/fhir/R4/medicationstatement.html#search\">\n\t\t\t\t\t\t\t\t\t\t\t\t\t\t\tcode</a></td><td>\n\t\t\t\t\t\t\t\t\t\t\t\t\t\t\ttoken\n\t\t\t\t\t\t\t\t\t\t\t\t\t\t</td><td><code class=\"highlighter-rouge\">GET [base]/MedicationStatement?code=[system]|[code]</code></td></tr></tbody></table><p>Search Parameter Combination Summary:</p><table class=\"grid\"><thead><tr><th>Conformance</th><th>Parameter Combination</th><th>Types</th><th>Example</th></tr></thead><tbody><tr><td>\n\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t</td><td><a href=\"http://hl7.org/fhir/R4/search.html#id\">_id</a>+\n\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t<a href=\"http://hl7.org/fhir/R4/patient.html#search\">patient</a>+\n\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t<a href=\"http://hl7.org/fhir/R4/encounter.html#search\">encounter</a>+\n\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t<a href=\"http://hl7.org/fhir/R4/code.html#search\">code</a></td><td>reference+reference+reference+token\n\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t</td><td><code class=\"highlighter-rouge\">GET [base]/MedicationStatement?_id=[id]&amp;patient=[type]/[id]&amp;encounter=[type]/[id]&amp;code=[system]|[code]</code></td></tr></tbody></table><h3 id=\"behavior\">FHIR Server RESTful Capabilities</h3><h3 class=\"no_toc\" id=\"resource--details\">RESTful Capabilities by Resource/Profile:</h3><p><strong>Summary</strong></p><table class=\"grid\"><thead><tr><th>Resource Type</th><th>Supported Interactions</th><th>Supported Profiles</th><th>Supported Searches</th><th>Supported <code>_includes</code></th><th>Supported <code>_revincludes</code></th><th>Supported Operations</th></tr></thead><tbody><tr><td><a href=\"#measure\">Measure</a></td><td>\n\t\t\t\t\t\t\t\t\t\t\n\t\t\t\t\t\t\t\t\t</td><!-- Supported Profiles --><td>\n\t\t\t\t\t\t\t\t\t\t\n\t\t\t\t\t\t\t\t\t</td><!-- Supported Searches --><td>\n\t\t\t\t\t\t\t\t\t\t\n\t\t\t\t\t\t\t\t\t</td><!-- Supported _includes --><td>\n\t\t\t\t\t\t\t\t\t\t\n\t\t\t\t\t\t\t\t\t</td><!-- Supported _revincludes --><td>\n\t\t\t\t\t\t\t\t\t\t\n\t\t\t\t\t\t\t\t\t</td><!-- Supported Operations --><td>\n\t\t\t\t\t\t\t\t\t\t$evaluate-measure\n\t\t\t\t\t\t\t\t\t</td></tr></tbody></table><!-- Resource Details --><h4 class=\"no_toc\" id=\"measure\">Measure</h4><p>Conformance Expectation:\t<strong>(conformance expectation undefined)</strong></p><p>Operation Summary:</p><ul><li><code>$evaluate-measure</code><sup>&#8224;</sup>.</li></ul><blockquote><p>$evaluate-measure<sup>&#8224;</sup></p><p>Evaluate the measure</p></blockquote></div>"
* text.status = #generated
