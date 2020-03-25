
The Situational Awareness for Novel Epidemic Response Implementation Guide enables transmission
of high level situational awareness information from inpatient facilities to centralized data repositories
to support the treatment of novel influenza-like illness.




### About This Guide
This is a draft implementation guide to promote discussion with leaders in the Health
IT industry, and very much a work in progress.  All content in this guide is subject
to discussion and change.

The goal of publishing this guide is to encourage the creation of a community interested
in extremely rapid development of interfaces that can support communication Bed and other
resources to Public Health in this time of crisis.  [Audacious Inquiry](https://ainq.com) is publishing this
material as follows:

This work is licensed under a [Creative Commons Attribution 4.0 International License](https://creativecommons.org/licenses/by/4.0/) ![Creative Commons License](https://i.creativecommons.org/l/by/4.0/80x15.png)

This implementation guide provides the FHIR Implementation materials associated with
the SANER project.

### Organization of This Guide
This guide is organized into four main sections:

1. Volume I: [Overview](overview.html)
   1. [Actors and Transactions](actors_and_transactions.html)
   2. [Using Group Resources](using_group_resources.html)
   3. [Security Considerations](security_considerations.html)

2. Volume II: Transaction Detail
   1. [Query Availability [PULL-TX]](transaction-1.html)
   2. [Update Availability [PUSH-TX]](transaction-2.html)
   3. [Report Results [REPORT-TX]](transaction-3.html)

3. Volume III: Profiles
   1. [Bed Availability Group](StructureDefinition-saner-bed-group.html)
   2. [Device Availability Group](StructureDefinition-saner-device-group.html)
   3. [Single Bed Availability Status](StructureDefinition-saner-bed-location.html)
   4. [Single Device Availability Status](StructureDefinition-saner-supporting-device.html)
   5. [Resource Location](StructureDefinition-saner-resource-location.html)

4. Volume IV: Terminology
   1. [SanerBedType Coding System](CodeSystem-SanerBedType.html)
   2. [BedLocationOperationalStatus Value Set](ValueSet-BedLocationOperationalStatus.html)
   3. [BedProperty Value Set](ValueSet-BedProperty.html)
   4. [BedType Value Set](ValueSet-BedType.html)
   5. [HAvBED2 to FHIR Concept Map](ConceptMap-HAvBED2toFHIR.html)


Click on any of the links above, head on over the [table of contents](toc.html), or
if you are looking for a specific artifact, check out the [index](artifacts.html).

You can also download:

* [this entire guide](full-ig.zip),
* the definition resources in [json](definitions.json.zip), [xml](definitions.xml.zip), [ttl](definitions.ttl.zip), or [csv](csvs.zip) format, or
* the example resources in [json](examples.json.zip), [xml](examples.xml.zip) or [ttl](examples.ttl.zip) format.

The source code for this Implementation Guide can be found on
[https://github.com/AudaciousInquiry/saner-ig](https://github.com/AudaciousInquiry/saner-ig).

### About Audacious Inquiry ###
[Audacious Inquiry](https://ainq.com) (Ai) is an industry-shaping health information technology and
policy company that provides bold solutions for connected healthcare. Nationally recognized for its
work to facilitate health data interoperability, Ai is a trusted partner to CMS, ONC, state Hospital
Associations and Medicaid agencies across the country. The company delivers a cloud-based software as
a service platform that is the catalyst for secure and smart health information exchange among
physicians, hospitals, health plans, ACOs, MCOs, and public health agencies across 12 US states.
Ai is raising the bar for how health data is shared, managed, and protected.

