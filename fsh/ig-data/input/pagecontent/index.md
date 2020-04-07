![The SANER Project Logo](SANERLogo.png)

**Fighting COVID-19 with FHIR®**

The Situational Awareness for Novel Epidemic Response Implementation Guide enables transmission
of high level situational awareness information from inpatient facilities to centralized data repositories
to support the treatment of novel influenza-like illness.

### About This Guide
This is a draft implementation guide to promote discussion with leaders in the Health
IT industry, and very much a work in progress.  All content in this guide is subject
to discussion and change.

The goal of publishing this guide is to encourage the creation of a community interested
in extremely rapid development of interfaces that can support communication Bed and other
resourcees to Public Health in this time of crisis.

This implementation guide provides the FHIR Implementation materials associated with
the SANER project.

### Organization of This Guide
This guide is organized into four main sections:

1. Volume I: [Overview](overview.html) - Provides an overview of the challenges this effort is trying to address.
   1. [Technology Environment](technology_environment.html) - Describes the technology environment for uninitiated.
   2. [Architecture](architecture.html) - Illustrates the Microservice Architecture
   3. [Security Considerations](security_considerations.html) - Documents security concerns and mitigations
   4. [Use Cases](use_cases.html) - Illustrates key use cases
   5. [Actors and Transactions](actors_and_transactions.html) - Provides an overview of technical components
   6. [Measures used for Reporting](measures.html) - Defines measures used by CDC and FEMA as FHIR Measure resources
   7. [Using Group Resources (deprecated)](using_group_resources.html) - Explains the use of group in this guide

2. Volume II: Transactions
   1. [Query Measure [PULL-TX]](transaction-1.html)
   2. [Produce Measure [PUSH-TX]](transaction-2.html)
   3. [Communicate Results [REPORT-TX]](transaction-3.html)

3. Volume III: Content Profiles
   1. [Bed Measure Report](StructureDefinition-saner-bed-measure-report.html)
   2. [Device Measure Report](StructureDefinition-saner-device-measure-report.html)
   3. [Bed Group](StructureDefinition-saner-bed-group.html)
   4. [Device Group](StructureDefinition-saner-device-group.html)
   5. [bed-location](StructureDefinition-saner-bed-location.html)
   6. [Supporting Device](StructureDefinition-saner-supporting-device.html)
   7. [Resource Location](StructureDefinition-saner-resource-location.html)
   8. [Audit Event Write](StructureDefinition-saner-audit-event-write.html)
   9. [Audit Event Read](StructureDefinition-saner-audit-event-read.html)

4. Volume IV: Terminology
   1. [SanerBedType Coding System](CodeSystem-SanerBedType.html)
   4. [BedLocationOperationalStatus Value Set](ValueSet-BedLocationOperationalStatus.html)
   5. [BedProperty Value Set](ValueSet-BedProperty.html)
   6. [BedType Value Set](ValueSet-BedType.html)

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

