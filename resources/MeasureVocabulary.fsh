// This sheet convert output to FHIR Shorthand for generating measures.

CodeSystem: Populations
Title: "Population Measure Groups"
Description: "Groups defined by The SANER Project for measure populations"
* #numTotBeds                   "All Hospital Beds" "Total number of all Inpatient and outpatient beds, including all staffed,ICU, licensed, and overflow (surge) beds used for inpatients or outpatients"
* #numBeds                      "Hospital Inpatient Beds" "Inpatient beds, including all staffed, licensed, and overflow (surge) beds used for inpatients"
* #numBedsOcc                   "Hospital Inpatient Bed Occupancy" "Total number of staffed inpatient beds that are occupied"
* #numICUBeds                   "ICU Beds" "Total number of staffed inpatient intensive care unit (ICU) beds"
* #numICUBedsOcc                "ICU Bed Occupancy" "Total number of staffed inpatient ICU beds that are occupied"
* #numVent                      "Mechanical Ventilators" "Total number of ventilators available"
* #numVentUse                   "Mechanical Ventilators in Use" "Total number of ventilators in use"
* #numC19Pats                   "COVID-19 Patients" "Patients with suspected or confirmed COVID-19 in any location."
* #numC19HospPats               "COVID-19 Hospitalized" "Patients currently hospitalized in an inpatient care location who have suspected or confirmed COVID-19"
* #numC19OverflowPats           "COVID-19 ED/Overflow" "Patients with suspected or confirmed COVID-19 who are in the ED or any overflow location awaiting an inpatient bed"
* #numC19HOPats                 "COVID-19 Hospital Onset" "Patients hospitalized in an NHSN inpatient care location with onset of suspected or confirmed COVID-19 14 or more days after hospitalization"
* #numC19VentPats               "COVID-19 Patients on a Ventilator" "Patients in any location who have suspected or confirmed COVID-19 and are on a mechanical ventilator"
* #numC19MechVentPats           "COVID-19 Hospitalized and Ventilated" "Patients hospitalized in an NHSN inpatient care location who have suspected or confirmed COVID-19 and are on a mechanical ventilator"
* #numC19OFMechVentPats         "COVID-19 ED/Overflow and Ventilated" "Patients with suspected or confirmed COVID-19 who are in the ED or any overflow location awaiting an inpatient bed and on a mechanical ventilator"
* #numC19Died                   "COVID-19 Deaths" "Patients with suspected or confirmed COVID-19 who died in the hospital, ED, or any overflow location"
* #totalOrdersIncrease          "New Diagnostic Tests Ordered/Received"
* #totalOrders                  "Cumulative Diagnostic Tests Ordered/Recieved"
* #totalTestResultsIncrease     "New Tests Resulted"
* #rejected                     "Cumulative Specimens Rejected*"
* #totalTestResults             "Cumulative Tests Performed"
* #positiveIncrease             "New Positive COVID-19 Tests"
* #positive                     "Cumulative Positive COVID-19 Tests"
* #positiveIncreasePercent      "Percent Positive among Newly Resulted Tests"
* #positivePercent              "Cumulative Percent Positive among Resulted Tests"
* #allReports                   "All Laboratory Report for any Order"
* #latestReport                 "Most Recent Laboratory Reports for any Order"

ValueSet: BedDeviceTypes
Title: "Bed Device Types"
Description: "Codes used to identify beds"

ValueSet: BedLocationTypes
Title: "Location Types"
Description: "Codes used to locations"

ValueSet:    InpatientLocations
Title:       "Inpatient Locations"
Description: "Codes used for inpatient locations"

ValueSet:    ICULocations
Title:       "ICU Locations"
Description: "Codes used for ICU locations"

ValueSet:    EDorOverflowLocations
Title:       "ED or Overflow Locations"
Description: "Codes used for ED or Overflow locations"

ValueSet:    OccupiedBed
Title:       "Occupied Bed"
Description: "Codes used Occupied Beds"

ValueSet:    VentilatorDevices
Title:       "Ventilator Devices"
Description: "Codes used for Ventilator Devices"

ValueSet:    VentilatorDevicesWithTracheostomy
Title:       "Devices used for Ventilation with Tracheostomy"
Description: "Codes used for Devices that support Ventilation with a Tracheostomy"

ValueSet:    SuspectedOrDiagnosedCOVID19
Title:       "Suspected Or Diagnosed COVID-19"
Description: "Coded identifying suspected or confirmed COVID-19"

ValueSet:    PatientDied
Title:       "Patient Died"
Description: "Codes used to identify that a patient has died"

ValueSet:    COVID19DiagnosticTest
Title:       "COVID-19 Diagnostic Test"
Description: "Codes for COVID-19 Diagnostic Tests"

ValueSet:    ConfirmedCOVID19Diagnosis
Title:       "Confirmed COVID-19 Diagnosis"
Description: "Codes confirming COVID-19 Diagnostic Test Result"

ValueSet:    ConfirmedCOVID19DiagnosisValues
Title:       "Confirmed COVID-19 Diagnosis Values"
Description: "Codes for result values confirming COVID-19 Diagnostic Test Result"
