A Group resource conforming to the Device Group profile can be computed by counting Device
resources matching the characteristics found in the Device Group Profile.  The Supporting
Device profile describes the essential fields in a Device resource that can be counted in
this way.

Each characteristic in the Device Group can be tied back to a FHIR element associated
with the Device resource.

* `Group.characteristic.code` identifies the specific field that is used to obtain the
value for the characteristic.
   * `Group.characteristic.code.system` identifies the defining StructureDefinition
   of the FHIR Resource.
   * `Group.characteristic.code.code` identifies the field in that Resource that is
   counted.
* `Group.characteristic.valueCodeableConcept` is the matching value for the element
when the field is a coded value.
* `Group.characteristic.valueReference` is the matching value for the element when
the field is a resource reference.

In the case of the SupportingDevice profile (Unlike BedLocation), property is an element
describing the device.

*TBD* We don't yet have a good value set to describe properties of a supporting device.
Some properties might include limitations on the patient population that can be served.
For example, some ventilators are specifically designed only for use with neonates,
and cannot serve other patient populations.  This would be an important property to
be described in a device.  Other such properties might also be important.