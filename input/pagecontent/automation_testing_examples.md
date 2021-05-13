Test data for the Automation Test Data Set includes a Measure, Location, and Organization resources for
a single facility, and test data representing two days of patient activity for a small group of test
cases, designed to illustrate the capability of the automated system to distinguish the difference
between cases to be included or excluded from the measure.

### Automation Test Data

The test data were developed with the following questions in mind. Using data gathered electronically from an EHR:

* Can it accurately and consistently be discerned that an inpatient with COVID-19 was admitted on the previous day?
* Can it accurately and consistently be discerned that an inpatient had a positive viral laboratory result for SARS-Co-V-2, the organisms causing COVID-19? Likewise can it accurately and consistently be discerned when they did not?
* Can it accurately and consistently be discerned if a patient is suspected of COVID-19 by ICD-10-CM / SNOMED CT diagnosis or problem list codes in the absence of a positive laboratory test for SARS-Co-V-2, the organisms causing COVID-19? Likewise can it accurately and consistently be discerned when they did not?
* Can it accurately and consistently be determined that a patient has had a specimen collected in the previous 14 days that was positive for SARS-Co-V-2, the organisms causing COVID-19? The scenarios tested will include those where specimens were collected prior to admission. Likewise can it accurately and consistently be discerned when they did not?
* Can it accurately and consistently be determined that the only prior positive viral laboratory result for SARS-Co-V-2, the organisms causing COVID-19 was collected on the day of Connectathon?
* Can it be identified accurately and consistently that an inpatient’s location is or is not an intensive care unit?
* Can it accurately and consistently be determined that a patient is located in the Emergency Department at the time of Connectathon, or that patient is not?
* Can it accurately and consistently be determined that a patient was on a mechanical ventilator on the day of Connectathon, or that he was not?

This data can be be used to prepopulate a FHIR Server to support test cases for the Measure Computer Actor.

### Predefined Measure for the Automation Test Data Set
This implementation guide includes a sample measure describing the measurements that were required to be reported
to CDC/NHSN earlier this year for Patient Impact and Hospital Capacity.  It is similar to the measure provided
for the [hospital capacity examples](hospital_capacity_examples.html), but includes the necessary features to
automate computation from data available via a FHIR Server.

* [Computable CDC/NHSN Patient Impact and Hospital Capacity Reporting Measures](Measure-ComputableCDCPatientImpactAndHospitalCapacity.html)
  defines a computable measure that is aligned with the reporting previously required by the
  [National Healthcare Safety Network (CDC/NHSN)](https://www.cdc.gov/nhsn/index.html) using the COVID-19 Patient Impact and
  Hospital Capacity module.

Test data for the set can be found at https://github.com/HL7/fhir-saner/tree/master/testcasedata
