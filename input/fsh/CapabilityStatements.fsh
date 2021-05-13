Profile:        CapabilityStatementWithSlices
Parent:         CapabilityStatement
Title:          "Capability Statements with Slices"
Description:    "A Capability Statement with slicing defined"
* ^abstract = true
* insert SanerStructureDefinitionContent

* rest ^slicing.discriminator.type = #value
* rest ^slicing.discriminator.path = "mode"
* rest ^slicing.rules = #open
* rest ^slicing.description = "Slice based on the rest.mode pattern"
* rest contains clientSlice 0..1 and serverSlice 0..1
* rest[clientSlice].mode = #client (exactly)
* rest[serverSlice].mode = #server (exactly)


* rest.resource ^slicing.discriminator.type = #value
* rest.resource ^slicing.discriminator.path = "type"
* rest.resource ^slicing.rules = #open
* rest.resource ^slicing.description = "Slice based on the rest.resource.type pattern"
* rest.resource contains
    LocationSlice 0..1 and
    OrganizationSlice 0..1 and
    MeasureSlice 0..1 and
    MeasureReportSlice 0..1 and
    QuestionnaireSlice 0..1 and
    QuestionnaireResponseSlice 0..1 and
    LibrarySlice 0..* and
    ConceptMapSlice 0..* and
    ValueSetSlice 0..* and
    CodeSystemSlice 0..* and
    PatientSlice 0..* and
    AllergyIntoleranceSlice 0..* and
    ConditionSlice 0..* and
    DocumentReferenceSlice 0..* and
    DiagnosticReportSlice 0..* and
    EncounterSlice 0..* and
    FamilyMemberHistorySlice 0..* and
    MedicationAdministrationSlice 0..* and
    MedicationDispenseSlice 0..* and
    MedicationRequestSlice 0..* and
    MedicationStatementSlice 0..* and
    ObservationSlice 0..* and
    ProcedureSlice 0..* and
    ServiceRequestSlice 0..* and
    ParametersSlice 0..*

* rest.resource[LocationSlice].type = #Location (exactly)
* rest.resource[OrganizationSlice].type = #Organization (exactly)
* rest.resource[MeasureSlice].type = #Measure (exactly)
* rest.resource[MeasureReportSlice].type = #MeasureReport (exactly)
* rest.resource[QuestionnaireSlice].type = #Questionnaire (exactly)
* rest.resource[QuestionnaireResponseSlice].type = #QuestionnaireResponse (exactly)
* rest.resource[LibrarySlice].type = #Library (exactly)
* rest.resource[ConceptMapSlice].type = #ConceptMap (exactly)
* rest.resource[ValueSetSlice].type = #ValueSet (exactly)
* rest.resource[CodeSystemSlice].type = #CodeSystem (exactly)
* rest.resource[PatientSlice].type = #Patient (exactly)
* rest.resource[AllergyIntoleranceSlice].type = #AllergyIntolerance (exactly)
* rest.resource[ConditionSlice].type = #Condition (exactly)
* rest.resource[DocumentReferenceSlice].type = #DocumentReference (exactly)
* rest.resource[DiagnosticReportSlice].type = #DiagnosticReport (exactly)
* rest.resource[EncounterSlice].type = #Encounter (exactly)
* rest.resource[FamilyMemberHistorySlice].type = #FamilyMemberHistory (exactly)
* rest.resource[MedicationAdministrationSlice].type = #MedicationAdministration (exactly)
* rest.resource[MedicationDispenseSlice].type = #MedicationDispense (exactly)
* rest.resource[MedicationRequestSlice].type = #MedicationRequest (exactly)
* rest.resource[MedicationStatementSlice].type = #MedicationStatement (exactly)
* rest.resource[ObservationSlice].type = #Observation (exactly)
* rest.resource[ProcedureSlice].type = #Procedure (exactly)
* rest.resource[ServiceRequestSlice].type = #ServiceRequest (exactly)
* rest.resource[ParametersSlice].type = #Parameters (exactly)
