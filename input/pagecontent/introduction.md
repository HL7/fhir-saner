The Situational Awareness for Novel Epidemic Response Implementation Guide enables transmission of
high level situational awareness information from initially inpatient facilities to centralized data
repositories to support the focus and response to novel influenza-like illness, such as COVID-19.
The COVID-19 pandemic has caused a need to have immediate awareness of available aggregate status,
outcome, and resource availability for public health and emergency response agencies to support
monitoring, coordination, and management. Similar outbreaks and other public health emergencies
can immediately benefit from the work in this project to support public health emergency preparedness
and response.

### Scope

The scope of this project is to support reporting of data required by public health and emergency
response agencies to address management of the COVID-19 Pandemic. The project will address solutions
that address COVID-19 and similar public health emergencies.

#### Principles
The following principles were established for development of this guide:
1.  The solution needs to be focused on providing high return on investment (ROI).
2.  The solution should not duplicate existing efforts.
3.  The solution needs to work with existing Health IT products currently deployed.
4.  The uplift needed to enable an existing product to support public health information
requirements needs to be low enough to effectively deliver quickly.

#### Approach
This guide will focus on existing FHIR Release 4.0 resources with extensions where necessary.
The project team assessed past efforts to support situational awareness, including:
* Existing standards,
* Existing HL7 FHIR resources, and
* Terminology

Based on these assessments, this IG prioritized its focus on for supporting bed and ventilator
availability, but includes support for other reporting efforts (e.g., PPE supplies, staffing).

#### Assessment
1.  Existing work by [Johns Hopkins University](https://coronavirus.jhu.edu/map.html) in aggregating
case data sets and visualizing them addresses national and even regional (at the county level) trends.
2.  Bed availability is an area where there is a great deal of existing
work [^1]<sup>,</sup>[^2]<sup>,</sup>[^3]<sup>,</sup>[^4], but not much prior success, although there
are existing Health IT solutions that have this data (not just in the EHR).  If the solution can be
interfaced rather than integrated, an implementation can be piloted much faster.
3.  Other resource utilization is available in inventory control or central monitoring
solutions, but are not necessarily readily available in the EHR.  This is a natural
evolution from Bed Availability.

[^1]: [HITSP C47: Resource Utilization Message](http://www.hitsp.org/ConstructSet_Details.aspx?&PrefixAlpha=4&PrefixNumeric=47)

[^2]: [HAvBED2: Hospital Avaialable Beds for Emergencies and Disasters](https://archive.ahrq.gov/prep/havbed2/)

[^3]: [Emergency Data Exchange Language (EDXL) Hospital AVailability Exchange (HAVE) v1.0 incorporating Approved Errata](https://www.oasis-open.org/standards#edxlhave-v1.0)

[^4]: [HL7/OASIS Cross Paradigm Implementation Guide: Emergency Data Exchange Language (EDXL) Hospital AVailability Exchange (HAVE) Version 2.0 (EDXL-HAVE), Release 1](https://www.hl7.org/implement/standards/product_brief.cfm?product_id=489)


##### Bed Availability
The key data for bed availability is found in Bed Management solutions integrated with
current inpatient EHR Systems, and in departmental ICU and Central Monitoring systems.
Such solutions support management of bed assignment for admissions and provide direction to
housekeeping staff regarding bed-turnover activities (e.g., cleaning) or departmental systems
which provide ICU and Nursing central monitoring capabilities.  They are often separate components
or modules, Standalone solutions, or third party solutions which integrate with an
EHR System.

##### Prior Solutions and Existing Standards
Prior standards developed to address these issues have been profiled through past efforts.  These are briefly
outlined below.

###### HAvBED and OASIS EDXL/HAVE Standards
Most notably, the OASIS Emergency Data Exchange Language (EDXL), and the OASIS Hospital Availability Exchange
were profiled by ANSI/HITSP in response to the AHIC Emergency Responder Use Case.  This work was advanced by
AHRQ to develop what is now known as the HAvBED solution, which became a federally-mandated program for states
to collect and report bed availability data.  Health and Human Services suspended the HAvBED program in 2016.
Some of the challenges with HAvBED included:

* Manually entered data in many automated bed availability systems is labor-intensive, untimely, resulting in data quality issues.
* Similar issues with to the manual data entry option.
* Technology standards have evolved, and HAvBED requirements did not keep pace.
* Facilities and states were often reluctant to share bed availability data.

###### HL7 Version 2
Other standards which contain information about bed availability include HL7 Version 2
(e.g., the [ADT_A20 Bed Status Update](http://www.hl7.eu/refactored/msgADT_A20.html) message),
and general observations profiled by ANSI/HITSP to support organizational reporting of bed availability using HL7 Version 2 OBX segments.

###### HL7 Version 3
No HL7 Version 3 standards were developed to support Bed management or availability.
The HL7 SOA Workgroup Collaborated with the OASIS EDXL Committee to develop a [Cross
Paradigm](https://www.hl7.org/implement/standards/product_brief.cfm?product_id=489)
specification supporting the communication of bed availability information.

#### HL7 FHIR Resources Supporting Situational Awareness Reporting
In HL7 FHIR the [Location](https://hl7.org/fhir/R4/location.html) resource can describe information about
any bed within a facility.  The [Group](https://hl7.org/fhir/R4/group.html) resource
can report on specific quantities of groups of resources available that match a specific
set of characteristics.  The [MeasureReport](https://hl7.org/fhir/R4/measurereport.html)
resource can report on measures using counts and other metrics over a variety of resources.

##### Device Resource
The [Device](https://hl7.org/fhir/R4/device.html) Resource can report on medical devices, including ventilators, respirators,
personal protective equipment such as masks, and viral test kits.  Device is not widely
used by systems reporting on device quantities or status.

##### Location Resource
While the [Location](https://hl7.org/fhir/R4/location.html) resource can report on beds, it can also be used to describe buildings, wards,
geographic area, or any other sort of place, including "mobile" places such as a mobile clinic or
ambulance.  Given its broad application, would need to be profiled to support use for bed availability.

While many existing Certified EHR Systems support the FHIR standard and the Location resource today, there's
little use of the Location resource to report data about beds.  It is more commonly used to report
Location data associated with the
[Common Clinical Data Set](https://www.healthit.gov/sites/default/files/commonclinicaldataset_ml_11-4-15.pdf) (now known as the US Core Data for
Interoperability or [USCDI](https://www.healthit.gov/isa/united-states-core-data-interoperability-uscdi)) required by the ONC 2015 Certification
regulations.  These uses of Location are found in the Encounter, Procedure and Practitioner resources to
describe the facility where an encounter occurs, the location where a procedure is performed, or
the location of a practitioner or facility.

##### Group Resource
While the [Group](https://hl7.org/fhir/R4/group.html) resource can be used to support aggregate reporting on beds, as it allows reporting
of quantities of an item without referencing an individual item, it has not been deployed in this way by
any known system.  This resource can also be used to report on other types of resources, such as
ventilators, respirators, and N95 masks.

NOTE: While Group doesn't specifically support groups of Location resources, it can be used to
report on any group of things that can be defined by characteristics, it simply cannot
enumerate those resources.  That is not essential for the use cases in this implementation
guide.

The Group resource is more lightly deployed in existing EHR products. It is not
a requirement of the 2015 Certification program.

##### Immunization
The [Immunization](https://hl7.org/fhir/R4/immunization.html) resource can be used to determine the quantity of immunizations dispensed to
vaccinate patients. The Immunization resource is included in USCDI and generally available in EHR
systems in the US.

##### MedicationDispense, MedicationAdministration
The [MedicationDispense](https://hl7.org/fhir/R4/medicationdispense.html) resource can be used to determine the quantity of specific types of medications
dispensed to treat patients (e.g., Remdesivir). MedicationAdministration would be used to determine the
quantity of medications given.  MedicationDispense and MedicationAdministration are not widely available
through EHR systems generally.

##### SupplyRequest and SupplyDelivery
The [SupplyDelivery](https://hl7.org/fhir/R4/supplydelivery.html) resources can be used to determine quantities of supplies, such as PPE or or disposable items
used during treatment. These resources are relatively new and not widely available.

##### Measure and MeasureReport Resource
The [Measure](https://hl7.org/fhir/R4/measure.html) and [MeasureReport](https://hl7.org/fhir/R4/measurereport.html) resource can be used to support reporting of a variety of measures,
including simple counts, tracking of inventory (e.g., PPE, medication supply), or used with measures
over different strata.  It is not readily searchable at the stratum level.  MeasureReport is beginning
to gain traction because of efforts using it in the [DaVinci Project](https://www.hl7.org/about/davinci/)
and in clinical quality reporting efforts.

##### Questionnaire Response
The [QuestionnaireResponse](https://hl7.org/fhir/R4/questionnaireresponse.html) resource has been profiled for use in reporting to CDC's National
Healthcare Safety Network (NHSN) in two implementation guides to report the occurrence
of Healthcare Acquired Infections. These guides have seen limited implementation and
testing.


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

