Measure report data can come from multiple systems within a facility.  For example, the CDC/NHSN Patient Impact
and Hospital Capacity Module asks for the following data elements:

1. **Patient Impact**
   1. Hospitalized Patients w/ COVID-19
   2. Hospitalized and Ventilated Patients w/ COVID-19
   3. Patients with Hospital Onset of COVID-19
   4. Patients in ED/Overflow w/ COVID-19
   5. Ventilated Patients in ED/Overflow w/ COVID-19
   6. Patient Deaths due to COVID-19
2. **Hospital Bed/ Intensive Care Unit (ICU)/ Ventilator Capacity**
   1. Total number of available (inpatient and outpatient) beds
   2. Total Acute staffed beds
   3. Total Occupied Beds
   4. Total ICU Beds
   5. Total Occupied ICU Beds
   6. Total Ventilators
   7. Total Ventilators in Use


These data elements are often not available through a single system. For example, an
[ICU/Central Monitoring System](technical_environment.html#icucentral-monitoring-systems) might
have knowledge of 1.2,5 and 2.4-7 above, while the
[Bed Management System](technical_environment.html#bed-management-aka-housekeeping-systems) could report
on 2.1-3, the Hospital's [EHR](technical_environment.html#ehr-systems) is aware of 1.1, 1.3 and 1.6, and the
[Emergency Department system](technical_environment.html#emergency-department-systems) can provide
an update on 1-4.

In order to  automate capture of this information, a central reporting system (e.g., a FHIR Server) can be made
available to accept partial reports for data.  This data can then be aggregated from reports made by the various
information systems, and forwarded to a public endpoint for reporting.