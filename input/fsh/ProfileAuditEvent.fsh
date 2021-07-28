Profile: AuditEventBase
Parent: AuditEvent
Title: "General Audit Event Requirements"
Description: "Defines general constraints on the AuditEvent Resource."

* ^jurisdiction = http://unstats.un.org/unsd/methods/m49/m49.htm#001
* subtype 1..1 MS
* subtype.system = "http://hl7.org/fhir/restful-interaction"
* action 1..1 MS
* period 1..1 MS
* recorded 1..1 MS

* agent ^slicing.discriminator[0].type = #value
* agent ^slicing.discriminator[0].path = "role"
* agent ^slicing.discriminator[1].type = #value
* agent ^slicing.discriminator[1].path = "requestor"
* agent ^slicing.rules = #openAtEnd
// * agent ^slicing.ordered = false   // can be omitted, since false is the default
* agent ^slicing.description = "Slice based on the component.code pattern"

* agent contains Source 1..1 MS and
           HumanRequestor 0..* MS and
           Destination 1..1 MS

* agent[Source].role 1..1 MS
* agent[Source].role from SourceRoles
* agent[Source].who 1..1 MS
* agent[Source].name 1..1 MS
* agent[Source].requestor = false

* agent[HumanRequestor].role 1..1 MS
* agent[HumanRequestor].role from SourceOrDestinationRoles
* agent[HumanRequestor].who 1..1 MS
* agent[HumanRequestor].name 1..1 MS
* agent[HumanRequestor].requestor = true

* agent[Destination].role 1..1 MS
* agent[Destination].role from DestinationRoles
* agent[Destination].who 1..1 MS
* agent[Destination].name 1..1 MS
* agent[Destination].requestor = false

* entity 1..* MS
* entity.role 1..1 MS
* entity.role.system = "http://terminology.hl7.org/CodeSystem/object-role"

ValueSet: SourceRoles
Description: "Roles for communication source in AuditEvent"
* http://dicom.nema.org/resources/ontology/DCM#110153 "Source Role ID"
* http://dicom.nema.org/resources/ontology/DCM#110155 "Source Media"
* http://terminology.hl7.org/CodeSystem/contractsignertypecodes#PRIMAUTH	"Primary Author"
* http://terminology.hl7.org/CodeSystem/contractsignertypecodes#AMENDER	"Amender"
* http://terminology.hl7.org/CodeSystem/contractsignertypecodes#COAUTH	"Co-author"
* http://terminology.hl7.org/CodeSystem/contractsignertypecodes#SOURCE	"Source"
* http://terminology.hl7.org/CodeSystem/v3-ParticipationType#AUT	"Author"
* http://terminology.hl7.org/CodeSystem/v3-ParticipationType#CST	"Custodian"

ValueSet: DestinationRoles
Description: "Roles for communication destination in AuditEvent"
* http://dicom.nema.org/resources/ontology/DCM#110152 "Destination Role ID"
* http://dicom.nema.org/resources/ontology/DCM#110154 "Destination Media"
* http://terminology.hl7.org/CodeSystem/v3-ParticipationType#IRCP	"Information Recipient"
// Sub-types of Information Recipient
* http://terminology.hl7.org/CodeSystem/v3-ParticipationType#NOT	"Ugent Notification Contact"
* http://terminology.hl7.org/CodeSystem/v3-ParticipationType#PRCP	"Primary Information Recipient"
* http://terminology.hl7.org/CodeSystem/v3-ParticipationType#REFB	"Referred By"
* http://terminology.hl7.org/CodeSystem/v3-ParticipationType#REFT	"Referred to"
* http://terminology.hl7.org/CodeSystem/v3-ParticipationType#TRC	"Tracker"
* http://terminology.hl7.org/CodeSystem/v3-ParticipationFunction#AUCG	"Caregiver Information Receiver"
* http://terminology.hl7.org/CodeSystem/v3-ParticipationFunction#AULR	"Legitimate Relationship Information Receiver"
* http://terminology.hl7.org/CodeSystem/v3-ParticipationFunction#AUTM	"Care Team Information Receiver"
* http://terminology.hl7.org/CodeSystem/v3-ParticipationFunction#AUWA	"Work Area Information Receiver"

ValueSet: SourceOrDestinationRoles
Description: "Roles for human requestors in an AuditEvent"
* codes from valueset SourceRoles
* codes from valueset DestinationRoles
* http://terminology.hl7.org/CodeSystem/extra-security-role-type#humanuser

Instance: ExAuditEventBase
InstanceOf: AuditEventBase
Usage: #example
Title: "ExAuditEventBase"
Description: "Example Audit Event following the SANER Base definition illustrating the creation of a MeasureReport."
* type = http://terminology.hl7.org/CodeSystem/audit-event-type#rest
* subtype = http://hl7.org/fhir/restful-interaction#create
* recorded = "2021-08-09T00:00:35Z"
* outcome = #0

* agent[Source].role = http://terminology.hl7.org/CodeSystem/contractsignertypecodes#PRIMAUTH
* agent[Source].who = Reference(X140008)
* agent[Source].name = "SANER Project automation"
* agent[Source].requestor = false

* agent[Destination].role = http://terminology.hl7.org/CodeSystem/v3-ParticipationType#IRCP
* agent[Destination].who = Reference(MiDOH)
* agent[Destination].name = "State DOH"
* agent[Destination].requestor = false

* entity.role = http://terminology.hl7.org/CodeSystem/object-role#3
* action = #C
* source.observer = Reference(MiDOH)
* period.start = 2021-08-09T00:00:01Z
* period.end = 2021-08-09T00:00:34Z

Instance: MiDOH
InstanceOf: Organization
Usage: #example
Description: "Michigan State Department of Health"
* identifier.system = "http://michigan.gov/state-dept-ids"
* identifier.value = "25"
* name = "Michigan Health"
* alias = "Michigan State Department of Health"