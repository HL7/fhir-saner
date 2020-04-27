Profile:        ResourceLocation
Parent:         http://hl7.org/fhir/us/core/StructureDefinition/us-core-location
Id:             saner-resource-location
Title:          "Resource Location Profile"
Description:    "Defines constraints on the Location Resource describing the location of resources (Beds and Devices)."


* status ^short = "The present status (active | inactive) of the location."
* status ^comment = "This field can be used to determine if a location is open or closed/shut down."
* status 1..1
* name ^short = "A name used to describe this location to others."
* name ^comment = "This field should be a name easily recognized and distinct."
* name 1..1
* mode ^short = "All location resources using this profile are instances"
* mode 1..1
* mode = #instance
* type ^short = "The type of location (e.g., hospital, long-term care, urgent care, et cetera)"
* type ^comment = "This field should describe the general nature of services at the location."
* type 1..1
* type from http://terminology.hl7.org/ValueSet/v3-ServiceDeliveryLocationRoleType (extensible)
* telecom ^short = "A contact telephone number must be able to be provided for the location"
* type ^comment = "This field might be used by someone to ask about resources at the location."
* telecom MS
* address ^short = "A street address must be able to be provided for the location"
* address ^comment = "This field is used to navigate to the location. It should be a physical rather than postal address."
* address MS
* position ^short = "A GPS location must be able to be provided for the location"
* position ^comment = "This field is used to map the location. It should be accurate enough to identify the entrance of a physical building or wing."
* position MS