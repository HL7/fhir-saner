This section of the implementation guide walks through an example for automating computation
of a measure.

### Conventions in this Section
The definitions for these proposed groupings appear below.  For simplicity and brevity, the definitions below are provided in a
slightly modified version of the [FHIR Shorthand](http://hl7.org/fhir/uv/shorthand/2020May/HL7/fhir-shorthand/) notation.  The modification
introduces "with _fieldparts_ do" keyword to shorten repetitions.

For example:
```
* with name do
**   given[] = "Robert"
**   given[] = "Rob"
**   last = "Williams"
```
Would be the same as
```
*   name.given[0] = "Robert"
*   name.given[1] = "Rob"
*   name.last = "Williams"
```

FHIRPath Expressions used for this measure will use the functions defined by [FluentQuery](fluent_query.html) defined
in Appendix B of this guide to make the expressions more readable.

NOTE: The the [completed measure](Measure-ComputableCDCPatientImpactAndHospitalCapacity.html) may vary slightly from the
text in this section.

### Patient Impact and Hospital Capacity Module Definition
Like the phrase book, this walkthrough is based on the measure derived from the CDC Patient Impact and
Hospital Capacity module shown below.  This measure example is provided for the purposes of discussion, it is
neither an official CDC publication nor a normative artifact in this guide.

![CDC Patient Impact and Hospital Capacity module](57.130-covid19-pimhc-blank-p.png)

### Measure Header
The top part of the measure contains the metadata describing the measure itself, giving it a name, an identifier,
author and publisher, et cetera.  These components are described in more detail below.

#### Author Information
The measure begins by describing the author and providing contact information using an e-mail address.
This enables those with access to the measure content to easily contact the organziation which authored
it.
```
 * author.name = "Centers for Disease Control/National Healthcare Safety Network (CDC/NHSN)"
 * author.telecom.system = #email
 * author.telecom.value = "mailto:nhsn@cdc.gov"
```

#### Suggested Reporting Frequency
This measure should be reported daily.  This makes uses of the [ReportingPeriod](StructureDefinition-ReportingPeriod.html) extension
and the [MeasureReportingTiming](StructureDefinition-MeasureReportingTiming.html) profile to identify how often to report
the measure.

```
* extension[measureTiming].valueTiming.repeat.frequency = 1
* extension[measureTiming].valueTiming.repeat.period = 1
* extension[measureTiming].valueTiming.repeat.periodUnit =  http://unitsofmeasure.org#d "day"
```

#### Measure Name and Title
Each measure has both a human readable title, and computation oriented name, and a url which uniquely identifies
it.

```
 * name = "ComputableCDCPatientImpactAndHospitalCapacity"
 * url = "http://hl7.org/fhir/uv/saner/Measure/ComputableCDCPatientImpactAndHospitalCapacity"
 * title = "Patient Impact and Hospital Capacity"
```

#### Related Documentation
A measure is expected to be documented, and that documentation should contain the details necessary
for implement the measure itself.
```
 * relatedArtifact[0].type = http://hl7.org/fhir/ValueSet/library-type#documentation
 * relatedArtifact[0].url = "https://web.archive.org/web/20200501215043/https://www.cdc.gov/nhsn/acute-care-hospital/covid19/"
 * relatedArtifact[0].label = "NHSN COVID-19 Reporting"  // Descriptive Text to display in a Link
 * relatedArtifact[0].display = "CDC/NHSN COVID-19 Patient Impact & Hospital Capacity Module Home Page" // Title of the link target page
```
Multiple relatedArtifiact elements can be provided, the text above shows only the first of four relatedArtifact
entries included in the actual example measure.

#### Measure Library
Every measure must have at least one Library resource conforming to the
[PublicHealthMeasureLibrary](StructureDefinition-PublicHealthMeasureLibrary.html) profile that
provides the essential value sets and other resources that may be used to evaluate the measure.
Details about the measure library for this sample measure can be found in the
[Sample Measure Library](measure_library.html) page.

```
 * library = "http://hl7.org/fhir/uv/saner/Library/ComputableNHSNMeasureLibrary"
```

### Patient Impact Data Elements
This measure first addresses the Impact of COVID-19 on hospital patients, stratifying data by
hospital location (inpatient vs. ED/Overflow), ventilation status, and patient death on the
date of reporting.

There are multiple sets of patients to report upon for this section.

The initial patient population is Patients in the Hospital with Confirmed or Suspected COVID-19.
  1. Live Patients in any location.
     1. The subset of these in an inpatient bed.
        1. The subset of these who are on a ventilator.
        2. The subset of these who acquired COVID-19 14 days or more after admission.
     2. The subset of these in an ED or overflow bed with an admission order (i.e., those who are intended to be an inpatient).
        1. The subset of these who are on a ventilator.
  2. Dead Patients

Patients on a ventilator are of interest, patients not on a ventilator are a stratum that need not be counted because that
number can be determined mathematically from the data already provided.

Each of the values above is essentially counting an event, an admission to a location, or such admission with the use of ventilator equipment, or a death,
but are not reporting cumulative totals. These would then be reported as different cohorts with potientially overlapping values.

Patients who aquired COVID-19 while in the hospital are a separate strata from patients on a ventilator.

The Venn Diagram below illustrates the different subsets of patients in this measure.
![Venn Diagram](venn.png).

To simplify this section, this measure should be divided into at least three separate groups. Each group and stratum is preceded by the name
used to identify it.

1. [Encounters](measure_group_covid19_patients.html): Patients in the hospital during the reporting period who have suspected or confirmed COVID-19.<br/>
   This last group should be stratified by the [cartesian product](https://en.wikipedia.org/wiki/Cartesian_product) of
   location and ventilator status.
   1. InpNotVentilated: Inpatient Setting and Non-Ventilated
   2. InpVentilated: Inpatient Setting and Ventilated
   3. OFNotVentilated: ED/Overflow Setting and Non-Ventilated
   4. OFVentilated: ED/Overflow Setting and Ventilated
2. [AcquiredCovid](measure_group_hospital_acquired_covid19_patients.html): Patients in the hospital during the reporting period who have acquired suspected or confirmed COVID-19 14 days or more after admission.
3. [CovidDeaths](measure_group_covid19_deaths.html): Deaths in the hospital during the reporting period

### Hospital Capacity
The next section of this measure addresses hospital capacity with respect to all beds, inpatient beds, ICU beds, and ventilators.
These are all clearly [Capacity and Utilization](situational_awareness_measures.html#capacity-and-utilization) measures.
It can be clearly divided into two groups, with stratification of the Bed group in across three categories to support
all reporting needs.

This portion of the measure makes two assumptions: the total number of licensed and staffed beds and ventilators changes infrequently,
and that measure data is reviewed and adjusted (e.g., to account for institutional changes in staffing levels or bed counts) before
being sent forward, so that prior measure reports and transmission review processes can be used to manage counts of total beds
or ventilators).

1. [Ventilators](measure_group_ventilators.html): Utilization of ventilators.
2. [Beds](measure_group_beds.html): Utilization of Beds in the different locations.

   NOTE: The requested data for Beds is at different levels than the proposed measure. However, the data request
   is accessible from the proposed location categories below as follows:

   * All Beds -- The sum of all three strata below: NumICUBeds, NumImpBeds and NumAmbBeds
   * All Inpatient Beds -- The sum of the first two strata: NumICUBeds and NumImpBeds
   * All ICU Beds -- The first strata: NumICUBeds

   1. NumICUBeds: ICU Beds -- Utilization of staffed inpatient intensive care unit (ICU) beds.
   2. NumImpBeds: Inpatient Non-ICU Beds -- Utilization of staffed inpatient non-ICU beds.
   3. NumAmbBeds: Outpatient Beds -- Utilization of non-inpatient (e.g., ED, Ambulatory, Overflow) beds.

These are provided in a different order in the measure because the group for Beds builds on a similar framework
as is used for Ventilators, but includes complexity around stratification.

NOTE: The Beds group uses strata to reduce repetition in this exposition. However, this would prevent further
stratification by social determinants such as age, race, ethnicity and gender.  Any stratification layer can be
"bumped" up a level into a numerator population by the addition of a final filter by the criteria which
distinguishes it.

```
    .where(fieldToStratifyBy = 'ValueToMatch')
```




