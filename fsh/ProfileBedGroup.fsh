Invariant: must-be-uuid
Description: "Group.id SHALL be a UUID"
Severity: #error

ValueSet: BedLocationOperationalStatus
Title: "Bed Location Operational Status"
Description: "This Value Set is used to indicate whether a bed is in use, being readied for use, or not available for use."
* codes from valueset http://terminology.hl7.org/ValueSet/v2-0116
* exclude http://terminology.hl7.org/CodeSystem/v2-0116#I

CodeSystem: SanerBedType
Title: "Bed Type Coding System"
Description: "This Coding System fills gaps describing types of care services that a bed can support."
* #OR "Operating Room" "Operating Rooms"
* #NURSERY "Nursery" "Neonatal or newborn (non-ICU) care beds"
* #BURNU "Burn Unit" "Burn ICU beds"
* #NEGISO "Negative Pressure Isolation Unit" "Beds in a negative pressure isolation environment"
* #OTHISO "Other Isolation Unit" "Beds in an other (non-negative pressure) isolation environment"
* #NONISO "Non-isolating unit" "Bed in a unit that does not support isolation"

ValueSet: BedType
Title: "Bed Type"
Description: "This Value Set describes the types of care services that a bed can support."
* http://terminology.hl7.org/CodeSystem/v3-RoleCode#ICU
* http://terminology.hl7.org/CodeSystem/v3-RoleCode#PEDICU
* http://terminology.hl7.org/CodeSystem/v3-RoleCode#PEDNICU
* http://terminology.hl7.org/CodeSystem/v3-RoleCode#ER
* http://terminology.hl7.org/CodeSystem/v3-RoleCode#HU
* http://terminology.hl7.org/CodeSystem/v3-RoleCode#RHU
* http://terminology.hl7.org/CodeSystem/v3-RoleCode#PEDU
* http://terminology.hl7.org/CodeSystem/v3-RoleCode#PHU
* SanerBedType#OR
* SanerBedType#NURSERY
* SanerBedType#BURNU

ValueSet: BedProperty
Title: "Bed Property"
Description: "This value set describes other properties of a bed, such as the ability to support isolation."
* SanerBedType#NEGISO
* SanerBedType#OTHISO
* SanerBedType#NONISO

Profile:        BedGroup
Parent:         Group
Id:             saner-bed-group
Title:          "Bed Group Profile"
Description:    "Defines constraints on the Group Resource for data communicating about Bed availability."

* id obeys {must-be-uuid}
* type = #device
* actual = true
* code = http://terminology.hl7.org/CodeSystem/location-physical-type#bd
* name 1..1
* quantity 1..1
* managingEntity 1..1
* managingEntity only Reference(Organization)
* managingEntity.identifier 1..1
* managingEntity.identifier.system = "http://hl7.org/fhir/sid/us-npi"

* characteristic ^slicing.discriminator.type = #pattern
* characteristic ^slicing.discriminator.path = "code"
* characteristic ^slicing.rules = #open
* characteristic ^slicing.description = "Slice based on the characteristic.code pattern"

* characteristic.exclude = false
* characteristic.period 0..0

* characteristic contains
    Status 1..1 and
    OperationalStatus 1..1 and
    Type 1..1 and
    Property 1..1 and
    Location 1..1

 * characteristic[Status] ^short = "The Status slice reports on the status of the bed (e.g., active | suspended | inactive)"
 * characteristic[Status] ^comment = "An active bed is one that can be used, suspended is one that has been temporarily taken out of service, an inactive one is not available"
 * characteristic[Status].code = http://hl7.org/fhir/R4/StructureDefinition/Location#Location.status
 * characteristic[Status].valueCodeableConcept 1..1
 * characteristic[Status].valueCodeableConcept from http://hl7.org/fhir/ValueSet/location-status (required)

 * characteristic[OperationalStatus] ^short = "The OperationalStatus slice reports on the operationalStatus of the bed (e.g., occupied | unoccupied | housekeeping)"
 * characteristic[OperationalStatus] ^comment = "OperationalStatus helps assess whether a bed is in use or could be placed into use"
 * characteristic[OperationalStatus].code = http://hl7.org/fhir/R4/StructureDefinition/Location#Location.operationalStatus
 * characteristic[OperationalStatus].valueCodeableConcept 1..1
 * characteristic[OperationalStatus].valueCodeableConcept from BedLocationOperationalStatus (required)

 * characteristic[Type] ^short = "The Type slice reports on the type location for the bed (e.g., ICU | ER| Hospital Unit)"
 * characteristic[Type] ^comment = "Type helps to identify the services available to patients using the bed"
 * characteristic[Type].code = http://hl7.org/fhir/R4/StructureDefinition/Location#Location.type
 * characteristic[Type].valueCodeableConcept 1..1
 * characteristic[Type].valueCodeableConcept from BedType (extensible)

 * characteristic[Property] ^short = "The Property slice reports on isolation properties of the bed(e.g., NEGISO | OTHISO | NONISO)"
 * characteristic[Property] ^comment = "Property identifies important properties of the bed (e.g., isolation)"
 * characteristic[Property].code = http://hl7.org/fhir/R4/StructureDefinition/Location#Location.Feature
 * characteristic[Property].valueCodeableConcept 1..1
 * characteristic[Property].valueCodeableConcept from BedProperty (required)

 * characteristic[Location] ^short = "The Location slice reports the physical location of the bed (e.g., address, GPS coordinates)"
 * characteristic[Location] ^comment = "Location aids in mapping, navigation and communications to or about the bed."
 * characteristic[Location].code = http://hl7.org/fhir/R4/StructureDefinition/Location#Location.partOf
 * characteristic[Location].valueReference 1..1
 * characteristic[Location].valueReference only Reference(ResourceLocation)
