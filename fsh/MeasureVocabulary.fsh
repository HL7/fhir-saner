// This sheet convert output to FHIR Shorthand for generating measures.
Alias: $Base = http://hl7.org/fhir/us/saner

CodeSystem: MeasurePopulationSystem
Title: "Measure Population System"
Description: "A Code System for Populations defined by The SANER Project"
* #numTotBeds                   "All Hospital Beds" "Total number of all Inpatient and outpatient beds, including all staffed,ICU, licensed, and overflow (surge) beds used for inpatients or outpatients"
* #numBeds                      "Hospital Inpatient Beds" "Inpatient beds, including all staffed, licensed, and overflow (surge) beds used for inpatients"
* #numBedsOcc                   "Hospital Inpatient Bed Occupancy" "Total number of staffed inpatient beds that are occupied"
* #numICUBeds                   "ICU Beds" "Total number of staffed inpatient intensive care unit (ICU) beds"
* #numICUBedsOcc                "ICU Bed Occupancy" "Total number of staffed inpatient ICU beds that are occupied"
* #numVent                      "Mechanical Ventilators" "Total number of ventilators available"
* #numVentUse                   "Mechanical Ventilators in Use" "Total number of ventilators in use"
* #numC19Pats                   "All COVID-19 Confirmed or Suspected Patients" "Patients with suspected or confirmed COVID-19 in any location."
* #numC19HospPats               "Hospitalized COVID-19 Patients" "Patients currently hospitalized in an inpatient care location who have suspected or confirmed COVID-19"
* #numC19OverflowPats           "ED/Overflow COVID-19 Patients" "Patients with suspected or confirmed COVID-19 who are in the ED or any overflow location awaiting an inpatient bed"
* #numC19HOPats                 "Hospital Onset COVID-19 Patients" "Patients hospitalized in an NHSN inpatient care location with onset of suspected or confirmed COVID-19 14 or more days after hospitalization"
* #numC19VentPats               "Ventilated COVID-19 Patients" "Patients in any location who have suspected or confirmed COVID-19 and are on a mechanical ventilator"
* #numC19MechVentPats           "Hospitalized and Ventilated COVID-19 Patients" "Patients hospitalized in an NHSN inpatient care location who have suspected or confirmed COVID-19 and are on a mechanical ventilator"
* #numC19OFMechVentPats         "ED/Overflow and Ventilated COVID-19 Patients" "Patients with suspected or confirmed COVID-19 who are in the ED or any overflow location awaiting an inpatient bed and on a mechanical ventilator"
* #numC19Died                   "COVID-19 Patient Deaths" "Patients with suspected or confirmed COVID-19 who died in the hospital, ED, or any overflow location"
* #totalOrdersIncrease          "New Diagnostic Tests Ordered/Received"
* #totalOrders                  "Cumulative Diagnostic Tests Ordered/Received"
* #totalTestResultsIncrease     "New Tests Resulted"
* #rejected                     "Cumulative Specimens Rejected"
* #totalTestResults             "Cumulative Tests Performed"
* #positiveIncrease             "New Positive COVID-19 Tests"
* #positive                     "Cumulative Positive COVID-19 Tests"
* #allReports                   "All Laboratory Reports for any Order"
* #latestReports                "Most Recent Laboratory Reports for any Order"

 * #ventsupply "Ventilator supplies (any, including tubing)"
 * #ventreuse "Ventilator supplies (any, including tubing)"
 * #ventobtain "Ventilator supplies (any, including tubing)"
 * #n95masksupply "N95 masks"
 * #n95maskreuse "N95 masks"
 * #n95maskobtain "N95 masks"
 * #othrespsupply "Other respirators including PAPRs"
 * #othrespreuse "Other respirators including PAPRs"
 * #othrespobtain "Other respirators including PAPRs"
 * #surgmasksupply "Surgical masks"
 * #surgmaskreuse "Surgical masks"
 * #surgmaskobtain "Surgical masks"
 * #shieldsupply "Eye protection including face shields or goggles"
 * #shieldreuse "Eye protection including face shields or goggles"
 * #shieldobtain "Eye protection including face shields or goggles"
 * #gownsupply "Gowns (single use)"
 * #gownreuse "Gowns (single use)"
 * #gownobtain "Gowns (single use)"
 * #glovesupply "Gloves"
 * #glovereuse "Gloves"
 * #gloveobtain "Gloves"


CodeSystem: MeasureGroupSystem
Title: "Measure Group System"
Description: "A Code System for Groups defined by The SANER Project"
* #Beds             "Beds" ""
* #Ventilators      "Ventilators" ""
* #Encounters       "Encounters" ""
* #VentilatorSupplies "Ventilator supplies (any, including tubing)"
* #N95Masks "N95 masks"
* #OtherRespirators "Other respirators including PAPRs"
* #SurgicalMasks "Surgical masks"
* #EyeProtection "Eye protection including face shields or goggles"
* #Gown "Gowns (single use)"
* #Glove "Gloves"
* #positiveIncreasePercent "Percent Positive among Newly Resulted Tests"
* #positivePercent         "Cumulative Percent Positive among Resulted Tests"

ValueSet: MeasureGroups
Title: "Measure Groups"
Description: "Measure Groups defined by the SANER Project"
* codes from system MeasureGroupSystem

ValueSet: MeasurePopulations
Title: "Measure Populations"
Description: "Measure Populations defined by The SANER Project"
* codes from system MeasurePopulationSystem

CodeSystem: BooleanAggregation
 * #true "Count of 'Yes' or 'True' responses for this field"
 * #false "Count of 'No' or 'False' responses for this field"

ValueSet: MeasureStatus
Title: "Measure Status Values"
Description: "Allowed Status Values for Saner Measures"
* http://hl7.org/fhir/publication-status#active
* http://hl7.org/fhir/publication-status#draft
* http://hl7.org/fhir/publication-status#retired

CodeSystem: MeasureRateAggregation
Title: "Measure Rate Aggregation Coding System"
Description: "This Coding System Identifies methods of rate aggregation"
* #aggregable-by-period "Aggregable" "Rates can be accumulated over consecutive periods"
* #point-in-time "Point in Time" "Rates are point in time measures during the reporting period"
* #cumulative "Cumulative" "Rates are point in time measures showing cumulative values over all reporting periods"

ValueSet: MeasureRateAggregationValues
Title: "Measure Rate Aggregation Value Set"
Description: "This Value Set Identifies methods of rate aggregation"
* codes from system MeasureRateAggregation


ValueSet: BedLocationTypes
Title: "Bed Location Types"
Description: "Codes used to identify types of service locations for beds"

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
Description: "Codes used for Occupied Beds"

ValueSet:    VentilatorDevices
Title:       "Ventilator Devices"
Description: "Codes used for Ventilator Devices"

ValueSet:    VentilatorDevicesWithTracheostomy
Title:       "Ventilator Devices when used with Tracheostomy"
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
