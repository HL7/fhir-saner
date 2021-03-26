Deaths in the hospital during the reporting period is half of an [event growth measure](situational_awareness_measures.html#event-growth),
it does not include the cumulative total number of deaths.  There are several good reasons to use an event growth measure in this case:
   1. Loss of a single report does not damage the cumulative total value.  When the next report is sent, a new cumulative total will also
      be sent, allowing the reciever to adjust for the missing data.
   2. Reporting both the incremental, and cumulative total allows the reciever to detect potential reporting errors over time.
   3. Using the Event Growth measure supports data correction over time. During a public health emergency where there are limited resources,
      activities are triaged to protect life first. Death reporting may be delayed for facilities under extreme stress.
   4. Event growth measures support the [BASE Consistency](https://en.wikipedia.org/wiki/Eventual_consistency) model, which means that prior
      reports don't need to be corrected for the reported data to eventually become consistent.

NOTE: When using an event growth measure, it is important to establish a convention for how to accumulate the total.  By convention,
this is based on the date the sender started reporting data (the simplest to implement), but may be altered to be based on reporting as of
a given date or other criteria (more complicated).

### Measure Definition for Deaths in the Hospital

The first step in describing the group is to identify it with a code.  Measure developers will generally
define the codes used for the measure groups they create.
```
 * with group[2].code do
 ** coding = MeasureGroupSystem#CovidDeaths
 ** coding.display = "COVID-19 Deaths"
 ** text =  "COVID-19 Patient Death Reporting"
```
#### Measure Group Attributes
Each group must be described by the [Measure Group Attributes](StructureDefinition-MeasureGroupAttributes.html) extension to
further describe the measure group content.

The first step in describing these attributes is to indicate how the measure is scored.  This measure group is scored as an event
growth measure because that reports both current and cumulative incidence.  This supports reporting of the growth rate for hospital
deaths within a facility or region.

```
 * with group[2].extension[groupAtts] do
 ** extension[scoring].valueCodeableConcept = http://hl7.org/fhir/uv/saner/CodeSystem/PublicHealthMeasureScoring#event-growth
```

Next, the measure describes the type of measure (e.g., structure, process or outcome). This measure is an outcome measure,
representing the outcome of death while in the hospital.
```
 ** extension[type].valueCodeableConcept = http://terminology.hl7.org/CodeSystem/measure-type#outcome
```

An indication of how the scoring system works is then provided (e.g., increase, decrease). Lower numbers are "better", with regard
to event growth for deaths in this case.
```
 ** extension[improvementNotation].valueCodeableConcept = http://terminology.hl7.org/CodeSystem/measure-improvement-notation#decrease
```

The type of resource associated with this measure expresses what to count for the measure implementer.  For this case, it is a
patients with COVID-19 who have died. This tells "what to count". The ResourceType slice identifies the FHIR Resource
which is likely being counted.  The SNOMED slice can be used to provide a more fine grained code to describe the resource
(e.g. a specific condition, medication, type of encounter, patient, practitioner, et cetera), and might be a code found or used
to find resources based on the code field associated with it. This information is descriptive, rather than semantically exact content.
It is meant to convey information to an implementor, rather than to automated systems.
```
 ** with extension[subject] do
 *** valueCodeableConcept.coding[ResourceType] = http://hl7.org/fhir/resource-types#Patient
 *** valueCodeableConcept.coding[Snomed] = #419620001 "Death"
 *** valueCodeableConcept.coding[Snomed].display = "Death"
 *** valueCodeableConcetp.coding.text = "Patient Deaths"
 *** valueCodeableConcept.text = "Patients with conformed or suspected COVID-19 who have died"
```

Finally, the method for aggregating scores is specified.
Growth rate measures aggregate according to cumulative aggregation rules.
```
 ** extension[rateAggregation].valueString = "cumulative"
```

### Define each Population

Each population for the measure is described. For this case, there are three populations,
the Initial Population, a Numerator (the new infections), and a Denominator (the cumulative total).

Provide a code describing each population.
```
 * with group[2].population[0].code do
 ** coding = http://hl7.org/fhir/uv/saner/CodeSystem/MeasuredValues#numC19Pats
 ** coding.display = "All COVID-19 Confirmed or Suspected Patients"
 ** coding[1] = http://terminology.hl7.org/CodeSystem/measure-population#initial-population
 ** text = "Patients with suspected or confirmed COVID-19 in any location."

 * with group[2].population[1].code do
 ** coding = http://hl7.org/fhir/uv/saner/CodeSystem/MeasuredValues#numC19HOPats
 ** coding.display = "Hospital Onset COVID-19 Patients"
 ** coding[1] = http://terminology.hl7.org/CodeSystem/measure-population#numerator
 ** text = "Hospital Onset COVID-19 Patients"

 * with group[2].population[2].code do
 ** coding = http://hl7.org/fhir/uv/saner/CodeSystem/MeasuredValues#cumC19HOPats
 ** coding.display = "Cumulative Hospital Onset COVID-19 Patients"
 ** coding[1] = http://terminology.hl7.org/CodeSystem/measure-population#denominator
 ** text = "Cumulative Hospital Onset COVID-19 Patients"
```

NOTE: The initial population for this measure group is identical to the population used for
the [first measure group](measure_group_covid19_patients.html). This is intentional, as that
population will already have been evaluated and can be further refined to identify patients
who have died.

#### Describe the Evaluation Criteria
Name the criteria and give a description for what qualifies to to be included.
NOTE: The description **shall** be given in detail for each population and provide enough
information for a competent human reader to correctly implement the computation.
```
 * with group[2].population[0].criteria do
 ** name = "NumC19HospPats"
 // This criteria does not have a name because it duplicates a previously computed criteria
 ** description = """
Identifies patients with suspected or confirmed COVID-19 in any location based
 on the existence of an encounter, observation or condition related to COVID that was
 active in the last 14 days"""

 * with group[2].population[1].criteria do
 ** name = "NumC19Died"
 ** description = """
Filters the initial population by selecting those who have died."""

 * with group[2].population[2].criteria do
 ** name = "CumC19Died"
 ** description = """
Computes the cumulative total from the prior measure report and the number of new deaths in the current reporting period."""
```

#### Provide the Computable Content
The computable content "implements" the automated computation of the measure.

The first population is easily computed as it is the same as %NumC19HospPats which is computed
in the group reporting on [hospital acquired COVID-19](measure_group_hospital_acquired_covid19_patients.html)
of the measure. This also illustrates the value of reporting multiple measures in one measure report, as it
enables reuse of common subexpressions reducing evaluation overhead.

Measure Developers **should** consider the order of presentation of groups within measures.
While this walkthrough follows the original order in which the groups are presented, a different
order would present the groups and populations which need to be computed first to the implementer.
This reduces opportunities for congitive overload, simplifies implementations and avoid errors.

```
 * with group[2].population[0].criteria do
 ** language = #text/fhirpath
 ** expression = "%NumC19HospPats"
```

The next population identifies patients who have died.
```
 * with group[2].population[1].criteria do
 // This expression will be reused to compute the value for the CumC19HOPats
 // population so it must have a name.
 ** name = "NumC19Died"
 ** language = #text/fhirpath
 ** expression = """
    Encounter.where(
      iif(
        hospitalization.where(
          dispositionCode.memberOf(%PatientDeaths.url)
        ),
        true,
        subject.resolve().where(deceasedBoolean = true | deceasedDateTime.exists())
      )
    )
    // Resolve to patient to simplify stratification
    .select(subject).resolve()
 """
```
Again, note the use of of nested iif() calls in the query to ensure short-circuit evaluation.
```
 * with group[2].population[2].criteria do
 ** name = "CumC19Died"
 ** language = #text/fhirpath
 ** expression = "iif(%PriorReport.empty(),0,%PriorReport.group[2].population[2].count) + %NumC29Died)"
```
NOTE: This expression simply returns a numeric value based on the previously reported value plus the number of new infections
detected.


### Stratification
Social determinants of health, such as age, race, ethnicity and gender can have negative impacts on
patient treatment.  This measure group is also stratified by age group, race, ethnicity and gender to illustrate
the use of stratification in a cumulative measure.

It uses exactly the same criteria for stratification as [shown previously](measure_group_hospital_acquired_covid19_patients.html),
for age group, gender, and ethnicity, and therefore are not repeated below.

#### Stratification by Race
As previously noted, stratification by Race is more complicated, because there are multiple possible
combinations supporting reporting of up to 5 different race categories, a value for unknown, a value for
asked but unknown, and the possibility that no value is provided whatsoever.

The selection of appropriate categories for reporting is regionally sensitive, which suggests that
reporting should still be at a higher level of granularity.

The expression below shows an alternate strategy of reporting at nearly the maximum granularity.
It combines unknown, asked but unknown, and no response in one group.  Reporting in this way provides
more granularity than would be commonly used in a dashboard, but a dashboard can always roll up
these values into appropriate groupings.
```
 * with group[2].stratifier[3] do
 ** code.text = "By Race"
 ** description = "Stratifies the population by Race"
 ** criteria.name = "Race"
 ** criteria.language = #text/fhirpath
 ** criteria.expression = """
    Patient
    .extension('http://hl7.org/fhir/us/core/StructureDefinition/us-core-race')
    .extension('ombCategory')
    .select(
      iif(valueCoding.code contains '1992-5', 'A', ' ') +
      iif(valueCoding.code contains '2054-5', 'B', ' ') +
      iif(valueCoding.code contains '2076-8', 'H', ' ') +
      iif(valueCoding.code contains '2028-9', 'S', ' ') +
      iif(valueCoding.code contains '2106-3', 'W', ' ')
    )
    """
```