The first group to address is Suspected or Confirmed COVID-19 Patients Stratified by Location and Ventilator Status.
This measure is a [Queue Length](situational_awareness_measures.html#queue-length) measure. It measures patients in the hospital (in
an inpatient setting or overflow area) awaiting completion of treatment. This is especially evident in the case for patients in an
ED/Overflow area awaiting an inpatient bed, but generally true for all the different strata.

### Describing the Group

The first step in describing the group is to identify it with a code.  Measure developers will generally
define the codes used for the measure groups they create.
```
 * with group[0].code do
 ** coding = MeasureGroupSystem#Encounters
 ** coding.display = "Encounters"
 ** text = "Hospital COVID-19 Patient Encounters Reporting"
```
#### <a name='queue-length-example'/>Measure Group Attributes

Each group must be described by the [Measure Group Attributes](StructureDefinition-MeasureGroupAttributes.html) extension to
further describe the measure group content.

The first step in describing these attributes is to indicate how the measure is scored.
```
 * with group[0].extension[groupAtts] do
 ** extension[scoring].valueCodeableConcept = http://hl7.org/fhir/uv/saner/CodeSystem/PublicHealthMeasureScoring#queue-length
```

Next, the measure describes the type of measure (e.g., structure, process or outcome). This measure is a structural measure,
representing the current patient load on a hospital.
```
 ** extension[type].valueCodeableConcept = http://terminology.hl7.org/CodeSystem/measure-type#structure
```

An indication of how the scoring system works is then provided (e.g., increase, decrease). Lower numbers are "better", with regard
to load in this case.
```
 ** extension[improvementNotation].valueCodeableConcept = http://terminology.hl7.org/CodeSystem/measure-improvement-notation#decrease
```

The type of resource associated with this measure expresses what to count for the measure implementer.  For this case, it is a
patients with an active inpatient or ED Encounter. This tells "what to count". The ResourceType slice identifies the FHIR Resource
which is likely being counted.  The SNOMED slice can be used to provide a more fine grained code to describe the resource
(e.g. a specific condition, medication, type of encounter, patient, practitioner, et cetera), and might be a code found or used
to find resources based on the code field associated with it. This information is descriptive, rather than semantically exact content.
It is meant to convey information to an implementer, rather than to automated systems.
```
 ** with extension[subject] do
 *** valueCodeableConcept.coding[ResourceType] = http://hl7.org/fhir/resource-types#Encounter
 *** valueCodeableConcept.coding[Snomed] = http://snomed.info/sct#398284004
 *** valueCodeableConcept.coding[Snomed].display = "Patient in room"
 *** valueCodeableConcept.text = "Patient in room"
```

The question of what to count is sometime difficult to evaluate initially. This measure could be counting patients
or it could be counting the most recent patient encounters for a patient in the reporting period. Either would work
but using encounters makes more sense for this measure because of the need to stratify by measure location, which
is done more readily starting from the Encounter resource. Since the automation code ensures that there is one
encounter for each patient, this method of counting works.

Finally, the method for aggregating scores is specified.
Queue Length measures aggregate according to point-in-time aggregation rules.
```
 ** extension[rateAggregation].valueString = "point-in-time"
```

### Define each Population

The population definitions provide both descriptive and computable content for the measure, describing it to the
implementer, and to the system that automates its computation.  Each population for the measure is described. For this first case,
there is only an initial population, because the Measure Population and Initial Population would otherwise be identical.  In
other cases, it may be easier to define an initial population and then further filter it to construct
the Measure Population.

NOTE: Queue Length Measures support both an initial population and a measure population because
data in the initial population may be reused in later stratification of the measure population.

Provide a code describing the initial population.
```
 * with group[0].population[0] do
 ** with code do
 *** coding = http://hl7.org/fhir/uv/saner/CodeSystem/MeasuredValues#numC19Pats
 *** coding.display = "All COVID-19 Confirmed or Suspected Patients"
 *** coding[1] = http://terminology.hl7.org/CodeSystem/measure-population#initial-population
 *** text = "Patients with suspected or confirmed COVID-19 in any location."
```

#### Describe the Evaluation Criteria
Name the criteria and give a description for what qualifies to be included.
NOTE: The description **shall** be given in detail for each population and provide enough
information for a competent human reader to correctly implement the computation.
```
 ** with criteria do
 *** name = "NumC19Pats"  // Note: Follow PascalCase conventions for names
 *** description = """Active encounters where the encounter diagnosis is suspected or confirmed COVID-19,
 or a Condition of suspected or confirmed COVID-19 was created during that encounter.  This includes the patients with laboratory-confirmed
 or clinically diagnosed COVID-19.

Confirmed
: A patient with a laboratory confirmed COVID-19 diagnosis

Suspected
: A patient without a laboratory confirmed COVID-19 diagnosis who, in accordance with CDC’s Interim Public Health Guidance
for Evaluating Persons Under Investigation (PUIs), has signs and symptoms compatible with COVID-19 (most patients with confirmed
COVID-19 have developed fever and/or symptoms of acute respiratory illness, such as cough, shortness of breath or myalgia/fatigue)."""
```

#### Provide the Computable Content
The computable content "implements" the automated computation of the measure.

```
 *** language = #text/fhirpath
 *** expression = """
     // Start with encounters that were active during the reporting period. Note, this may find the same patient twice
     // because they may have had an ED encounter followed by an inpatient encounter both within the reporting period.
     findAll('Encounter',
        including('subject','condition','reasonReference'),
        with('status').equalTo('in-progress'|'finished'),
        with('date').within(%ReportingPeriod)
     ).onServers(%Base).where(
       iif(
         // The reason is a positive lab test result
         Observation.where(code.memberOf(%Covid19Labs.url) and value.memberOf(%PositiveResults.url)) or

         // The reason or diagnosis associated with the encounter is COVID-19
         ( Encounter.reasonCode | Condition.code ).memberOf(%SuspectedOrConfirmedCOVID19Diagnoses.url),

         iif(
           Patient.distinct()
              .whereExists('Observation',
                for('patient', $this),
                with('status').equalTo(
                    'registered' | 'preliminary' | 'final' | 'amended' | 'corrected'),
                with('date').greaterThan(%ReportingPeriod.start - 14 'days'),
                with('code').in(%CovidLabs),
                with('value-concept).in(%PositiveResults)
           ).onServers(%Base), true,
           Patient.distinct()
              .whereExists('Condition',
                for('patient', $this),
                with('verification-status').notEqualTo('refuted'|'entered-in-error').
                with('date').greaterThan(%ReportingPeriod.start - 14 'days'),
                with('code').in(%SuspectedOrConfirmedCOVID19Diagnoses.url)
            // Missing onServers()
           ).exists()
         )
      )
    )
    // Finally, resolve to the unique list of encounters (just in case)
    .distinct()
    // And remove duplicate encounters for the same patient
    // NOTE! Assumes that encounters are returned in order by most to least recent
    // This assumption holds commonly on many implementations, but may not be true
    // for all cases. In the worst case scenario where it does not, the situation
    // will be corrected in the very next reporting period, where only the most
    // recent encounter will appear.
    .aggregate(
      iif($total.subject contains $this.subject,
          {}, $total | $this
      )
    )
 """
```

#### The Initial Query
The first part of the computable content creates a query that will be resolved by the FHIRPath engine.
```
     findAll('Encounter',
        including('subject','condition','reasonReference'),
        with('status').equalTo('in-progress'|'finished'),
        with('date').within(%ReportingPeriod)
     ).onServers(%Base).
```
The [`findAll()`](fluent_query.html#findAll) function is used to resolve the query into a Resource
(the Bundle returned from the query).  This query is designed to extract most of the essential data from
Encounters during the reporting period. This is the exact kind of query that
[FHIR Bulk Data Access](https://hl7.org/fhir/uv/bulkdata/) is intended to support. It uses
[`including('subject','condition','reasonReference')`](fluent_query.html#including) to ensure that referenced resources are also
returned.

#### Filtering Criteria by included resources
The next part of the query is a where() clause which filters the resources returned by the first query.
This where clause includes the use of the iif() function to enable short circuit evaluation, so that
additional queries are only performed when necessary.

The first clause in the iif() uses Observation, Encounter and Condition resources returned by the initial
query, and check for codes and values that are members of value sets established in the [library](measure_library.html)
associated with the measure.  If an encounter matches for either of these reasons, then there is no reason
to look further.

The first part filters the returned resources by type (Observation) and then evaluates
whether the observation matches one of the appropriate codes for a Covid-19 lab test and has a
positive result.
```
       iif(
         // The reason is a positive lab test result
         Observation.where(code.memberOf(%Covid19Labs.url) and value.memberOf(%PositiveResult.url)) or
```

NOTE: For lab results, Observations may have quantitative (numeric values with units),
qualitative (codes), or simply string values to report a result. When defining measures to evaluate
lab results, consider carefully how to evaluate positive/negative result values, and how to evaluate
values reported only as text.

The second part evaluates the codes associated with the Encounter.reasonCode or Condition.code to
determine whether the encounter is for suspected or confirmed COVID-19.
```
         // The reason or diagnosis associated with the encounter is COVID-19
         ( Encounter.reasonCode | Condition.code ).memberOf(%SuspectedOrConfirmedCOVID19Diagnoses.url),
```

<span id='fhir-queries'> </span>
#### Filtering Criteria by other resources not included in the initial query
Sometimes the initial query is insufficient to determine if the returned resources qualify
for inclusion in the population, and additional data may be necessary.  This is the "chatty"
part of the protocol, because it can result in a query to test each case not already included,
and is the reason for use of the outer iif() in first part, and in the inner iif() in this
second part of FHIRPath expression.

The first of the two queries identifies patients for whom there is at least one positive
diagnostic test for COVID-19 in the past two weeks.
```
      iif(
         // The patient has at least one laboratory diagnostic test confirming COVID-19 in the past 14 days
          Patient.distinct()
              .whereExists('Observation',
                for('patient', $this),
                with('status').equalTo(
                    'registered' | 'preliminary' | 'final' | 'amended' | 'corrected'),
                with('date').greaterThan(%ReportingPeriod.start - 14 'days'),
                with('code').in(%CovidLabs),
                with('value-concept).in(%PositiveResults)
           ).onServers(%Base),
```

The use of Patient.distinct() ensures that the query is performed ONLY once for each patient for whom their
is an encounter, given that a patient may have multiple encounters on the same day.  It may be omitted if it
can be confirmed to be unneccessary.  However, a single skipped round-trip to perform a query is enough
to make up for the use of the distinct() method.

The `whereExists()` function establishes a limit on the number of results return to 1 using `_count=1` in the
query above. This is because any matching result is sufficient to include the patient in the cohort, and limits the work
of the server performing the query. This is an optimization that functions in some way similar to an EXISTS clause in SQL.

The query next ensures that only Observations with valid status values are returned (e.g., avoiding cancelled or entered-in-error
test results).  This ensures that entered-in-error results aren't counted as positive.

The query is performed on a per patient basis using  [`for('patient', $this)`](fluent_query.html#for), and restricts the
Observations to be only those for the selected the patient resource.  Some FHIR Servers limit the results that can be
returned by a query to ensure that they are only for the given patient. Including this parameter
1. Ensures compatibility with this server restriction criteria, and
2. also ensures that the query does not include the patient when there is a positive result for a different patient.

<span id='two-weeks'> </span>
The query further restricts results to those whose effective time is within a two week time period before the reporting period using
`'&date=gt' + (%ReportingPeriod.start - 14 days)`. This is established to limit results to only clinically relevant tests during a
reasonable time period. The two week time period is arbitrary, and may be changed based on further clinical guidance.

Finally, the query restricts observations to only those matching codes in the [COVID-19 Labs](ValueSet-Covid19Labs.html) value set
where the resulting value is positive using the [Positive Results](ValueSet-PositiveResults.html) value set.
```
         // The patient has at least one condition with confirmed or suspected COVID-19 in the past 14 days
         Patient.distinct().whereExists('Condition',
            for('patient', $this),
            with('verification-status').notEqualTo('refuted'|'entered-in-error').
            with('date').greaterThan(%ReportingPeriod.start - 14 'days'),
            with('code').in(%SuspectedOrConfirmedCOVID19Diagnoses.url)
         ).exists()
     )
```
NOTE: Some lab results may be reported in a panel form using observation.component.code and observation.component.value. To query for lab
results using this form, change code and value-concept in the query above to component-code and component-value-concept respectively. To query
for both, add a third iif() statement which includes both.  It is not included in this example simply for brevity.

The last section of the expression requires some explanation.
```
    .distinct()
    // And remove duplicate encounters for the same patient
    // NOTE! Assumes that encounters are returned in order by most to least recent
    // This assumption holds commonly on many implementations, but may not be true
    // for all cases. In the worst case scenario where it does not, the situation
    // will be corrected in the very next reporting period, where only the most
    // recent encounter will appear.
    .aggregate(
      iif($total.subject contains $this.subject,
          {}, $total | $this
      )
    )
```
The `distinct()` function simply ensures that the list of encounters is unique (no encounter appears twice).
The `aggregate` expression iterates over each encounter, and if the patient in the encounter is already
found in an encounter in the current $total, skips the encounter (because the newest encounter was already added),
otherwise, adds the encounter to the new $total list.

To ensure that this works all of the time, the encounters must be sorted in order by most to least recent, but FHIRPath
lacks a sort() function.

### <a name='measure-alternate-criteria'>Providing an Alternate Evaluation Method for Criteria
Criteria can be specified using different languages to count the results.  The example above shows a criteria element
in FHIRPath. To provide an alternate criterion, add the alternate definition to the criteria element as shown below.
```
 ** with criteria.extension[MeasureAlternateCriteria].valueExpression do
 *** name = "NumC19Pats"  // Note: Follow PascalCase conventions for names
 *** description = """Alternate definition for Active encounters using CQL"""
 *** language = #text/cql
 *** expression = "NumberOfCOVID19Patients"
```

For measures defined in CQL, the language **shall** be text/cql as shown above.
The expression **shall** be the name of the CQL expression in the CQL statement that computes the value for the measure.


### Stratification
The use of different strata for this measure helps with the prioritization of additional resource assignments to assist facilities in need, improves accuracy and provides for error detection and resiliency. The count for the overall population of patients with suspected or confirmed COVID-19 in the hospital) must be equal to the sum counts over each stratum.  This provides for additional opportunity for
error detection by both the sender and the receiver.  It may also help to identify special cases that may not have been included in
the design or logic of the measure or its stratifying criteria.

NOTE: When designing measures for manual implementation, the use of redundant data assigns more work for the users manually collecting and reporting the data.  When measures are automatically computed, the work is being done by computer systems implementing software algorithms. It is very little addition work for the software to do some additional arithmetic, but additional value in providing cross-checks on data accuracy for automated systems.

Strata for this measure are the possible combinations (a cartesian product) of patient location and ventilator status.

Expressions used for stratification return the value by which the measure is stratified for a counted element, thus, one of four values must be returned by the stratification criteria expression. The expressions for stratification are evaluated in the context of the matched
element.  In this first case, that is a patient encounter.

```
 * with group[0].stratifier[0] do
 ** code.text = "By Location and Ventilator Status"
 ** description = "Stratifies the population by Location (inpatient vs ED/Overflow/Other) and Ventilator Status (Ventilated vs Not Ventilated)"
 ** criteria.name = "LocationAndVentStatus"
 ** criteria.language = #text/fhirpath
 ** criteria.expression = """
      iif(%NumVentUse.id contains Encounter.subject,
          iif(Encounter.location.resolve().type.memberOf(%InpatientLocations.url), 'InpVentilated', 'OFVentilated')
          iif(Encounter.location.resolve().type.memberOf(%InpatientLocations.url), 'InpNotVentilated', 'OFNotVentilated')
      )
 """
```
This expression returns one of four values: 'InpVentilated', 'OFVentilated', 'InpNotVentilated', 'OFNotVentilated').
It first determines whether the patient has been ventilated by comparing patients using a ventilator (computed as shown below)
with the subject of this encounter.  While patients on a ventilator is calculated "later" in the measure, the strata for this
group cannot be computed until that computation is finished.

This expression returns one of four values: 'InpVentilated', 'OFVentilated', 'InpNotVentilated', 'OFNotVentilated').
It first determines whether the patient has been ventilated by comparing patients using a ventilator with the subject of this encounter.
`%NumVentUse` is computed as shown in the [ventilators measure group](measure_group_ventilators.html).

While patients on a ventilator is calculated "later" in the measure, the strata for this group cannot be computed until
that computation is finished.  Once that computation has completed, the next step is to compare the type location where
the encounter has occurred with a value set describing inpatient encounter locations.  If that matches, the patient is considered
to be in a normal inpatient location (including the ICU), and if not, an overflow location (such as an ED or other location).

### <a name='service-time-example'/>Enhancing a Queue Length Measure to a Service Time Measure
Any queue length measure can be enhanced to become a service time measure by adding a Duration population
and changing the scoring attribute to service time as shown below.
```
 * with group[0].extension[groupAtts] do
 ** extension[scoring].valueCodeableConcept = http://hl7.org/fhir/uv/saner/CodeSystem/PublicHealthMeasureScoring#queue-length
```
The denominator population named NumC19Pats in this example collects and counts the encounters in which patients have been
admitted.  The expression %NumC19Pats can be used to access this collection of encounters in the definition
of the Period population for this measure as follows:

Provide a code describing the initial population.
```
 * with group[0].population[1] do
 ** with code do
 *** coding = http://hl7.org/fhir/uv/saner/CodeSystem/MeasuredValues#durationC19Pats
 *** coding.display = "Duration of treatment for all COVID-19 Confirmed or Suspected Patients"
 *** coding[1] = http://terminology.hl7.org/CodeSystem/measure-population#duration
 *** text = "Elapsed encounter time for patients with suspected or confirmed COVID-19 in any location."
```

#### Describe the Evaluation Criteria for Duration
Name the criteria and give a description for what qualifies to be included.
```
 ** with criteria do
 *** name = "DurationC19Pats"  // Note: Follow PascalCase conventions for names
 *** description = """Duration of active or completed encounters where the encounter diagnosis is suspected
 or confirmed COVID-19, or a Condition of suspected or confirmed COVID-19 was created during that encounter."""
```

#### Provide the Computable Content
The computable content implements the automated computation of the measure.

```
 *** language = #text/fhirpath
 *** expression = """%NumC19Pats.select(iif(period.end,period.end,%ReportinPeriod.end) - period.start)"""
```

This expression first tests to see if there is an end dateTime reported for the encounter, and if so uses that value,
otherwise it uses the ending dateTime associated with the reporting period. This is because uncompleted encounters
do not yet have an end time associated with the encounter.  Next, it simply computes the duration as that ending value
minus the start dateTime for the encounter. These values are summed, and the evaluated measure is the sum of durations
divided by the sum of time, giving an average time per encounter.

This measure could be further extended by including the duration-squared population to support computation of
service-time variance.