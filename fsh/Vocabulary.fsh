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


CodeSystem: LocationFields
Title: "Location Resource Field Names"
Description: "This Coding System identifies legal field names in a FHIR R4 Location Resource."
* ^url = "http://hl7.org/fhir/R4/StructureDefinition/Location"
* ^status = #active
* ^content = #complete
* #Location
* #Location.id
* #Location.meta
* #Location.implicitRules
* #Location.language
* #Location.text
* #Location.contained
* #Location.extension
* #Location.modifierExtension
* #Location.identifier
* #Location.status
* #Location.operationalStatus
* #Location.name
* #Location.alias
* #Location.description
* #Location.mode
* #Location.type
* #Location.telecom
* #Location.address
* #Location.physicalType
* #Location.position
* #Location.position.id
* #Location.position.extension
* #Location.position.modifierExtension
* #Location.position.longitude
* #Location.position.latitude
* #Location.position.altitude
* #Location.managingOrganization
* #Location.partOf
* #Location.hoursOfOperation
* #Location.hoursOfOperation.id
* #Location.hoursOfOperation.extension
* #Location.hoursOfOperation.modifierExtension
* #Location.hoursOfOperation.daysOfWeek
* #Location.hoursOfOperation.allDay
* #Location.hoursOfOperation.openingTime
* #Location.hoursOfOperation.closingTime
* #Location.availabilityExceptions
* #Location.endpoint

CodeSystem: DeviceFields
Title: "Device Resource Field Names"
Description: "This Coding System identifies legal field names in a FHIR R4 Device Resource."
* ^url = "http://hl7.org/fhir/R4/StructureDefinition/Device"
* ^status = #active
* ^content = #complete
* #Device
* #Device.id
* #Device.meta
* #Device.implicitRules
* #Device.language
* #Device.text
* #Device.contained
* #Device.extension
* #Device.modifierExtension
* #Device.identifier
* #Device.definition
* #Device.udiCarrier
* #Device.udiCarrier.id
* #Device.udiCarrier.extension
* #Device.udiCarrier.modifierExtension
* #Device.udiCarrier.deviceIdentifier
* #Device.udiCarrier.issuer
* #Device.udiCarrier.jurisdiction
* #Device.udiCarrier.carrierAIDC
* #Device.udiCarrier.carrierHRF
* #Device.udiCarrier.entryType
* #Device.status
* #Device.statusReason
* #Device.distinctIdentifier
* #Device.manufacturer
* #Device.manufactureDate
* #Device.expirationDate
* #Device.lotNumber
* #Device.serialNumber
* #Device.deviceName
* #Device.deviceName.id
* #Device.deviceName.extension
* #Device.deviceName.modifierExtension
* #Device.deviceName.name
* #Device.deviceName.type
* #Device.modelNumber
* #Device.partNumber
* #Device.type
* #Device.specialization
* #Device.specialization.id
* #Device.specialization.extension
* #Device.specialization.modifierExtension
* #Device.specialization.systemType
* #Device.specialization.version
* #Device.version
* #Device.version.id
* #Device.version.extension
* #Device.version.modifierExtension
* #Device.version.type
* #Device.version.component
* #Device.version.value
* #Device.property
* #Device.property.id
* #Device.property.extension
* #Device.property.modifierExtension
* #Device.property.type
* #Device.property.valueQuantity
* #Device.property.valueCode
* #Device.patient
* #Device.owner
* #Device.contact
* #Device.location
* #Device.url
* #Device.note
* #Device.safety
* #Device.parent
