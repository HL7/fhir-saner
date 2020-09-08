
This section of the implementation guide walks through an example for automating computation
of a measure.

### Conventions in this Section
The definitions for these proposed groupings appear below.  For simplicity and brevity, the definitions below are provided in a
slightly modified version of the [FHIR Shorthand](http://build.fhir.org/ig/HL7/fhir-shorthand/) notation.  The modification
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

To save space only the description for the first population in the first group will be provided in
this narrative. However, the [completed measure](Measure-ComputableCDCPatientImpactAndHospitalCapacity.html)
includes descriptions for all populations.

### Patient Impact and Hospital Capacity Module Definition
Like the phrase book, this walkthrough is based on the measure derived from the CDC Patient Impact and
Hospital Capacity module shown below.

![CDC Patient Impact and Hospital Capacity module](57.130-covid19-pimhc-blank-p.png)

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
The next section of this measure addresses hospital capacity with respect to all beds, inpatient beds, ICU beds, and ventilators. It can be clearly
divided into two groups: those dealing with available beds, and those dealing with available ventilators.
These are all clearly [Capacity and Utilization](situational_awareness_measures.html#capacity-and-utilization) measures.

#### Hospital Beds
The "All Hospital Beds" measurement does not include both "available" and "in use" beds, and so would not normally be considered to be a
capacity measurement, however, it is included with other measures that clearly provide an approximation of the in use and available beds.
The Bed Venn Diagram below illustrates stratification of beds such that all desirable capacities can be determined from the measure.

![Bed Venn Diagram](venn2.png)

#### Ventilators
Finally, a note on the Ventilators measurement. EHR systems may not directly track ventilator devices in the hospital. Ventilator use is indirectly determined in this measure based on the presence of observations that would only be present in the patient chart
when the patient is being ventilated. Direct tracking of ventilator devices and teleemetry is typically the purview of other systems used for asset
management or ICU central monitoring.  The number of ventilator devices is generally known, and does not change frequently, and so implementers may
provide an alternate mechanism (e.g., a defined parameter) to supply this value.  Thus, while this guide provides an expression for identifying
ventilators in this sample measure, more user feedback on how to obtain this value is desired.

### Measure Library
[Fill this out](#todo)


