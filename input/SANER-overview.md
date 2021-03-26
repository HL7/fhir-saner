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
2.  Bed availability is an area where there is a great deal of existing work [^1]<sup>,</sup>[^2]<sup>,</sup>[^3]<sup>,</sup>[^4], but not much prior success, although there are existing Health IT solutions that have this data (not just in the EHR).  If the solution can be interfaced rather than integrated, an
implementation can be piloted much faster.
3.  Other resource utilization is available in inventory control or central monitoring
solutions, but are not necessarily readily available in the EHR.  This would be a natural
evolution from Bed Availability.

[^1]: [HITSP C47: Resource Utilization Message](http://www.hitsp.org/ConstructSet_Details.aspx?&PrefixAlpha=4&PrefixNumeric=47)

[^2]: [HAvBED2: Hospital Avaialable Beds for Emergencies and Disasters](https://archive.ahrq.gov/prep/havbed2/)

[^3]: [Emergency Data Exchange Language (EDXL) Hospital AVailability Exchange (HAVE) v1.0 incorporating Approved Errata](https://www.oasis-open.org/standards#edxlhave-v1.0)

[^4]: [HL7/OASIS Cross Paradigm Implementation Guide: Emergency Data Exchange Language (EDXL) Hospital AVailability Exchange (HAVE) Version 2.0 (EDXL-HAVE), Release 1](https://www.hl7.org/implement/standards/product_brief.cfm?product_id=489)

This rapid assessment leads this guide to a focus on bed and ventilator
availability.

### Bed Availability
The key data for bed availability is found in Bed Management solutions integrated with
current inpatient EHR Systems, and in departmental ICU and Central Monitoring systems.
Such solutions support management of bed assignment for admissions and provide direction to
housekeeping staff regarding bed-turnover activities (e.g., cleaning) or departmental systems
which provide ICU and Nursing central monitoring capabilities.  They are often separate components
or modules, Standalone solutions, or third party solutions which integrate with an
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
The HL7 SOA Workgroup Collaborated with the OASIS EDXL Committee to develop a [Cross
Paradigm](https://www.hl7.org/implement/standards/product_brief.cfm?product_id=489)
specification supporting the communication of bed availability information.


##### HL7 FHIR
In HL7 FHIR the [Location](https://hl7.org/fhir/R4/location.html) resource can describe information about
any bed within a facility.  The [Group](https://hl7.org/fhir/R4/group.html) resource
can report on specific quantities of groups of resources available that match a specific
set of characteristics.  The [MeasureReport](https://hl7.org/fhir/R4/measurereport.html)
resource can report on measures using counts and other metrics over a variety of resources.

###### Device Resource
The Device Resource can report on medical devices, including ventilators, respirators,
personal protective equipment such as masks, and viral test kits.  Device is not widely
used by systems reporting on device quantities or status.

###### Location Resource
While the Location resource can report on beds, it can also be used to describe buildings, wards,
geographic area, or any other sort of place, including "mobile" places such as a mobile clinic or
ambulance.  Given its broad application, would need to be profiled to support use for bed availability.

While many existing Certified EHR Systems support the FHIR standard and the Location resource today, there's
little use of the Location resource to report data about beds.  It is more commonly used to report
Location data associated with the
[Common Clinical Data Set](https://www.healthit.gov/sites/default/files/commonclinicaldataset_ml_11-4-15.pdf) (now known as the US Core Data for
Interoperability or [USCDI](https://www.healthit.gov/isa/united-states-core-data-interoperability-uscdi)) required by the ONC 2015 Certification
regulations.  These uses of Location are found in the Encounter, Procedure and Practitioner resources to
describe the facility where an encounter occurs, the location where a procedure is performed, or
the location of a practitioner.

###### Group Resource
While the Group resource can be used to support aggregate reporting on beds, as it allows reporting
of quantities of an item without referencing an individual item, it has not been deployed in this way by
any knwon system.  This resource can also be used to report on other types of resources, such as
ventilators, respirators, and N95 masks.

NOTE: While Group doesn't specifically support groups of Location resources, it can be used to
report on any group of things that can be defined by characteristics, it simply cannot
enumerate those resources.  That is not essential for the use cases in this implementation
guide.

The Group resource is more lightly deployed in existing EHR products. It is not
a requirement of the 2015 Certification program.

###### Measure Resource
The MeasureReport resource can be used to support reporting of a variety of measures,
including simple counts, with measures over different strata.  It is not readily searchable at
the stratum level.  MeasureReport is beginning to gain traction because of efforts using
it in the [DaVinci Project](https://www.hl7.org/about/davinci/).

###### Questionnaire Response
The QuestionnaireResponse resource has been profiled for use in reporting to CDC's National
Healthcare Safety Network (NHSN) in two implementation guides to report the occurrence
of Healthcare Acquired Infections. These guides have seen limited implementation and
testing.

The table below shows the [FHIR Maturity Model](https://www.hl7.org/fhir/R4/versions.html#maturity) Level for each of the resources described
above.

<table class='grid'><thead><tr><th>Resource</th><th>Maturity Level</th></tr></thead>
<tbody>
<tr><td><a href="http://hl7.org/fhir/device.html">Device</a></td><td>2</td></tr>
<tr><td><a href="http://hl7.org/fhir/group.html">Group</a></td><td>1</td></tr>
<tr><td><a href="http://hl7.org/fhir/location.html">Location</a></td><td>3</td></tr>
<tr><td><a href="http://hl7.org/fhir/measurereport.html">MeasureReport</a></td><td>2</td></tr>
<tr><td><a href="http://hl7.org/fhir/questionnaireresponse.html">QuestionnaireResponse</a></td><td>3</td></tr>
</tbody>
</table>

#### Terminology
Terminology plays an important role in this implementation guide.
It can be used to describe:
* The kind of location where the bed is located (e.g., ED, med/surgery, ICU, Pediatric,
NICU, Isolation)
* The status of a bed (e.g., available, in use, isolated, contaminated, housekeeping)
* Other types of resources (e.g., ventilators, respirators, masks, et cetera)

##### Location Type
The HL7 Version 3 [Service Delivery Location Role Type](https://www.hl7.org/fhir/v3/ServiceDeliveryLocationRoleType/vs.html)
Value Set has been adopted as the [Preferred](https://www.hl7.org/fhir/terminologies.html#preferred) classification system for `Location.type` in the Location resource in FHIR
R4.

##### Bed Status
HL7 Version 2 Table 0116 [Bed Status Provides Vocabulary](https://www.hl7.org/fhir/v2/0116/index.html) that can describe the status
of a bed, and has been adopted as the [Extensible](https://www.hl7.org/fhir/terminologies.html#extensible) vocabulary
for `Location.operationalStatus` in the Location resource in FHIR R4.

##### Codes used for Stratifying Populations
Other codes are essential for stratifying populations to determine the impact of disease,
by age, gender or race and ethnicity, either to determine risk factors, or identify
disparities in treatment.  Existing code sets are available to support these sorts of
stratification efforts.

##### New Codes
Until COVID-19 and SARS-Cov-2 were discovered, codes to describe the disease, diagnostic
tests, antibody tests, or test results did not exist because these concepts did not
yet exist.  Since then organizations like LOINC, SNOMED and CMS responsible for managing code
systems used by EHR and other Health IT systems have produced codes where needed, and developed value
sets and guidelines for coding conditions and situations related to COVID-19 including
diagnosis, evaluation, treatment, procedures, and medications associated with the disease.

These new codes and guidelines for use of existing codes support:

* Laboratory Testing and Results
* Diagnosis of COVID-19
* Suspected Diagnosis of COVID-19
* Suspected or actual Exposure to COVID-19
