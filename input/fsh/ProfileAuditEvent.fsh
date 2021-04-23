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

/*
//Audit Source (1..1)
//    not specified
// * source 1..1 MS
// * source.site 1..1 MS
// * source.type 1..1 MS

Profile:        AuditEventSearch
Parent:         AuditEventBase
Title:          "Audit Event Search"
Description:    "Defines constraints on the AuditEvent Resource to record when a record has been queried."
* ^jurisdiction = http://unstats.un.org/unsd/methods/m49/m49.htm#001

* type = http://dicom.nema.org/resources/ontology/DCM#110112
* type.display = "Query"
* subtype = http://hl7.org/fhir/restful-interaction#search-type
* subtype.display = "Search"
* action = #E

* entity.type = http://terminology.hl7.org/CodeSystem/audit-entity-type#2 "System Object"
* entity.role = http://terminology.hl7.org/CodeSystem/object-role#24 "Query"
* entity.query 1..1 MS
* entity.detail 1..* MS

Profile:        AuditEventRead
Parent:         AuditEventBase
Title:          "Audit Event Read"
Description:    "Defines constraints on the AuditEvent Resource to record when a record has been Read."
* ^jurisdiction = http://unstats.un.org/unsd/methods/m49/m49.htm#001
* type = http://dicom.nema.org/resources/ontology/DCM#110106
* type.display = "Export"
* subtype = http://hl7.org/fhir/restful-interaction#read
* subtype.display = "Read"
* action = #R

* entity.what 1..1 MS
* entity.role = http://terminology.hl7.org/CodeSystem/object-role#3 "Report"

Profile:        AuditEventCreate
Parent:         AuditEventBase
Title:          "Audit Event Create Profile"
Description:    "Defines constraints on the AuditEvent Resource to record when a resource has been written."
* ^jurisdiction = http://unstats.un.org/unsd/methods/m49/m49.htm#001

* type = http://dicom.nema.org/resources/ontology/DCM#110107
* type.display = "Import"
* subtype = http://hl7.org/fhir/restful-interaction#create
* subtype.display = "Create"
* action = #C

* entity.what 1..1 MS
* entity.role = http://terminology.hl7.org/CodeSystem/object-role#3 "Report"

Profile:        AuditEventUpdate
Parent:         AuditEventBase
Title:          "Audit Event Update Profile"
Description:    "Defines constraints on the AuditEvent Resource to record when a resource has been updated."
* ^jurisdiction = http://unstats.un.org/unsd/methods/m49/m49.htm#001

* type = http://dicom.nema.org/resources/ontology/DCM#110107
* type.display = "Import"
* subtype = http://hl7.org/fhir/restful-interaction#create
* subtype.display = "Update"
* action = #U
* recorded 1..1 MS

* entity.what 1..1 MS
* entity.role = http://terminology.hl7.org/CodeSystem/object-role#3 "Report"

Profile:        AuditEventDelete
Parent:         AuditEventBase
Title:          "Audit Event Delete Profile"
Description:    "Defines constraints on the AuditEvent Resource to record when a resource has been deleted."
* ^jurisdiction = http://unstats.un.org/unsd/methods/m49/m49.htm#001

* type = http://dicom.nema.org/resources/ontology/DCM#110105
* type.display = "DICOM Study Deleted"
* subtype = http://hl7.org/fhir/restful-interaction#delete
* subtype.display = "Delete"
* action = #D

* entity.what 1..1 MS
* entity.role = http://terminology.hl7.org/CodeSystem/object-role#3 "Report"
*/
