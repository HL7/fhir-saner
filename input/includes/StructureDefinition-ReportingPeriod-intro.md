This Implementation Guide defines an exenstion supporting the definition of a recommended reporting period for a measure using the
[Timing](https://www.hl7.org/fhir/datatypes.html#Timing) data type.  Specifying the reporting period enables systems to schedule automated reporting activities.


### Specifying the frequncy and period for Measure Reporting
1. The timing ***shall** contain one repeat describing the reporting frequency and period, more than one repeat component is not necessary for
almost all cases of measures reported for COVID-19 to date.
2. The repeat.frequency **shall** be one, so that the Timing value simply indicates the duration of the reporting period (e.g., every 8 hours, every day, every week).
3. The base period for reporting **shall** be specified (e.g., daily, weekly, monthly) in [repeat.periodUnit](https://www.hl7.org/fhir/datatypes-definitions.html#Timing.repeat.periodUnit).
4. The number of periods to include **shall** be specified [repeat.period](https://www.hl7.org/fhir/datatypes-definitions.html#Timing.repeat.period).
5. The value of repeat.boundsPeriod.start **may** be specified to indicate the offset.

### Specifying the days of week or time of day for reporting
1. The starting time for the reporting period with a period of 1 day or larger **shall** be midnight local time unless otherwise specified.
2. The starting time offset or day for reporting period **may** be specified in [boundsPeriod.start](https://www.hl7.org/fhir/datatypes-definitions.html#Timing.repeat.boundsPeriod)
   to indicate the offset hour, day of week or day of month.


### Examples
See the [CDC Patient Impact and Hospital Capacity example Measure](Measure-CDCPatientImpactAndHospitalCapacity.json.html) for an example use of this extension in a resource.

The example below illustrates a measure with a reporting period of one report provided every one day for data as of midnight.
```
   "extension": [
     {
       "url": "http://hl7.org/fhir/uv/saner/StructureDefinition/ReportingPeriod",
       "valueTiming": {
         "repeat": {
           "frequency": 1,    // one report
           "period": 1,       // every one
           "periodUnit": "d", //          day
           "boundsPeriod": {
             "start":  "2020-09-01T00:00:00"  // reported starting on midnight 9/1/2020
           }
         }
       }
     }
   ]
```

The example below illustrates a measure with a reporting period every 8 hours (i.e., three reports per day) for data as of 2am, 10am and 6pm.

```
   "extension": [
     {
       "url": "http://hl7.org/fhir/uv/saner/StructureDefinition/ReportingPeriod",
       "valueTiming": {
         "repeat": {
           "frequency": 1,    // one report
           "period": 8,       // every eight
           "periodUnit": "h", //          hours
           "boundsPeriod": {
             "start":  "2020-09-01T02:00:00"  // reported starting on 2am as of 9/1/2020
           }
         }
       }
     }
   ]
```

The example below illustrates a measure with a reporting period of once a week on Monday 8/31/2020 at midnight

```
   "extension": [
     {
       "url": "http://hl7.org/fhir/uv/saner/StructureDefinition/ReportingPeriod",
       "valueTiming": {
         "repeat": {
           "frequency": 1,    // one report
           "period": 1,       // every one
           "periodUnit": "w", //          week
           "boundsPeriod": {
             "start":  "2020-08-31T00:00:00"  // reported starting on 8/31/2020 at midnight
           }
         }
       }
     }
   ]
```
