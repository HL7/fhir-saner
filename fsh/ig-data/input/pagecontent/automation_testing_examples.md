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
  Hospital Capacity module,

### Test Case 1a:  Admission date =Today (T) w/ outcome = No
[Condition for Test Case 1a](Condition-Condition1a.html)<br/>
[Encounter for Test Case 1a](Encounter-Encounter1a.html)<br/>
[Observation-1 for Test Case 1a](Observation-Observation11a.html)<br/>
[Patient for Test Case 1a](Patient-Patient1a.html)<br/>
[Location for Test Case 1a](Location-Location1a.html)<br/>
[MedicationRequest for Test Case 1a](MedicationRequest-MedicationRequest11a.html)<br/>

### Test Case 1b:  Admission date =T-1 w/ outcome = Yes/No
[Condition for Test Case 1b](Condition-Condition1b.html)<br/>
[Encounter for Test Case 1b](Encounter-Encounter1b.html)<br/>
[Observation-1 for Test Case 1b](Observation-Observation11b.html)<br/>
[Patient for Test Case 1b](Patient-Patient1b.html)<br/>
[Location for Test Case 1b](Location-Location1b.html)<br/>
[MedicationRequest for Test Case 1b](MedicationRequest-MedicationRequest11b.html)<br/>

### Test Case 1c:  Admission date =T-2 w/ outcome = No
[Condition for Test Case 1c](Condition-Condition1c.html)<br/>
[Encounter for Test Case 1c](Encounter-Encounter1c.html)<br/>
[Immunization for Test Case 1c](Immunization-Immunization11c.html)<br/>
[Observation-1 for Test Case 1c](Observation-Observation11c.html)<br/>
[Observation-3 for Test Case 1c](Observation-Observation31c.html)<br/>
[Observation-4 for Test Case 1c](Observation-Observation41c.html)<br/>
[Patient for Test Case 1c](Patient-Patient1c.html)<br/>
[Location for Test Case 1c](Location-Location1c.html)<br/>

### Test Case 2a:  Positive test result w/ outcome = Yes/No
[Condition for Test Case 2a](Condition-Condition2a.html)<br/>
[Encounter for Test Case 2a](Encounter-Encounter2a.html)<br/>
[Immunization for Test Case 2a](Immunization-Immunization12a.html)<br/>
[Observation-1 for Test Case 2a](Observation-Observation12a.html)<br/>
[Patient for Test Case 2a](Patient-Patient2a.html)<br/>
[Location for Test Case 2a](Location-Location2a.html)<br/>

### Test Case 2b:  Negative test result w/ outcome = No
[Condition for Test Case 2b](Condition-Condition2b.html)<br/>
[Encounter for Test Case 2b](Encounter-Encounter2b.html)<br/>
[Immunization for Test Case 2b](Immunization-Immunization12b.html)<br/>
[Observation-1 for Test Case 2b](Observation-Observation12b.html)<br/>
[Observation-4 for Test Case 2b](Observation-Observation42b.html)<br/>
[Patient for Test Case 2b](Patient-Patient2b.html)<br/>
[Location for Test Case 2b](Location-Location2b.html)<br/>
[MedicationRequest for Test Case 2b](MedicationRequest-MedicationRequest12b.html)<br/>

### Test Case 2c:  Negative test followed by Positive w/ outcome = Yes
[Condition-1 for Test Case 2c](Condition-Condition12c.html)<br/>
[Condition-2 for Test Case 2c](Condition-Condition22c.html)<br/>
[Encounter for Test Case 2c](Encounter-Encounter2c.html)<br/>
[Immunization for Test Case 2c](Immunization-Immunization12c.html)<br/>
[Observation-1 for Test Case 2c](Observation-Observation12c.html)<br/>
[Observation-2 for Test Case 2c](Observation-Observation22c.html)<br/>
[Observation-3 for Test Case 2c](Observation-Observation32c.html)<br/>
[Patient for Test Case 2c](Patient-Patient2c.html)<br/>
[Location for Test Case 2c](Location-Location2c.html)<br/>
[MedicationRequest for Test Case 2c](MedicationRequest-MedicationRequest12c.html)<br/>

### Test Case 3a:  Neither Adm diagnosis or Problem list doument COVID w/ outcome = No
[Encounter for Test Case 3a](Encounter-Encounter3a.html)<br/>
[Observation-1 for Test Case 3a](Observation-Observation13a.html)<br/>
[Observation-4 for Test Case 3a](Observation-Observation43a.html)<br/>
[Patient for Test Case 3a](Patient-Patient3a.html)<br/>
[Location for Test Case 3a](Location-Location3a.html)<br/>
[MedicationRequest for Test Case 3a](MedicationRequest-MedicationRequest13a.html)<br/>

### Test Case 3b:  Adm diagnosis documents COVID but problem list does not w/ outcome = Yes
[Condition for Test Case 3b](Condition-Condition3b.html)<br/>
[Encounter for Test Case 3b](Encounter-Encounter3b.html)<br/>
[Observation-1 for Test Case 3b](Observation-Observation13b.html)<br/>
[Observation-3 for Test Case 3b](Observation-Observation33b.html)<br/>
[Patient for Test Case 3b](Patient-Patient3b.html)<br/>
[Location for Test Case 3b](Location-Location3b.html)<br/>

### Test Case 4a:  T-1 w/ outcome = Yes
[Encounter for Test Case 4a](Encounter-Encounter4a.html)<br/>
[Observation-1 for Test Case 4a](Observation-Observation14a.html)<br/>
[Observation-3 for Test Case 4a](Observation-Observation34a.html)<br/>
[Patient for Test Case 4a](Patient-Patient4a.html)<br/>
[Location for Test Case 4a](Location-Location4a.html)<br/>

### Test Case 4b:  T-15 w/ outcome = No
[Condition for Test Case 4b](Condition-Condition4b.html)<br/>
[Encounter for Test Case 4b](Encounter-Encounter4b.html)<br/>
[Observation-1 for Test Case 4b](Observation-Observation14b.html)<br/>
[Observation-3 for Test Case 4b](Observation-Observation34b.html)<br/>
[Patient for Test Case 4b](Patient-Patient4b.html)<br/>
[Location for Test Case 4b](Location-Location4b.html)<br/>
[MedicationRequest for Test Case 4b](MedicationRequest-MedicationRequest14b.html)<br/>

### Test Case 4c:  T w/ outcome = No
[Condition for Test Case 4c](Condition-Condition4c.html)<br/>
[Encounter for Test Case 4c](Encounter-Encounter4c.html)<br/>
[Observation-1 for Test Case 4c](Observation-Observation14c.html)<br/>
[Observation-3 for Test Case 4c](Observation-Observation34c.html)<br/>
[Patient for Test Case 4c](Patient-Patient4c.html)<br/>
[Location for Test Case 4c](Location-Location4c.html)<br/>
[MedicationRequest for Test Case 4c](MedicationRequest-MedicationRequest14c.html)<br/>

### Test Case 5a:  Only positive collected today w/ outcome = Yes
[Condition for Test Case 5a](Condition-Condition5a.html)<br/>
[Encounter for Test Case 5a](Encounter-Encounter5a.html)<br/>
[Observation-1 for Test Case 5a](Observation-Observation15a.html)<br/>
[Patient for Test Case 5a](Patient-Patient5a.html)<br/>
[Location for Test Case 5a](Location-Location5a.html)<br/>
[MedicationRequest for Test Case 5a](MedicationRequest-MedicationRequest15a.html)<br/>

### Test Case 5b:  Only positive collected T-1 w/ outcome = No
[Encounter for Test Case 5b](Encounter-Encounter5b.html)<br/>
[Observation-1 for Test Case 5b](Observation-Observation15b.html)<br/>
[Patient for Test Case 5b](Patient-Patient5b.html)<br/>
[Location for Test Case 5b](Location-Location5b.html)<br/>
[MedicationRequest for Test Case 5b](MedicationRequest-MedicationRequest15b.html)<br/>

### Test Case 5c:  Positives collected T-13 and T w/ outcome = No
[Condition for Test Case 5c](Condition-Condition5c.html)<br/>
[Encounter for Test Case 5c](Encounter-Encounter5c.html)<br/>
[Observation-1 for Test Case 5c](Observation-Observation15c.html)<br/>
[Patient for Test Case 5c](Patient-Patient5c.html)<br/>
[Location for Test Case 5c](Location-Location5c.html)<br/>

### Test Case 6a:  Ventilator (intubation) start date = T-1 and no stop (extubation) date w/ outcome = Yes
[Condition for Test Case 6a](Condition-Condition6a.html)<br/>
[Encounter for Test Case 6a](Encounter-Encounter6a.html)<br/>
[Observation-1 for Test Case 6a](Observation-Observation16a.html)<br/>
[Observation-3 for Test Case 6a](Observation-Observation36a.html)<br/>
[Patient for Test Case 6a](Patient-Patient6a.html)<br/>
[Location for Test Case 6a](Location-Location6a.html)<br/>

### Test Case 6b:  Ventilator (intubation)start date = T-3 and stop (extubation) date = T w/ outcome = Yes
[Encounter for Test Case 6b](Encounter-Encounter6b.html)<br/>
[Observation-1 for Test Case 6b](Observation-Observation16b.html)<br/>
[Observation-3 for Test Case 6b](Observation-Observation36b.html)<br/>
[Observation-4 for Test Case 6b](Observation-Observation46b.html)<br/>
[Patient for Test Case 6b](Patient-Patient6b.html)<br/>
[Location for Test Case 6b](Location-Location6b.html)<br/>
[MedicationRequest for Test Case 6b](MedicationRequest-MedicationRequest16b.html)<br/>

### Test Case 6c:  Ventilator (intubation) start date = T-6 and stop date (extubation) =T-1 w/ outcome = No
[Condition for Test Case 6c](Condition-Condition6c.html)<br/>
[Encounter for Test Case 6c](Encounter-Encounter6c.html)<br/>
[Immunization for Test Case 6c](Immunization-Immunization16c.html)<br/>
[Observation-1 for Test Case 6c](Observation-Observation16c.html)<br/>
[Observation-3 for Test Case 6c](Observation-Observation36c.html)<br/>
[Observation-4 for Test Case 6c](Observation-Observation46c.html)<br/>
[Patient for Test Case 6c](Patient-Patient6c.html)<br/>
[Location for Test Case 6c](Location-Location6c.html)<br/>
[MedicationRequest for Test Case 6c](MedicationRequest-MedicationRequest16c.html)<br/>

### Test Case 7a:  No w/ outcome = No
[Condition for Test Case 7a](Condition-Condition7a.html)<br/>
[Encounter for Test Case 7a](Encounter-Encounter7a.html)<br/>
[Observation-1 for Test Case 7a](Observation-Observation17a.html)<br/>
[Observation-3 for Test Case 7a](Observation-Observation37a.html)<br/>
[Observation-4 for Test Case 7a](Observation-Observation47a.html)<br/>
[Patient for Test Case 7a](Patient-Patient7a.html)<br/>
[Location for Test Case 7a](Location-Location7a.html)<br/>
[MedicationRequest for Test Case 7a](MedicationRequest-MedicationRequest17a.html)<br/>

### Test Case 7b:  Yes w/ outcome = Yes
[Condition for Test Case 7b](Condition-Condition7b.html)<br/>
[Encounter for Test Case 7b](Encounter-Encounter7b.html)<br/>
[Observation-1 for Test Case 7b](Observation-Observation17b.html)<br/>
[Patient for Test Case 7b](Patient-Patient7b.html)<br/>
[Location for Test Case 7b](Location-Location7b.html)<br/>
[MedicationRequest for Test Case 7b](MedicationRequest-MedicationRequest17b.html)<br/>

### Test Case 8a:  No w/ outcome = No
[Condition for 8a](Condition-Condition8a.html)<br/>
[Encounter for Test Case 8a](Encounter-Encounter8a.html)<br/>
[Observation-1 for Test Case 8a](Observation-Observation18a.html)<br/>
[Patient for Test Case 8a](Patient-Patient8a.html)<br/>
[Location for Test Case 8a](Location-Location8a.html)<br/>
[MedicationRequest for Test Case 8a](MedicationRequest-MedicationRequest18a.html)<br/>

### Test Case 8b:  Yes w/ outcome = Yes
[Encounter for Test Case 8b](Encounter-Encounter8b.html)<br/>
[Observation-1 for Test Case 8b](Observation-Observation18b.html)<br/>
[Patient for Test Case 8b](Patient-Patient8b.html)<br/>
[Location for Test Case 8b](Location-Location8b.html)<br/>
[MedicationRequest for Test Case 8b](MedicationRequest-MedicationRequest18b.html)<br/>

### Test Case 8c:  Yes w/ outcome = Yes
[Encounter for Test Case 8c](Encounter-Encounter8c.html)<br/>
[Observation-1 for Test Case 8c](Observation-Observation18c.html)<br/>
[Observation-3 for Test Case 8c](Observation-Observation38c.html)<br/>
[Observation-4 for Test Case 8c](Observation-Observation48c.html)<br/>
[Patient for Test Case 8c](Patient-Patient8c.html)<br/>
[Location for Test Case 8c](Location-Location8c.html)<br/>
[MedicationRequest for Test Case 8c](MedicationRequest-MedicationRequest18c.html)<br/>

### Test Case 9a:  Diagnosis of Suspected COVID-19 WITHOUT positive viral test w/ outcome = Yes
[Condition for Test Case 9a](Condition-Condition9a.html)<br/>
[Encounter for Test Case 9a](Encounter-Encounter9a.html)<br/>
[Immunization for Immunization1-9a](Immunization-Immunization19a.html)<br/>
[Patient for Test Case 9a](Patient-Patient9a.html)<br/>
[Location for Test Case 9a](Location-Location9a.html)<br/>

### Test Case 9b:  No Diagnosis of Suspected COVID-19 nor positive viral test w/ outcome = No
[Condition for Test Case 9b](Condition-Condition9b.html)<br/>
[Encounter for Test Case 9b](Encounter-Encounter9b.html)<br/>
[Immunization for Test Case 9b](Immunization-Immunization19b.html)<br/>
[Observation-4 for Test Case 9b](Observation-Observation49b.html)<br/>
[Patient for Test Case 9b](Patient-Patient9b.html)<br/>
[Location for Test Case 9b](Location-Location9b.html)<br/>

### Test Case 9c:  Diagnosis of Suspected COVID-19 AND ALSO positive viral test w/ outcome = No
[Condition for Test Case 9c](Condition-Condition9c.html)<br/>
[Encounter for Test Case 9c](Encounter-Encounter9c.html)<br/>
[Observation-1 for Test Case 9c](Observation-Observation19c.html)<br/>
[Observation-3 for Test Case 9c](Observation-Observation39c.html)<br/>
[Patient for Test Case 9c](Patient-Patient9c.html)<br/>
[Location for Test Case 9c](Location-Location9c.html)<br/>
[MedicationRequest for Test Case 9c](MedicationRequest-MedicationRequest19c.html)<br/>


