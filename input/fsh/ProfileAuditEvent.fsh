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

* agent ^slicing.discriminator[0].type = #pattern
* agent ^slicing.discriminator[0].path = "role"
* agent ^slicing.discriminator[1].type = #pattern
* agent ^slicing.discriminator[1].path = "requestor"
* agent ^slicing.rules = #openAtEnd
// * agent ^slicing.ordered = false   // can be omitted, since false is the default
* agent ^slicing.description = "Slice based on the component.code pattern"

* agent contains Source 1..1 MS and
           HumanRequestor 0..* MS and
           Destination 1..1 MS

// * agent[Source].role = http://dicom.nema.org/resources/ontology/DCM#110153 "Source Role ID"
* agent[Source].role 1..1 MS
* agent[Source].who 1..1 MS
* agent[Source].name 1..1 MS
* agent[Source].requestor = false

* agent[HumanRequestor].role 1..1 MS
* agent[HumanRequestor].who 1..1 MS
* agent[HumanRequestor].name 1..1 MS
* agent[HumanRequestor].requestor = true

// * agent[Destination].role =  http://dicom.nema.org/resources/ontology/DCM#110152 "Destination Role ID"
* agent[Destination].role 1..1 MS
* agent[Destination].who 1..1 MS
* agent[Destination].name 1..1 MS
* agent[Destination].requestor = false

* entity 1..* MS
* entity.role 1..1 MS
* entity.role.system = "http://terminology.hl7.org/CodeSystem/object-role"

Instance: ExAuditEventBase
InstanceOf: AuditEventBase
Usage: #example
Title: "ExAuditEventBase"
Description: "Example Audit Event following the SANER Base definition illustrating the creation of a MeasureReport."
* type = #object
* subtype = #create
* recorded = "2021-08-09T00:00:35Z"
* outcome = #0
* agent[Source].role = #PRIMAUTH
* agent[Source].who = Reference(X140008)
* agent[Source].name = "SANER Project automation"
* agent[Source].requestor = false

* agent[Destination].role = #IRCP
* agent[Destination].who = Reference(MiDOH)
* agent[Destination].name = "State DOH"
* agent[Destination].requestor = false

* entity.role = #3
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