The measure group counting patients acquiring COVID-19 14 days or more after admission includes criteria that depends on the timing of two different events.  It cannot be easily evaluated via a FHIR Query
because FHIR Queries do not support complex join criteria (e.g., Observation.date - Observation.encounter.date > 14 days).  Such criteria
can be evaluated using FHIRPath [Date/Time Arithmetic](http://hl7.org/fhirpath/#datetime-arithmetic) or
[CQL Date and Time Operators](https://cql.hl7.org/02-authorsguide.html#datetime-operators).
Several measures consider dates and times that have a relative offset to the reporting period, or an event occuring during the
reporting period.

### Describing the Group

The first step in describing the group is to identify it with a code.  Measure developers will generally
define the codes used for the measure groups they create.
```
 * with group[1].code do
 ** coding = MeasureGroupSystem#AcquiredCovid
 ** coding.display = "Acquired COVID-19 in Hospital"
 ** text = "Hospital Onset COVID-19 Patient Encounters Reporting"
```
#### Measure Group Attributes
Each group must be described by the [Measure Group Attributes](StructureDefinition-MeasureGroupAttributes.html) extension to
further describe the measure group content.

The first step in describing these attributes is to indicate how the measure is scored.  This measure group is scored as an event
growth measure because that reports both current and cumulative incidence.  This supports reporting of the growth rate for hospital
onset infections within a facility or region.

```
 * with group[1].extension[groupAtts] do
 ** extension[scoring].valueCodeableConcept = http://hl7.org/fhir/uv/saner/CodeSystem/PublicHealthMeasureScoring#event-growth
```

Next, the measure describes the type of measure (e.g., structure, process or outcome). This measure is an outcome measure,
representing the outcome of acquiring an infection while in the hospital.
```
 ** extension[type].valueCodeableConcept = http://terminology.hl7.org/CodeSystem/measure-type#outcome
```

An indication of how the scoring system works is then provided (e.g., increase, decrease). Lower numbers are "better", with regard
to event growth for infections in this case.
```
 ** extension[improvementNotation].valueCodeableConcept = http://terminology.hl7.org/CodeSystem/measure-improvement-notation#decrease
```

The type of resource associated with this measure expresses what to count for the measure implementer.  For this case, it is a
patients with an active inpatient or ED Encounter. This tells "what to count". The ResourceType slice identifies the FHIR Resource
which is likely being counted.  The SNOMED slice can be used to provide a more fine grained code to describe the resource
(e.g. a specific condition, medication, type of encounter, patient, practitioner, et cetera), and might be a code found or used
to find resources based on the code field associated with it. This information is descriptive, rather than semantically exact content.
It is meant to convey information to an implementor, rather than to automated systems.
```
 ** with extension[subject] do
 *** valueCodeableConcept.coding[ResourceType] = http://hl7.org/fhir/resource-types#Patient
 *** valueCodeableConcept.coding[Snomed] = #"116154003|Patient|: 20401003|With| = (840539006|Disease caused by 2019 novel coronavirus|: 246512002|Timing| = 277056009|Hospital Acquired|)"
 *** valueCodeableConcept.coding[Snomed].display = "Patient where With = Disease caused by 2019 novel coronavirus where Timing = Hospital acquired"
 *** valueCodeableConcept.text = "Hospital Acquired COVID-19"
```
NOTE: This measure counts Patients having hospital acquired COVID-19, thus Patient is the right code for ResourceType,
and the post-coordinated SNOMED CT expresses the notion of a patient with hospital acquired COVID-19.  Once again, the semantics need
not be perfect, only illustrative to an implementer.

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
 * with group[1].population[1].code do
 ** coding = http://hl7.org/fhir/uv/saner/CodeSystem/MeasuredValues#numC19HospPats
 ** coding.display = "Hospitalized COVID-19 Patients"
 ** coding[1] = http://terminology.hl7.org/CodeSystem/measure-population#initial-population
 ** text = "Patients with suspected or confirmed COVID-19 in an inpatient location"

 * with group[1].population[2].code do
 ** coding = http://hl7.org/fhir/uv/saner/CodeSystem/MeasuredValues#numC19HOPats
 ** coding.display = "Hospital Onset COVID-19 Patients"
 ** coding[1] = http://terminology.hl7.org/CodeSystem/measure-population#numerator
 ** text = "Hospital Onset COVID-19 Patients"

 * with group[1].population[3].code do
 ** coding = http://hl7.org/fhir/uv/saner/CodeSystem/MeasuredValues#cumC19HOPats
 ** coding.display = "Cumulative Hospital Onset COVID-19 Patients"
 ** coding[1] = http://terminology.hl7.org/CodeSystem/measure-population#denominator
 ** text = "Cumulative Hospital Onset COVID-19 Patients"
```

NOTE: The initial population for this measure group is identical to the population used for
the [first measure group](measure_group_covid19_patients.html). This is intentional, as that
population will already have been evaluated and can be further refined to identify patients
with hospital onset COVID-19.

#### Describe the Evaluation Criteria
Name the criteria and give a description for what qualifies to to be included.
NOTE: The description **shall** be given in detail for each population and provide enough
information for a competent human reader to correctly implement the computation.
```
 * with group[1].population[1].criteria do
 ** name = "NumC19HospPats"
 ** description = """Patients in the hospital in an inpatient setting with confirmed or suspected COVID-19"""
 """

 * with group[1].population[2].criteria do
 ** name = "NumC19HOPats"
 ** description = """Filters the initial population by ruling out those patients whose first suspected or
 confirmed diagnosis or lab result appears less than 14 days from admission."""

 * with group[1].population[3].criteria do
 ** name = "CumC19HOPats"
 ** description = """Computes the cumulative total from the prior measure report and the number of new
 infections detected in the current reporting period."""
```

#### Provide the Computable Content
The computable content "implements" the automated computation of the measure.

The first population includes patients in the hospital who are in an inpatient setting.

```
 * with group[1].population[1].criteria do
 ** language = #text/fhirpath
 ** expression = "%NumC19Pats.where(location.location.resolve.type().memberOf(%InpatientLocations.url))"
```

The next population rules out patients whose first suspected or confirmed diagnosis
or positive lab result was less than 14 days after admission, and not older than
14 days before admission.  See [the note](measure_group_covid19_patients.html) on
this latter two week period in the discussion for the prior measure group.
```
 * with group[1].population[1].criteria do
 // This expression will be reused to compute the value for the CumC19HOPats
 // population so it must have a name.
 ** name = "NumC19HOPats"
 ** language = #text/fhirpath
 ** expression = """
    Encounter.where(
      iif(
        // Rule out any encounter that is less than 14 days old.
        period.start + 14 days > today(),
        // return false to rule out this encounter.
        false,
        iif(
          // Rule out patients who have a diagnosis of suspected or confirmed
          // Covid prior between period.start - 14 days and period.start + 14 days
          whereExists('Condition',
            with('status').notEqualTo('refuted'|'entered-in-error'),
            with('patient').equalTo($this.subject),
            with('verificationStatus').notEqualTo('refuted'|'entered-in-error'),
            with('date').greaterThan($this.period.start - 14 'days'),
            with('date').lessThanOrEqualTo($this.period.start - 14 'days'),
            with('code').in(%SuspectedOrConfirmedCOVID19Diagnoses.url)
          ).onServers(%Base),
          // return false to rule out this encounter
          false,
          // Rule out remaining patients who have a positive lab result between
          // period.start - 14 days and period.start + 14 days
          whereExists('Observation',
            with('status').equalTo('registered'|'preliminary'|'final'|'amended'|'corrected'),
            with('patient').equalTo($this.subject),
            with('date').greaterThan($this.period.start - 14 'days'),
            with('date').lessThanOrEqualTo($this.period.start - 14 'days'),
            with('code').in(%Covid19Labs.url)
            with('value-concept').in(%PositiveResults.url)
          ).onServers(%Base).not()
        )
      )
    )
    // Resolve to patient to simplify stratification
    .select(patient).resolve()
 """
```
Again, note the use of of nested iif() calls and _count=1 in the query to ensure short-circuit evaluation.
Also note that these queries are almost identical to the [queries](measure_group_covid19_patients.html#fhir-queries)
used in the first measure group.
```
 * with group[1].population[2].criteria do
 ** name = "CumC19HOPats"
 ** language = #text/fhirpath
 ** expression = "iif(%PriorReport.empty(),0,%PriorReport.group[1].population[2].count) + %NumC19HOPats)"
```
NOTE: This expression simply returns a numeric value based on the previously reported value plus the number of new infections
detected.  Populations whose values are computed in this manner will not be able to report stratification data
within the measure report for the cumulative total.

### Stratification
Social determinants of health, such as age, race, ethnicity and gender can have negative impacts on
patient treatment.  This measure is stratified by age group, race, ethnicity and gender to illustrate
the use of stratification in a cumulative measure.


#### Stratification by Age Group
Stratification by age group involves determining the age of the patient. There is no
way to do arithmetic with two dates (to compute a difference), but a birth date plus
an age can be compared to today's date, and that's sufficient.  The codes used for
age group come from the [IHE_ADX_AgeRange](CodeSystem-IHE-ADX-agerange.html) code system,
which derives its values from the [ISO-8601](https://www.iso.org/iso-8601-date-and-time-format.html)
specification for durations.
```
 * with group[1].stratifier[0] do
 ** code.text = "By Age Group"
 ** description = "Stratifies the population by Age Group"
 ** criteria.language = #text/fhirpath
 ** criteria.expression = """
    Patient.select(
      iif(birthDate + 20 years < today(), 'P0Y--P20Y',
        iif(birthDate + 30 years < today(), 'P20Y--P30Y',
          iif(birthDate + 40 years < today(), 'P30Y--P40Y',
            iif(birthDate + 50 years < today(), 'P40Y--P50Y',
              iif(birthDate + 60 years < today(), 'P50Y--P60Y',
                iif(birthDate + 70 years < today(), 'P60Y--P70Y',
                  iif(birthDate + 80 years < today(), 'P70Y--P80Y', 'P80Y-P9999Y')
                )
              )
            )
          )
        )
      )
    )
 """
```

#### Stratification by Gender
Stratification by gender is straightforward. The expression simply returns Paient.gender
```
 * with group[1].stratifier[1] do
 ** code.text = "By Gender"
 ** description = "Stratifies the population by Gender"
 ** criteria.name = "Gender"
 ** criteria.language = #text/fhirpath
 ** criteria.expression = "Patient.gender"
```

#### Stratification by Ethnicity
Stratification by ethnicity is also relatively straightforward, but requires use of
US Core extensions and the FHIR defined [extension()](https://www.hl7.org/fhir/fhirpath.html#functions)
function.
```
 * with group[1].stratifier[2] do
 ** code.text = "By Ethnicity"
 ** description = "Stratifies the population by Ethnicity"
 ** criteria.name = "Ethnicity"
 ** criteria.language = #text/fhirpath
 ** criteria.expression = """
    Patient.extension('http://hl7.org/fhir/us/core/StructureDefinition/us-ethnicity-category').extension('ombCategory').valueCoding.code
    """
```

#### Stratification by Race
Stratification by Race is more complicated, because there are multiple possible combinations supporting
reporting of up to 5 different race categories, a value for unknown, a value for asked but unknown, and
the possibility that no value is provided whatsoever, giving 34 combinations in total.  A common solution
for reporting in these cases is to reduce the set to the 5 racial categories and unknown values, and add
a new category to report 'Mixed' race.
```
 * with group[1].stratifier[3] do
 ** code.text = "By Race"
 ** description = "Stratifies the population by Race"
 ** criteria.name = "Race"
 ** criteria.language = #text/fhirpath
 ** criteria.expression = """
    Patient
    .extension('http://hl7.org/fhir/us/core/StructureDefinition/us-core-race')
    .extension('ombCategory')
    .select(
      iif(valueCoding.count() > 1,
         'Mixed',
         iif(valueCoding.system = 'http://terminology.hl7.org/CodeSystem/v3-NullFlavor',
             'Unknown',
             valueCoding.code
         )
    )
    """
```
Some states combine stratification Race and Ethnicity using similar criteria.  For example,
[Massachusetts reports](https://www.mass.gov/doc/covid-19-dashboard-september-7-2020/download#page=15)
data to the public (but may have more detailed results) using the following categories:
* Hispanic
* Non-Hispanic Asian
* Non-Hispanic Black/African American
* Non-Hispanic Other
* Non-Hispanic White
* Unknown/Missing

The selection of appropriate categories for reporting is regionally sensitive, which suggests that
reporting should be at a higher level of granularity.  An alternate strategy is shown for
this strata in the [following group](measure_group_covid19_deaths.html).
