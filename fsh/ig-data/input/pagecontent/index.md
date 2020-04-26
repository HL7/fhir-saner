
The Situational Awareness for Novel Epidemic Response Implementation Guide enables transmission
of high level situational awareness information from inpatient facilities to centralized data repositories
to support the treatment of novel influenza-like illness.

![The SANER Project Logo](SANERLogo.png)
<div style='float: clear'/>
**Fighting COVID-19 with FHIR®**




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

2. Volume II: Transactions
   1. [Query Measure [PULL-TX]](transaction-1.html)
   2. [Produce Measure [PUSH-TX]](transaction-2.html)
   3. [Communicate Results [REPORT-TX]](transaction-3.html)

3. Volume III: Content Profiles
   1. [Public Health Measure](StructureDefinition-PublicHealthMeasure.html)
   2. [Measure Group Attributes](StructureDefinition-MeasureGroupAttributes.html)
   3. [Measure Criteria](StructureDefinition-MeasureCriteria.html)
   4. [Measure Population Alternate Criteria(StructureDefinition-MeasurePopulationAlternateCriteria.html)
   5. [Measure Description](StructureDefinition-MeasureDescription.html)
   6. [Audit Event Write](StructureDefinition-audit-event-write.html)
   7. [Audit Event Read](StructureDefinition-audit-event-read.html)

4. Volume IV: Terminology
   1. Code Systems
      1. [Bed Type](CodeSystem-BedType.json)
      1. [Device Field Names](CodeSystem-DeviceFieldNames.json)
      1. [Group System](CodeSystem-GroupSystem.json)
      1. [Location Field Names](CodeSystem-LocationFieldNames.json)
      1. [Measure Rate Aggregation](CodeSystem-MeasureRateAggregation.json)
      1. [Population System](CodeSystem-PopulationSystem.json)
   2. Value Sets
      1. [Bed Location Operational Status](ValueSet-BedLocationOperationalStatus.json)
      1. [Bed Location Types](ValueSet-BedLocationTypes.json)
      1. [Bed Property](ValueSet-BedProperty.json)
      1. [Bed Type](ValueSet-BedType.json)
      1. [Confirmed COVID19 Diagnosis](ValueSet-ConfirmedCOVID19Diagnosis.json)
      1. [Confirmed COVID19 Diagnosis Values](ValueSet-ConfirmedCOVID19DiagnosisValues.json)
      1. [COVID19 Diagnostic Test](ValueSet-COVID19DiagnosticTest.json)
      1. [ED or Overflow Locations](ValueSet-EDorOverflowLocations.json)
      1. [Fields](ValueSet-Fields.json)
      1. [Groups](ValueSet-Groups.json)
      1. [ICU Locations](ValueSet-ICULocations.json)
      1. [Inpatient Locations](ValueSet-InpatientLocations.json)
      1. [Location Fields](ValueSet-LocationFields.json)
      1. [Measure Rate Aggregation Values](ValueSet-MeasureRateAggregationValues.json)
      1. [Measure Status](ValueSet-MeasureStatus.json)
      1. [Occupied Bed](ValueSet-OccupiedBed.json)
      1. [Patient Died](ValueSet-PatientDied.json)
      1. [Populations](ValueSet-Populations.json)
      1. [Suspected Or Diagnosed COVID19](ValueSet-SuspectedOrDiagnosedCOVID19.json)
      1. [Ventilator Devices](ValueSet-VentilatorDevices.json)
      1. [Ventilator Devices With Tracheostomy](ValueSet-VentilatorDevicesWithTracheostomy.json)


5. Volume V: Examples
   1. [Measure: CDC Patient Impact and Hospital Capacity](Measure-CDCPatientImpactAndHospitalCapacity.json.html)
   2. [Measure: FEMA Daily Hospital COVID19 Reporting](Measure-FEMADailyHospitalCOVID19Reporting.json.html)
   3. [Location: New Jersey](Location-states-NJ.json.html)
   4. [Organization: NJ Department of Health](Organization-NJ-DPH.json.html)

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

