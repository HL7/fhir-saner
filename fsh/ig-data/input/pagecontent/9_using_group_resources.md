This implementation guide uses the HL7 FHIR [Group](https://hl7.org/fhir/R4/group.html)
resource to report information about distinct groups of resources that are available.
It supports two different forms of reporting on this resource:

1. Push - In which the Availability Source periodically reports the status of
one or more Group Resources in a [Batch](https://hl7.org/fhir/R4/transaction.html) update.

2. Pull - In which the Availability Collector periodically queries the status of one
or more Group Resources in one or more [Search](https://hl7.org/fhir/R4/search.html) operations.

Both of these operations are expected to be periodic, and the Collector is expected
to support both forms depending upon how it is configured.  This enables Availability
Sources to have a choice about how the data is updated, yet retains the ability of the
Availability Collector to detect systems that are offline or not-responding.  In the
Push case, the Availability Collector can be configured to detect that availability
data is not being updated frequently enough.  In the Pull case, the Availability
Collector can detect systems which are not responsive to the queries that it is
performing.

### Using the Group Resource

According to the FHIR Standard:

> The FHIR Group Resource is able to define a set of _possible_ ... devices,
> etc. that are of interest for some intended future healthcare-related activities.

It is that intent that is being utilized when applying the Group resource to the use
cases in this guide.  A group is defined by describing the desired characteristics of
the group.

Each Group resource managed by an Availability Source fully describes a distinct set of available
resources and has a unique id, and that UUID is a persistent identifier for describing a collection
of resources with a given set of characteristics. For the purposes of this specification,
the ```Group.id``` field of any group exchanged must be a [UUID](https://www.ietf.org/rfc/rfc4122.html)
as described by RFC 4122, and may not be the [nil-UUID](https://www.ietf.org/rfc/rfc4122.html#section-4.1.7),
but is otherwise unconstrained.  It may be a version 1 UUID (e.g., generated from MAC
address and time-stamp), a version 4 randomly generated UUID, or any other variant.
The version 4 UUID is often the most recommended by security professionals to avoid leaking
information about network devices.

#### Group Characteristics

There are two different types of Group resources which are used by this guide.  A Bed Group
describes a collection of beds based on their status (Active, Temporarily Unavailable,
or Inactive), operational status, type of bed, and the entity managing the beds.  The
Bed Group must be supported by all actors in this implementation guide.  A bed is both a
device (the physical bed), and has an associated location and features.  This guide
defines the characteristics of a bed, its location and associated features as a set
of characteristics that define a group of beds.  The members of the group are those
beds which have matching characteristics.

A Device Group describes a collection of medical devices based on their availability
status, type of device, and entity managing the device. The Device Group is supported
by actors that implement the [Resource Option](actors_and_transactions.html#asset-option)
described in this guide.

Group resources are distinguished by the characteristics which define the group.  This
guide describes the [Extensible](https://www.hl7.org/fhir/terminologies.html#extensible)
vocabularies used to describe these characteristics.

#### Bed Group Characteristics
Status
: The status characteristic corresponds to the [status](https://www.hl7.org/fhir/location-definitions.html#Location.status)
field of the the FHIR [Location Resource](https://hl7.org/fhir/R4/location.html).

The vocabulary for the Status Characteristic is defined by the required
vocabulary for Location.status.

<table class='grid'>
<thead>
<tr><th>Code</th><th>Implementation Guidance</th></tr>
</thead>
<tbody>
<tr><td>active</td><td>Beds described by this characteristic are operational (but may be in use).</td></tr>
<tr><td>suspended</td><td>Beds described by this characteristic are temporarily out of service.</td></tr>
<tr><td>inactive</td><td>Beds described by this characteristic are no longer operational (e.g., Closed).</td></tr>
</tbody>
</table>

Operational Status
: The Operational Status characteristic corresponds to the
[operationalStatus](https://www.hl7.org/fhir/location-definitions.html#Location.operationalStatus)
field of the FHIR [Location Resource](https://hl7.org/fhir/R4/location.html).

Values for this field come from the [Bed Location Operational Status Value Set](ValueSet-BedLocationOperationalStatus.html).

NOTE: The HL7 V2 code supporting Isolation is not used in this value set because the ability to support isolation
is a property of a bed which independent from the other operational status values.

Type
: The Type characteristic corresponds to the [type](https://www.hl7.org/fhir/location-definitions.html#Location.type)
field of the FHIR [Location Resource](https://hl7.org/fhir/R4/location.html).

Values for this field come from the [Bed Type Value Set](ValueSet-BedType.html).

The vocabulary for the type characteristic is informed by the work of AHRQ,
ANSI/HITSP, HL7, and OASIS in advancement of the OASIS HAVE standards, and the
AHRQ [HAvBED](https://archive.ahrq.gov/prep/havbed2/) specification.

The [HAvBEDtoFHIR Concept Map](ConceptMap-HAvBED2toFHIR.html) maps from vocabulary defined
in the HAvBED2 specification to terminology defined in HL7 FHIR R4 and in this guide.

Codes for NURSERY, BURNU, and OR are defined in the
[SANER Bed Type Code System](CodeSystem-BedType.html) created to fill the gaps in existing
FHIR R4 Coding Systems.

Property
: The property characteristic describes other important capabilities of the Bed (or device).

This characteristic is used to identify beds that support negative airflow
or other isolation.  Isolation capabilities are "features" that can be added to a "Bed"
by placing it in a location that supports isolation.

Values for this field come from the [Bed Property Value Set](ValueSet-BedProperty.html).

This value set is used to identify beds that support negative airflow
or other isolation. Isolation capabilities are "features" that can be added
to a "Bed" by placing it in a location that supports isolation.

The values in this value set come from the [Saner Bed Type Coding System](CodeSystem-BedType.html).

The [HAvBEDtoFHIR Concept Map](ConceptMap-HAvBED2toFHIR.html) maps from vocabulary defined
in the HAvBED2 specification to terminology defined [SANER Bed Type Code System](CodeSystem-BedType.html)
of this guide, created to fill the gaps in existing FHIR R4 Coding Systems.
