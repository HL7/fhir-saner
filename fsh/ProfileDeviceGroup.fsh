Profile:        DeviceGroup
Parent:         Group
Id:             saner-device-group
Title:          "Device Group Profile"
Description:    "Defines constraints on the Group Resource for data communicating about device availability."

* id obeys {must-be-uuid}
* type = #device
* actual = true
* code = http://snomed.info/sct#49062001
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
    Type 1..1 and
    Property 1..1 and
    Location 1..1

 * characteristic[Status] ^short = "The Status slice reports on the status of the device (e.g., active | inactive)"
 * characteristic[Status] ^comment = "An active device is one that can or is being used for care, an inactive one is not available for care (e.g., on loan, needs repair, contaminated, lost, etc.)"
 * characteristic[Status].code = http://hl7.org/fhir/R4/StructureDefinition/Device#Device.status
 * characteristic[Status].value[x] only CodeableConcept
 * characteristic[Status].valueCodeableConcept from http://hl7.org/fhir/ValueSet/device-status (required)

 * characteristic[Type] ^short = "The Type slice reports on the type of the device using SNOMED CT codes descending from Device"
 * characteristic[Type] ^comment = "Type allows specific kinds of devices to be queried or reported on.  The value set should be limited to a short list of critical devices."
 * characteristic[Type].code = http://hl7.org/fhir/R4/StructureDefinition/Device#Device.type
 * characteristic[Type].value[x] only CodeableConcept
 * characteristic[Type].valueCodeableConcept from http://hl7.org/fhir/ValueSet/device-type (extensible)

 * characteristic[Property] ^short = "The Property slice reports on critical properties of the device TBD"
 * characteristic[Property] ^comment = "Some devices may be limited, others have more capabilities. Property allows this to be further clarified (e.g., Neonatal Ventilator vs. General Use Ventilator)"
 * characteristic[Property].code = http://hl7.org/fhir/R4/StructureDefinition/Device#Device.property
 * characteristic[Property].value[x] only CodeableConcept
 * characteristic[Property].valueCodeableConcept from http://hl7.org/fhir/ValueSet/device-component-property (preferred)

 * characteristic[Location] ^short = "The Location slice reports on the physical ocation of the device (e.g., address, GPS)"
 * characteristic[Location] ^comment = "Location aids in mapping, navigation and communications to or about the device."
 * characteristic[Location].code = http://hl7.org/fhir/R4/StructureDefinition/Location#Location.partOf
 * characteristic[Location].value[x] only Reference(ResourceLocation)
