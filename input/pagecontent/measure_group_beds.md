#### Hospital Beds
The "All Hospital Beds" measurement does not include both "available" and "in use" beds, and so would not normally be considered to be a
capacity measurement, however, it is included with other measures that clearly provide an approximation of the in use and available beds.
The Bed Venn Diagram below illustrates stratification of beds such that all desirable capacities can be determined from the measure.

![Bed Venn Diagram](venn2.png)

### Describing the Group

The first step in describing the group is to identify it with a code.  Measure developers will generally
define the codes used for the measure groups they create.

```
 * with group[4].code
 ** coding = MeasureGroupSystem#Beds
 ** coding.display = "Beds"
 ** text = "Bed Reporting"
```
#### Measure Group Attributes
The measure group for Bed Availability has the same attributes as for Ventilator Availability, with the
exception of the subject, which is Beds rather than ventilators.

```
 * with group[4].extension[groupAtts]
 ** extension[scoring].valueCodeableConcept = http://hl7.org/fhir/uv/saner/CodeSystem/PublicHealthMeasureScoring#capacity
 ** extension[type].valueCodeableConcept = http://terminology.hl7.org/CodeSystem/measure-type#structure
 ** extension[improvementNotation].valueCodeableConcept = http://terminology.hl7.org/CodeSystem/measure-improvement-notation#decrease
 ** extension[subject].valueCodeableConcept.coding[ResourceType] = http://hl7.org/fhir/resource-types#Device
 ** extension[subject].valueCodeableConcept.coding[Snomed] = http://snomed.info/sct#91537007 "Hospital Bed"
 ** extension[subject].valueCodeableConcept.text = "Bed capacity"
 ** extension[rateAggregation].valueString = "point-in-time"

### Define each Population
The next step for the bed capacity measure is to define the denominator, numerator and numerator-complement populations:

```
 * with group[4].population[0]
 ** code.coding[0] = http://hl7.org/fhir/uv/saner/CodeSystem/MeasuredValues#numTotBeds "All Hospital Beds"
 ** code.coding[1] = http://terminology.hl7.org/CodeSystem/measure-population#denominator
 ** code.text = "Total number of beds"
 ** description = """
 Total number of all Inpatient and outpatient beds, including all staffed, ICU,
 licensed, and overflow (surge) beds used for inpatients or outpatients"""

 * with group[4].population[1]
 ** code.coding[0] = http://hl7.org/fhir/uv/saner/CodeSystem/MeasuredValues#numTotBedsOcc "Hospital Beds Occupied"
 ** code.coding[1] = http://terminology.hl7.org/CodeSystem/measure-population#numerator
 ** code.text = "Total number of beds in use"
 ** description = "Total number of all Inpatient and outpatient beds that are occupied"

 * with group[4].population[2]
 ** code.coding[0] = http://hl7.org/fhir/uv/saner/CodeSystem/MeasuredValues#numTotBedsAvail "Hospital Beds Available"
 ** code.coding[1] = http://hl7.org/fhir/uv/saner/CodeSystem/MeasurePopulationSystem#numerator-complement
 ** code.text = "Total number of hospital beds available"
 ** description = "Total number of all hospital inpatient and outpatient beds that are available"
```

```
 * with group[4].population[0]
 * criteria.name = "NumTotBeds"
 * criteria.description = """Computes the total number of beds from the previously reported MeasureReport"""
 * criteria.language = #text/fhirpath
 * criteria.expression = "%PriorReport.group[3].population[0].count"
```
#### Describe the Evaluation Criteria
Name the criteria and give a description for what qualifies to to be included.

```
 * criteria.name = "NumTotBedsOcc"
 * criteria.description = """
 Identifies the number of beds in use by counting the most recent location in the
 most recent Encounter for each patient where the encounter
 was in-progress or finished within the period.
   """
 * criteria.language = #text/fhirpath
 * criteria.expression = """
       // Find all active encounters
       findAll('Encounter',
        including('subject','condition','reasonReference'),
        with('status').equalTo('in-progress'),
        with('date').within(%ReportingPeriod)
       ).onServers(%Base)
       // Select the most recent encounter for each location
       // Assumes that encounters are returned in reverse chonological order
       // and that the most recent location is reported first in the list
       // of locations.
       .aggregate(
          iif($total.select(location[0]).location contains $this.location.location.first(),
              {},
              $total | $this
          )
       )
       // NOTE: Aggregate returns a list of both Encounter and Location resources
       // representing beds in use.
       // From Encounter, one can get to both the Patient (via Encounter.subject) and
       // Location resources (via Encounter.location.location).  This enables the result
       // to be stratifed by patient demographics, or location type.
 """
```
```
 * criteria.name = "NumTotBedsAvail"
 * criteria.description = """Computes the number of beds  available by substracting the number of beds in use
 determined by population 1 from the total number of beds given in population 0
 """
 * criteria.language = #text/fhirpath
 * criteria.expression = "%NumTotBeds - %NumTotBedsOcc.count()"
```

Finally, the measure group defines a stratifier to break the measure
down into groups by type of location where the bed is found.
```
 * with group[4].stratifier
 ** code.text = "By Type of Location"
 ** description = "Inpatient Non-ICU, Inpatient ICU, Other"
 ** criteria.description = """
 Determines the location of the encounter based on the membership
 of location.type in the InpatientNonICU and InpatientICU ValueSet resources.
 When location.type is assigned to any other value, it is reported to be Other
 """
 ** criteria.language = #text/fhirpath
 ** criteria.expression = """
    Encounter.location.location.resolve()
    .iif(type.memberOf(%NonICU.memberOf(.url),
        'Inpatient Non-ICU',
        iif (type.memberOf(%ICULocations.url),
             'Inpatient ICU',
             'Other'
        )
    )
"""
```