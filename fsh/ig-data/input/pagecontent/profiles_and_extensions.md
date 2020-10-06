### Resource Profiles
* [Public Health Measure](StructureDefinition-PublicHealthMeasure.html) profiles the
  Measure resource to support Public Health and Emergency Response surveillance requirements.  This
  provides the definition of the measurements that will be reported.

* [Public Health Measure Report](StructureDefinition-PublicHealthMeasureReport.html)
  profiles the MeasureReport resource to align it with resources adopting the Public
  Health Measure profile.  These are instances of reports of specific measurements.

* [Public Health Measure Library](StructureDefinition-PublicHealthMeasureReport.html) profiles the
  Library resource to ensure that all essential terminology and logic components are available
  for implementation of a measure.

* [Public Health Measure Report Metadata Attachments](StructureDefinition-PublicHealthMeasureMetadataAttachment.html)
  constrains attachments used in libraries described above to ensure that content is available
  for implementers of a given measure.

* [Capability Statement With Slices](StructureDefinition-CapabilityStatementWithSlices.html) assists in the
  automated creation of CapabilityStatement resources for this guide.  Capability statements reported
  by implementors of this guide need not conform to this profile (but may do so if they choose).

#### Audit Records
This guide includes profiles that support auditing of activity on the MeasureReport and Measure resources
described by this guide.

* [Audit Event Base](StructureDefinition-AuditEventBase.html) is the base profile for all audit event
  resources use by this guide. It defines the core requirements for audit events.

* [Audit Event Search](StructureDefinition-AuditEventSearch.html) is the profile for AuditEvent resources reporting on search operations.

* [Audit Event Read](StructureDefinition-AuditEventRead.html) is the profile for AuditEvent resources reporting on read operations.

* [Audit Event Create](StructureDefinition-AuditEventCreate.html) is the profile for AuditEvent resources reporting on create operations.

* [Audit Event Update](StructureDefinition-AuditEventUpdate.html) is the profile for AuditEvent resources reporting on update operations.

* [Audit Event Delete](StructureDefinition-AuditEventDelete.html) is the profile for AuditEvent resources reporting on delete operations.


### Supporting DataType Profiles
* [Measure Criteria](StructureDefinition-MeasureCriteria.html) profiles the
  [Expression](https://www.hl7.org/fhir/R4/metadatatypes.html#Expression) data type
  to enforce requirements essential for the creation of measures supporting automatic
  evaluation and reporting.

* [Measured Item Description](StructureDefinition-MeasuredItemDescription.html) describes the slices
  using in the FHIR CodeableConcept to describe what is to be counted:

  1. As a FHIR Resource.
  2. As a more detailed clinical concept in standard vocabulary to describe the specific resources included.

* [Measure Reporting Timing](StructureDefinition-MeasureReportingTiming.html) profiles the Timing datatype
  to uniformly described recommended measure reporting times.


* [Precise Date Time](StructureDefinition-PreciseDateTime.html) profiles the DateTime data type to
  fix the requirements for at least second precision, including a time zone, for reporting dates of
  reporting and the reporting period for a MeasureReport resource.



### Supporting Extensions
* [Measure Expectation](StructureDefinition-measure-expectation.html) defines an extension
  that allows parts of a defined measure to be marked as optional or required.

* [Reporting Period](StructureDefinition-ReportingPeriod.html) defines an extension enabling
  a definition for a measure to provide the suggested reporting period.

* [Measure Population Alternate Criteria](StructureDefinition-MeasurePopulationAlternateCriteria.html)
  defines an extension that allows alternate criteria for evaluation to be defined for
  a Measure.  In this way, multiple implementations for counting can be supported based
  on the capabilities of the system available.

* [Measure Group Attributes](StructureDefinition-MeasureGroupAttributes.html) defines
  an extension that enables interpretation the structure of a group as a collection
  of populations that evaluate to a single measured item.

### Predefined Measures
This implementation guide includes predefined measures describing the measurements
that were previously required to be reported to CDC/NHSN and FEMA.

* [Computable CDC/NHSN Patient Impact and Hospital Capacity Reporting Measures](Measure-ComputableCDCPatientImpactAndHospitalCapacity.html)
  defines a computable measure that is aligned with the reporting previously required by the
  [National Healthcare Safety Network (CDC/NHSN)](https://www.cdc.gov/nhsn/index.html) using the COVID-19 Patient Impact and
  Hospital Capacity module, and

* [CDC/NHSN Patient Impact and Hospital Capacity Reporting Measures](Measure-CDCPatientImpactAndHospitalCapacity.html)
  defines a measure that is aligned with the reporting previously required by the
  [National Healthcare Safety Network (CDC/NHSN)](https://www.cdc.gov/nhsn/index.html) using the COVID-19 Patient Impact and
  Hospital Capacity module, and

* [FEMA Daily Hospital COVID-19 Reporting Measures](Measure-FEMADailyHospitalCOVID19Reporting.html)
  defines a measure that is aligned with the reporting required by the [Federal Emergency Management Agency (FEMA)](https://www.aha.org/advisory/2020-03-30-coronavirus-update-administration-requests-hospitals-report-daily-covid-19)
  for reporting COVID-19 test results from Hospital in-house laboratories.

These measures are only provided as examples to illustrate measure development and reporting.
Official reporting requirements are established by HHS and other US Federal agencies and not by this guide.