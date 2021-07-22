### Resource Profiles<a name="resources"></a>
* [Public Health Measure](StructureDefinition-PublicHealthMeasure.html) profiles the
  Measure resource to support Public Health and Emergency Response surveillance requirements.  This
  provides the definition of the measurements that will be reported.

* [Public Health Measure Report](StructureDefinition-PublicHealthMeasureReport.html)
  profiles the MeasureReport resource to align it with resources adopting the Public
  Health Measure profile.  These are instances of reports of specific measurements.

* [Public Health Measure Library](StructureDefinition-PublicHealthMeasureLibrary.html) profiles the
  Library resource to ensure that all essential terminology and logic components are available
  for implementation of a measure.

* [Public Health Measure Report Metadata Attachments](StructureDefinition-PublicHealthMeasureMetadataAttachment.html)
  constrains attachments used in libraries described above to ensure that content is available
  for implementers of a given measure.

* [Capability Statement With Slices](StructureDefinition-CapabilityStatementWithSlices.html) assists in the
  automated creation of CapabilityStatement resources for this guide.  Capability statements reported
  by implementers of this guide need not conform to this profile (but may do so if they choose).

#### Audit Records <a name="audit"></a>
This guide includes profiles that support auditing of activity on the MeasureReport and Measure resources
described by this guide.

* [Audit Event Base](StructureDefinition-AuditEventBase.html) is the base profile for all audit event
  resources use by this guide. It defines the core requirements for audit events.


### Supporting DataType Profiles <a name="datatypes"></a>
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



### Supporting Extensions<a name="extensions"></a>
* [Measure Expectation](StructureDefinition-measure-expectation.html) defines an extension
  that allows parts of a defined measure to be marked as optional or required.

* [Reporting Period](StructureDefinition-ReportingPeriod.html) defines an extension enabling
  a definition for a measure to provide the suggested reporting period.

* [Measure Alternate Criteria](StructureDefinition-MeasureAlternateCriteria.html)
  defines an extension that allows alternate criteria for evaluation to be defined for
  a Measure.  In this way, multiple implementations for counting can be supported based
  on the capabilities of the system available.

* [Measure Group Attributes](StructureDefinition-MeasureGroupAttributes.html) defines
  an extension that enables interpretation the structure of a group as a collection
  of populations that evaluate to a single measured item.
