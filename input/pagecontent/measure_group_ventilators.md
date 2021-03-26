#### Ventilators
When tracking ventilators, many EHR systems may not directly track ventilator devices in the hospital. Ventilator use is indirectly determined in this measure based on the presence of observations that would only be present in the patient chart
when the patient is being ventilated. Direct tracking of ventilator devices and teleemetry is typically the purview of other systems used for asset
management or ICU central monitoring.  The number of ventilator devices is generally known, and does not change frequently, and so implementers may
provide an alternate mechanism (e.g., a defined parameter) to supply this value.  Thus, while this guide provides an expression for identifying
ventilators in this sample measure, more user feedback on how to obtain this value is desired.

### Describing the Group

The first step in describing the group is to identify it with a code.  Measure developers will generally
define the codes used for the measure groups they create.
```
 * with group[3].code do
 ** coding = MeasureGroupSystem#Ventilators
 ** coding.display = "Ventilators"
 ** text = "Ventilator Reporting"
```
#### Measure Group Attributes

Each group must be described by the [Measure Group Attributes](StructureDefinition-MeasureGroupAttributes.html) extension to
further describe the measure group content.

The first step in describing these attributes is to indicate how the measure is scored.  The ventilator measure is
a measure of available and utilized capacity, so the capacity scoring is used.
```
 * with group[3].extension[groupAtts] do
 ** extension[scoring].valueCodeableConcept = http://hl7.org/fhir/uv/saner/CodeSystem/PublicHealthMeasureScoring#capacity
```

Next, the measure describes the type of measure (e.g., structure, process or outcome). This measure is a structural measure,
representing the current ventilator capacity and availability in a hospital.
```
 ** extension[type].valueCodeableConcept = http://terminology.hl7.org/CodeSystem/measure-type#structure
```

An indication of how the scoring system works is then provided (e.g., increase, decrease). The scoring on capacity measures
reports on utilization, so lower numbers are "better", with regard to utilization.
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
 *** valueCodeableConcept.coding[ResourceType] = http://hl7.org/fhir/resource-types#Device
 *** valueCodeableConcept.coding[Snomed] = http://snomed.info/sct#257463002 "Ventilator Outlet"
 *** valueCodeableConcept.text = "Ventilator capacity"
```

NOTE: The coding of this measure reports that it counts ventilator outlets. During the early period of the COVID Epidemic, a facilities
in New York City and elsewhere used a single ventilator to support more than one patient.  In the US, the FDA issued an emergency
use authorization for such use. CDC issued guideance describing the counting of Bi-level Positive Airway Pressure (BiPAP) equipment
when such equipment and procedures were available within the facility.  This guide makes NO recommendation about the appropriateness
of this use, but notes this so that measure developers will consider such cases when creating measures.

Capacity measures are point in time measures.
```
 ** extension[rateAggregation].valueString = "point-in-time"
```

### Define each Population

The population definitions provide both descriptive and computable content for the measure, describing it to the
implementer, and to the system that automates its computation. Capacity measures have three or four populations:
1. An optional initial population from which the other populations are found.
2. The denominator population, which may simply be the initial population (this is the case for ventilators).
3. The numerator population, which usually applies a filter to the initial population.
4. The numerator-complement population, which represents the population in the denomonator not found in the numerator.

The initial population is not used in the Ventilators measure becase it would be the same as the denominator population
so the measure starts with the denominator.

```
 * with group[3].population[0] do
 ** with code do
 *** coding[0] = http://hl7.org/fhir/uv/saner/CodeSystem/MeasuredValues#numVent "Mechanical Ventilators"
 *** coding[1] = http://terminology.hl7.org/CodeSystem/measure-population#denominator
 *** text = "Total number of ventilators"
 ** description = "Count of all ventilators that can support patient care, whether or not they are presently in use."

 * with group[3].population[1] do
 ** with code do
 *** coding[0] = http://hl7.org/fhir/uv/saner/CodeSystem/MeasuredValues#numVentUse "Mechanical Ventilators in Use"
 *** coding[1] = http://terminology.hl7.org/CodeSystem/measure-population#numerator
 *** text = "Total number of ventilators in use"
 ** description = "Count of all ventilators in use."

 * with group[3].population[2] do
 ** with code do
 *** coding[0] = http://hl7.org/fhir/uv/saner/CodeSystem/MeasuredValues#numVentAvail "Mechanical Ventilators Available"
 *** coding[1] = http://hl7.org/fhir/uv/saner/CodeSystem/MeasurePopulationSystem#numerator-complement
 *** text = "Total number of ventilators not presently in use."
 ** description = "Count of all ventilators not presently in use."
```

#### Describe the Evaluation Criteria
Name the criteria and give a description for what qualifies to to be included.

```
 * with group[3].population[0].criteria do
 ** name = "NumVent"
 ** description = """Computes the total number of ventilators from the previously reported MeasureReport"""

 * with group[3].population[1].criteria do
 ** name = "NumVentUse"
 ** description = """Identifies the number of ventilators in use by counting Patient with an Observation
 or Procedure resource from an appropriate value set indicating ventilator use."""

 * with group[3].population[2].criteria do
 ** name = "NumVentAvail"
 ** description = """Computes the number of ventilators available by substracting the number of ventilators in use
 determined by population 1 from thee total number of ventilators given in population 0"""
```

#### Provide the Computable Content
The computable content "implements" the automated computation of the measure.

```
 * with group[3].population[0].criteria do
 ** language = #text/fhirpath
 ** expression = "%PriorReport.group[3].population[0].count"
```
 NOTE: The following population is also important for computing the stratification of an earlier
 [measure group](measure_group_hospital_acquired_covid19_patients.html#stratification) by ventilator
 use.  It's important that what it counts are Patients with an observation or procedure implying
 ventilator use.
```
  * with group[3].population[1].criteria do
 ** language = #text/fhirpath
 ** expression = """
       // Find all active encounters
       findAll('Encounter',
        including('subject'),
        with('status').equalTo('in-progress'|'finished'),
        with('date').within(%ReportingPeriod)
       ).onServers(%Base)
       // Filter to patients
       .select(resource as Patient)
       .where(
         iif(
           whereExists('Observation',
             with('status').equalTo('registered'|'preliminary'|'final'|'amended'|'corrected'),
             with('patient').equalTo($this.id),
             with('verificationStatus').notEqualTo('refuted'|'entered-in-error'),
             with('date').within(%ReportingPeriod),
             with('code').in(%VentilatorObservations.url)
           ).onServers(%Base),
           true,
           whereExists('Procedure',
             with('status').equalTo('in-progress'|'completed'),
             with('patient').equalTo($this.id),
             with('date').within(%ReportingPeriod),
             with('code').in(%VentilatorProcedures.url)
           ).onServers(%Base)
         )
       )
 """

 // Compute ventilators available as total number of ventilators - ventilators in use.
 * with group[3].population[2].criteria do
 ** language = #text/fhirpath
 ** expression = "%NumVent - %NumVentUse.count()"
```
