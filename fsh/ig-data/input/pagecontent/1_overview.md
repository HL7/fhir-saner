
The Situational Awareness for Novel Epidemic Response Implementation Guide enables transmission
of high level situational awareness information from inpatient facilities to centralized data repositories
to support the treatment of novel influenza-like illness.



### About This Guide
This is a draft implementation guide to promote discussion with leaders in the Health
IT industry, and very much a work in progress.  All content in this guide is subject
to discussion and change.

The goal of publishing this guide is to encourage the creation of a community interested
in extremely rapid development of an interface that can support Public Health in this time of
crisis.

### Situational Awareness for Novel Epidemic Response
Situational Awareness has been the focus of attention in health IT circles well before the detection of potentially pandemic flu strains during the early formation of the Office of the National Coordinator in 2005.

2006
: Bird Flu (H5N1)

2009
: Swine Flu (H1N1)

2012
: Middle East Respiratory Syndrome (MERS)

2013
: Another form of Bird Flu (H7N9)

2019
: COVID-19 (SARS-Cov-2)

Situational Data Needs of Public Health
Key situational data needed by public health has remained relatively consistent and well established over this time, and is to support awareness of:

1.  Local, Regional and National case rates and trends
2.  Bed availability for treatment
3.  Other resources availability for treatment
  * Staff
  * Medications
  * Immunizations
  * Medical Equipment (e.g., Respirators, N95 Masks)
  * Supplies (e.g., Cleaning Supplies, Facemasks)

#### Focusing the Solution Space
In evaluating solutions for the above challenges, we have established the following principles:
1.  The solution needs to be focused on providing high ROI.
2.  The solution should not duplicate existing efforts.
3.  The solution needs to work with existing Health IT products currently deployed.
4.  The uplift needed to enable an existing product to support public health information requirements needs to be low enough to effectively deliver quickly.

#### Quick Assessment
1.  Existing work by [Johns Hopkins University](https://coronavirus.jhu.edu/map.html) in aggregating case data sets and visualizing them addresses national and even regional (at the county level) trends.
2.  Bed availability is an area where there is a great deal of existing work on standards
[^1]<sup>,</sup>[^2]<sup>,</sup>[^3]<sup>,</sup>[^4], and use case requirements[^5], but not much
prior success, although there are existing Health IT solutions that have this data (not just in the EHR).
If the solution can be interfaced rather than integrated, an implementation can be piloted much faster.
3.  Other resource utilization (e.g., Ventilators, Infusion Pumps, etc.)is available in central monitoring
or inventory control solutions, but are not necessarily readily available in the EHR.  This would be a natural
evolution from Bed Availability.

[^1]: [HITSP C47: Resource Utilization Message](http://www.hitsp.org/ConstructSet_Details.aspx?&PrefixAlpha=4&PrefixNumeric=47)

[^2]: [HAvBED2: Hospital Avaialable Beds for Emergencies and Disasters](https://archive.ahrq.gov/prep/havbed2/)

[^3]: [Emergency Data Exchange Language (EDXL) Hospital AVailability Exchange (HAVE) v1.0 incorporating Approved Errata](https://www.oasis-open.org/standards#edxlhave-v1.0)

[^4]: [HL7/OASIS Cross Paradigm Implementation Guide: Emergency Data Exchange Language (EDXL) Hospital AVailability Exchange (HAVE) Version 2.0 (EDXL-HAVE), Release 1](https://www.hl7.org/implement/standards/product_brief.cfm?product_id=489)

[^5]: [Harmonized Use Case for Biosurveillance (Visit, Utilization and Lab Result Data)](AHIC_UseCase_2006_-_Biosurveillance_Utilization.pdf)

This rapid assessment leads this guide to a focus on bed availability.

### Bed Availability
The key data for bed availability is found in Bed Management solutions integrated with
current inpatient EHR Systems, and in departmental ICU and Central Monitoring systems.
Such solutions support management of bed assignment for admissions and provide direction to
housekeeping staff regarding bed-turnover activities (e.g., cleaning) or departmental systems
which provide ICU and Nursing central monitoring capabilities.  They are often separate components
or modules , Standalone solutions, or third party solutions which integrate with an
EHR System (e.g. Forward Advantage with MEDITECH).

#### Prior Solutions and Existing Standards
Prior standards developed to address these issues have been profiled through past efforts.  These are briefly
outlined below.

##### HAvBED and OASIS EDXL/HAVE Standards
Most notably, the OASIS Emergency Data Exchange Language (EDXL), and the OASIS Hospital Availability Exchange
were profiled by ANSI/HITSP in response to the AHIC Emergency Responder Use Case.  This work was advanced by
AHRQ to develop what is now known as the HAvBED solution, which became a federally-mandated program for states
to collect and report bed availability data.  Health and Human Services suspended the HAvBED program in 2016.
Some of the challenges with HAvBED included:

* Manually entered data in many automated bed availability systems is labor-intensive, untimely, resulting in data quality issues.
* Similar issues with to the manual data entry option.
* Technology standards have evolved, and HAvBED requirements did not keep pace.
* Facilities and states were often reluctant to share bed availability data.

##### HL7 Version 2
Other standards which contain information about bed availability include HL7 Version 2
(e.g., the [ADT_A20 Bed Status Update](http://www.hl7.eu/refactored/msgADT_A20.html) message),
and general observations profiled by ANSI/HITSP to support organizational reporting of bed availability using HL7 Version 2 OBX segments.

##### HL7 Version 3
No HL7 Version 3 standards were developed to support Bed management or availability.

##### HL7 FHIR
In HL7 FHIR the [Location](https://hl7.org/fhir/R4/location.html) resource can describe information about
any bed within a facility.  The [Group](https://hl7.org/fhir/R4/group.html) resource
can report on specific quantities of groups of resources available that match a specific
set of characteristics.

###### Location Resource
While the Location resource can report on beds, it can also be used to describe buildings, wards,
geographic area, or any other sort of place, including "mobile" places such as a mobile clinic or
ambulance.  Given its broad application, it needs to be profiled to support use for bed availability.

While many existing Certified EHR Systems support the FHIR standard and the Location resource today, there's
little use of the Location resource to report data about beds.  It is more commonly used to report
Location data associated with the
[Common Clinical Data Set](https://www.healthit.gov/sites/default/files/commonclinicaldataset_ml_11-4-15.pdf) (now known as the US Core Data for
Interoperability or [USCDI](https://www.healthit.gov/isa/united-states-core-data-interoperability-uscdi)) required by the ONC 2015 Certification regulations.  These uses of
Location are found in the Encounter, Procedure and Practitioner resources.  Those uses of Location
describe the facility where an encounter occurs, the location where a procedure is performed, or
the location of a practitioner.

###### Group Resource
The Group resource can also be used to support aggregate reporting on beds, as it allows reporting
of quantities of a type of item without requiring a FHIR resource to reference the actual item, just
its characteristics.  This resource can also be used to report on other types of resources, such as
ventilators, respirators, and N95 masks.

NOTE: While Group doesn't specifically support groups of Location resources, it can be used to
report on any group of things that can be defined by characteristics, it simply cannot
enumerate those resources.  That is not essential for the use cases in this implementation
guide.

The Group resource is even more lightly deployed in existing EHR products.

#### Terminology
Terminology plays an important role in this implementation guide.
It can be used to describe:
* The kind of location where the bed is located (e.g., ED, med/surgery, ICU, Pediatric,
NICU, Isolation)
* The status of a bed (e.g., available, in use, isolated, contaminated, housekeeping)
* Other types of resources (e.g., ventilators, respirators, masks, et cetera)

##### Location Type

##### Bed Status
HL7 Version 2 Table 0116 Bed Status Provides Vocabulary that can describe the status
of a bed.





### Use Cases

The sections below describe the use cases supported by the
Audaciuo
	     s Inquiry SANER Implementation Guide.


#### Use Case 1: Collecting Bed Availability

This use case addresses the exchange of data from Facilities to a Centralized
reporting system for Public Health


This use case is supported by the following

* Actors

  - [Availability Source](actors_and_transactions.html#availability-source)

  - [Availability Collector](actors_and_transactions.html#availability-collector)

* Transactions

  - [Query Availability](transaction-1.html)

  - [Update Availability](transaction-2.html)

* Content

  - [Bed Availability Group](StructureDefinition-saner-bed-group.html)

  - [Single Bed Location](StructureDefinition-saner-bed-location.html)

##### Use Case 1: Collecting Bed Availability Process Flow

Overview TBD


![Figure 2.3.1.1-1: Use Case 1: Collecting Bed Availability Process Flow](usecase1-processflow.svg "Figure 2.3.1.1-1: Use Case 1: Collecting Bed Availability Process Flow")

<div style="clear: left"/>

**Figure 2.3.1.1-1: Use Case 1: Collecting Bed Availability Process Flow**


1. Availability Collector Initiates Search

   The Availability Collector identifies features associated with a group of
bed resources that it wishes to collect data about.  For example, the Availability Collector can
request information about ICU, med/surg, or ED beds available or in use.


   TBD


1. Availability Source Reports Aggregate Data

   The Availability Source reports aggregate data about a group of beds based
	                on specified bed characteristics


   TBD


#### Use Case 2: Reporting on Bed Availability

TBD


This use case is supported by the following

* Actors

  - [Availability Collector](actors_and_transactions.html#availability-collector)

  - [Availability Reporter](actors_and_transactions.html#availability-reporter)

* Transactions

  - [Report Results](transaction-1.html)

* Content

  - [Bed Availability Group](StructureDefinition-saner-bed-group.html)

  - [Single Bed Availability Status](StructureDefinition-saner-bed-location.html)

##### Use Case 2: Reporting on Bed Availability Process Flow

TBD


![Figure 2.3.1.2-1: Use Case 2: Reporting on Bed Availability Process Flow](usecase2-processflow.svg "Figure 2.3.1.2-1: Use Case 2: Reporting on Bed Availability Process Flow")

<div style="clear: left"/>

**Figure 2.3.1.2-1: Use Case 2: Reporting on Bed Availability Process Flow**


1. User Initiates Search

   The Public Health User navigates to a web page where collected data is reported.


   TBD


1. Availability Reporter gathers data from Availability Collectors

   The Availability Reporter gathers and aggregates data from one or more Availability Collectors.


   The means by which gathering and aggregation is performed is not further specified
by this implementation guide. However, the Availability Reporter can obtain data from an Availability Collector by using other transactions
within this profile if desired.


1. Display Results

   The Availability Reporter displays an overview of aggregated regional results to the
user, and additional links which enable navigation to finer grained or alternative displays.


   Data can be displayed as aggregated or fine-grained status information based
on the current focus of the public health user.  It may be shown as a map, a table, or a graph.


1. User refines Focus or Form of Display

   The Public Health User selects a new form of display (e.g., Map, table or graph) or refines their
focus (e.g., wider or smaller region).


   TBD


1. Display Refined Results

   The Availability Collector modifies the users focus and reporting format


   TBD



**Footnotes**
