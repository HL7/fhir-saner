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
by actors that implement the [Resource Option](actors_and_transactions.html#resource-option)
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
<tr><th>Code</th><th>Description</th><th>Implementation Guideance</th></tr>
</thead>
<tbody>
<tr><td>active</td><td>Active</td><td>Beds described by this characteristic are operational (but may be in use).</td></tr>
<tr><td>suspended</td><td>Suspended</td><td>Beds described by this characteristic are temporarily out of service.</td></tr>
<tr><td>inactive</td><td>Inactive</td><td>Beds described by this characteristic are no longer operational (e.g., Closed).</td></tr>
</tbody>
</table>

Operational Status
: The Operational Status characteristic corresponds to the
[operationalStatus](https://www.hl7.org/fhir/location-definitions.html#Location.operationalStatus)
field of the FHIR [Location Resource](https://hl7.org/fhir/R4/location.html).
The vocabulary for the Operational Status Characteristic is defined by the preferred
vocabulary for Location.operationalStatus.

<table class='grid'>
<thead>
<tr><th>Code</th><th>Description</th><th>Implementation Guideance</th></tr>
</thead>
<tbody>
<tr><td>C</td><td>Closed</td><td>This bed is no longer in service</td></tr>
<tr><td>H</td><td>Housekeeping</td><td>This bed is not in used, but is presently ready for use.</td></tr>
<tr><td>K</td><td>Contaminated</td><td>This bed needs decontamination before it can be readied for use.</td></tr>
<tr><td><del>I</del></td><td><del>Isolated</del></td><td>Not used by this guide. See <a href="#feature">Feature</a> below.<br/>
The ability to support isolation is a feature which can be combined with other operational status values.</td></tr>
<tr><td>O</td><td>Occupied</td><td>This bed is presently in use.</td></tr>
<tr><td>U</td><td>Unoccupied</td><td>This bed is presently ready for use.</td></tr>
</tbody>
</table>

Type
: The Type characteristic corresponds to the [type](https://www.hl7.org/fhir/location-definitions.html#Location.type)
field of the FHIR [Location Resource](https://hl7.org/fhir/R4/location.html).

The vocabulary for the type characteristic is informed by the work of AHRQ,
ANSI/HITSP, HL7, and OASIS in advancement of the OASIS HAVE standards, and the
AHRQ [HAvBED](https://archive.ahrq.gov/prep/havbed2/) specification.

<table class='grid'>
<thead>
<tr><th>Code(s)</th><th>HAVE Category</th><th>HAVE/HAvBed Description</th></tr>
</thead>
<tbody>
<tr><td>ICU</td><td>AdultICU</td><td>Adult ICU bed type<br/>These can support critically ill or injured patients, including ventilator support
This category includes all major subtypes of ICU beds, including neurological, cardiac, trauma, or medical, with the exception that this category does not include burn ICU beds</td></tr>
<tr><td>PEDICU</td><td>PediatricICU</td><td>Pediatric ICU beds.<br/>This is similar to adult ICU beds, but for patients 17-years-old and younger.</td></tr>
<tr><td>PEDNICU</td><td>NeonatalICU</td><td>Neonatal ICU beds</td></tr>
<tr><td>ER</td><td>ED</td><td>Emergency Department beds used for acute care</td></tr>
<tr><td>Not Supported</td><td>NurseryBeds</td><td>Capacity Status for Neonatal or newborn care beds including all bed types other than Neonatal ICU</td></tr>
<tr><td>HU</td><td>MedicalSurgical</td><td>Medical-surgical beds<br/>
These are also thought of as ward beds.
These beds may or may not include cardiac telemetry capability</td></tr>
<tr><td>RHU</td><td>RehabLongTermCare</td><td>Rehabilitation/Long term care beds<br/>
Beds designated as long term care rehabilitation. These do not include floor beds</td></tr>
<tr><td>Not Supported</td><td>Burn</td><td>Burn beds<br/>
These are thought of as burn ICU beds, either approved by the American Burn Association or self-designated.
These beds are NOT to be included in other ICU bed counts.</td></tr>
<tr><td>PEDU</td><td>Pediatrics</td><td>Pediatrics beds. <br/>These are ward medical/surgical beds for patients 17-years-old and younger
<tr><td>PHU<sup><a href='#fn1'>1</a></sup></td><td>Psychiatric</td><td>Ward beds on a closed/locked psychiatric unit or ward beds where a patient will be staffed by an attendant.</td></tr>
<tr><td rowspan='2'>See <a href="#feature">Feature</a></td><td>NegativeFlowIsolation</td><td>Negative airflow isolation beds.<br/>These provide respiratory isolation.
NOTE: This value may represent available beds included in the counts of other types</td></tr>
<tr><td>OtherIsolation</td><td>Isolation beds.<br/>These provide isolation where airflow is not a concern.
NOTE: This value may represent available beds included in the counts of other types</td></tr>
<tr><td>OR<sup><a href='#fn2'>2</a></sup></td>
    <td>OperatingRooms</td>
    <td>Operating rooms which are equipped, staffed and could be made available for patient care in a short period of time</td>
</tr>
</tbody>
</table>



<span id="feature"> </span>
Feature
: The feature characteristic describes other important capabilities of the Bed (or device).

At present, this characteristic is used to identify beds that support negative airflow
or other isolation.  Isolation capabilities are "features" that can be added to a "Bed"
by placing it in a location that supports isolation.

<table class='grid'>
<thead>
<tr><th>Code<sup><a href='#fn2'>2</a></sup></th><th>HAVE Concept</th><th>Description</th></tr>
</thead>
<tbody>
<tr><td>NEGISO</td><td>NegativeFlowIsolation</td><td>Negative airflow isolation beds.<br/>These provide respiratory isolation.</td></tr>
<tr><td>OTHISO</td><td>OtherIsolation</td><td>Isolation beds.<br/>These provide isolation where airflow is not a concern.</td></tr>
<tr><td>NONISO</td><td>Not defined</td><td>Non-Isolation beds.<br/>These beds do not provide isolation.</td></tr>
</tbody>
</table>

**Footnotes**

<span id='fn1'>Note 1</span>
: May be combined with PEDU to identify pediatric psychiatric beds.

<span id='fn2'>Note 2</span>
: This code is defined in the value set defined by this implementation guide.
