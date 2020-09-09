// This sheet convert output to FHIR Shorthand for generating measures.
Alias: $Base = http://hl7.org/fhir/us/saner


CodeSystem:   PublicHealthMeasureScoring
Title: "Public Health Measure Scoring"
Description: "A code system describing types of measure scoring used for situational awareness measures"
* #capacity     "Capacity"  "Measures point in time capacity or utilization"
* #event-growth "Event Growth" "Measures cumulative growth by counting current and cumulative events over time"
* #queue-length "Queue Length" "Measures the point in time number of activities awaiting completion"
* #service-time "Service Time" "Measures the aggregate total time to complete activities / total number of activities"
* #availability "Availability" "Measures the point in time availability of resources"

CodeSystem: MeasurePopulationSystem
Title: "Situationa Awareness Measure Populations"
Description: "A Code System for Situation Awareness Measure Populations defined by The SANER Project"
* #numerator-complement "Numerator Complement"  "Like a numerator, but expresses that part of the Denominator not present in the Numerator"
* #duration             "Duration"              "A Time Duration"
* #duration-squared     "Duration Squared"      "The square of the time duration, useful for identifying variance"
* #supporting           "Supporting"            "A population supporting computation, but not needed for reporting"

CodeSystem: MeasuredValues
Title: "Measured Values in Sample Measures"
Description: "A Code System for Populations in Sample Measures defined by The SANER Project"
* #numTotBeds                   "All Hospital Beds" "Total number of all Inpatient and outpatient beds, including all staffed,ICU, licensed, and overflow (surge) beds used for inpatients or outpatients"
* #numTotBedsOcc                "Hospital Beds Occupied" "Total number of all Inpatient and outpatient beds that are occupied"
* #numTotBedsAvail              "Hospital Beds Available" "Total number of all Inpatient and outpatient beds that are available"
* #numbeds                      "Hospital Inpatient Beds" "Inpatient beds, including all staffed, licensed, and overflow (surge) beds used for inpatients"
* #numBedsOcc                   "Hospital Inpatient Bed Occupancy" "Total number of staffed inpatient beds that are occupied"
* #numICUBeds                   "ICU Beds" "Total number of staffed inpatient intensive care unit (ICU) beds"
* #numICUBedsOcc                "ICU Bed Occupancy" "Total number of staffed inpatient ICU beds that are occupied"
* #numICUBedsAvail              "ICU Bed Availability" "Total number of staffed inpatient ICU beds that are available"
* #numImpBeds                   "Inpatient (non-ICU) Beds" "Total number of staffed inpatient non-ICU beds"
* #numImpBedsOcc                "Inpatient (non-ICU) Bed Occupancy" "Total number of staffed inpatient non-ICU beds that are occupied"
* #numImpBedsAvail              "Inpatient (non-ICU) Bed Availability" "Total number of staffed inpatient non-ICU beds that are available"
* #numAmbBeds                   "Ambulatory Beds" "Total number of staffed ambulatory beds"
* #numAmbBedsOcc                "Ambulatory Bed Occupancy" "Total number of staffed ambulatory beds that are occupied"
* #numAmbBedsAvail              "Ambulatory Bed Availability" "Total number of staffed ambulatory beds that are available"
* #numVent                      "Mechanical Ventilators" "Total number of ventilators available"
* #numVentUse                   "Mechanical Ventilators in Use" "Total number of ventilators in use"
* #numVentAvail                 "Mechanical Ventilators Available" "Total number of ventilators available"
* #numC19Pats                   "All COVID-19 Confirmed or Suspected Patients" "Patients with suspected or confirmed COVID-19 in any location."
* #numC19HospPats               "Hospitalized COVID-19 Patients" "Patients currently hospitalized in an inpatient care location who have suspected or confirmed COVID-19"
* #numC19OverflowPats           "ED/Overflow COVID-19 Patients" "Patients with suspected or confirmed COVID-19 who are in the ED or any overflow location awaiting an inpatient bed"
* #numC19HOPats                 "Hospital Onset COVID-19 Patients" "Patients hospitalized in an NHSN inpatient care location with onset of suspected or confirmed COVID-19 14 or more days after hospitalization"
* #cumC19HOPats                 "Cumulative Hospital Onset COVID-19 Patients" "Cumulative total of patients hospitalized in an NHSN inpatient care location with onset of suspected or confirmed COVID-19 14 or more days after hospitalization"
* #numC19VentPats               "Ventilated COVID-19 Patients" "Patients in any location who have suspected or confirmed COVID-19 and are on a mechanical ventilator"
* #numC19MechVentPats           "Hospitalized and Ventilated COVID-19 Patients" "Patients hospitalized in an NHSN inpatient care location who have suspected or confirmed COVID-19 and are on a mechanical ventilator"
* #numC19OFMechVentPats         "ED/Overflow and Ventilated COVID-19 Patients" "Patients with suspected or confirmed COVID-19 who are in the ED or any overflow location awaiting an inpatient bed and on a mechanical ventilator"
* #numC19Died                   "COVID-19 Patient Deaths" "Patients with suspected or confirmed COVID-19 who died in the hospital, ED, or any overflow location"
* #cumC19Died                   "Cumulative COVID-19 Patient Deaths" "Cumulative total of Patients with suspected or confirmed COVID-19 who died in the hospital, ED, or any overflow location"
* #totalOrdersIncrease          "New Diagnostic Tests Ordered/Received"
* #totalOrders                  "Cumulative Diagnostic Tests Ordered/Received"
* #totalTestResultsIncrease     "New Tests Resulted"
* #rejected                     "Cumulative Specimens Rejected"
* #totalTestResults             "Cumulative Tests Performed"
* #positiveIncrease             "New Positive COVID-19 Tests"
* #positive                     "Cumulative Positive COVID-19 Tests"
* #allReports                   "All Laboratory Reports for any Order"
* #latestReports                "Most Recent Laboratory Reports for any Order"

* #ventsupply                   "Ventilator supplies (any, including tubing) - On-hand Supply"
* #ventreuse                    "Ventilator supplies (any, including tubing) - Reusing or Extending Use"
* #ventobtain                   "Ventilator supplies (any, including tubing) - Able to Obtain"
* #n95masksupply                "N95 masks - On-hand Supply"
* #n95maskreuse                 "N95 masks - Reusing or Extending Use"
* #n95maskobtain                "N95 masks - Able to Obtain"
* #othrespsupply                "Other respirators including PAPRs - On-hand Supply"
* #othrespreuse                 "Other respirators including PAPRs - Reusing or Extending Use"
* #othrespobtain                "Other respirators including PAPRs - Able to Obtain"
* #surgmasksupply               "Surgical masks - On-hand Supply"
* #surgmaskreuse                "Surgical masks - Reusing or Extending Use"
* #surgmaskobtain               "Surgical masks - Able to Obtain"
* #shieldsupply                 "Eye protection including face shields or goggles - On-hand Supply"
* #shieldreuse                  "Eye protection including face shields or goggles - Reusing or Extending Use"
* #shieldobtain                 "Eye protection including face shields or goggles - Able to Obtain"
* #gownsupply                   "Gowns (single use) - On-hand Supply"
* #gownreuse                    "Gowns (single use) - Reusing or Extending Use"
* #gownobtain                   "Gowns (single use) - Able to Obtain"
* #glovesupply                  "Gloves - On-hand Supply"
* #glovereuse                   "Gloves - Reusing or Extending Use"
* #gloveobtain                  "Gloves - Able to Obtain"

* #shortenvsvc                  "Environmental services - Critical Staffing Shortage Today"
* #shortnurse                   "Nurses - Critical Staffing Shortage Today"
* #shortrt                      "Respiratory therapists - Critical Staffing Shortage Today"
* #shortphar                    "Pharmacists and pharmacy techs - Critical Staffing Shortage Today"
* #shortphys                    "Attending physicians, fellows - Critical Staffing Shortage Today"
* #shorttemp                    "Temporary physicians, nurses, respiratory therapists, and pharmacists - Critical Staffing Shortage Today"
* #shortoth                     "Other HCP - Critical Staffing Shortage Today"
* #shortothlic                  "Other licensed independent practitioners - Critical Staffing Shortage Today"
* #shortothsfy                  "Other HCP - Specify the groups - Critical Staffing Shortage Today"
* #posshortenvsvc               "Environmental services - Critical Staffing Shortage Within a Week"
* #posshortnurse                "Nurses - Critical Staffing Shortage Within a Week"
* #posshortrt                   "Respiratory therapists - Critical Staffing Shortage Within a Week"
* #posshortphar                 "Pharmacists and pharmacy techs - Critical Staffing Shortage Within a Week"
* #posshortphys                 "Attending physicians, fellows - Critical Staffing Shortage Within a Week"
* #posshorttemp                 "Temporary physicians, nurses, respiratory therapists, and pharmacists - Critical Staffing Shortage Within a Week"
* #posshortoth                  "Other HCP - Critical Staffing Shortage Within a Week"
* #posshortothlic               "Other licensed independent practitioners - Critical Staffing Shortage Within a Week"
* #posshortothsfy               "Other HCP - Specify the groups - Critical Staffing Shortage Within a Week"


 * #state
 * #county
 * #facilityId
 * #collectionDate
 * #summaryCensusId

CodeSystem: MeasureGroupSystem
Title: "Measure Group System"
Description: "A Code System for Groups defined by The SANER Project"
* #Beds             "Beds" "This group reports on Bed availability"
* #Ventilators      "Ventilators" "This group reports on Ventilator availability"
* #Encounters       "Encounters" "This group reports on COVID-19 Patient Encounters"
* #CovidDeaths      "COVID-19 Deaths" "This group reports on COVID-19 Patient Deaths"
* #AcquiredCovid    "Acquired COVID-19 in Hospital" "This group reports on Hospital Acquired COVID-19 Infections"
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
* codes from system MeasuredValues
* codes from system MeasurePopulationSystem
* codes from system http://terminology.hl7.org/CodeSystem/special-values

ValueSet: MeasureStatus
Title: "Measure Status Values"
Description: "Allowed Status Values for Saner Measures"
* http://hl7.org/fhir/publication-status#active
* http://hl7.org/fhir/publication-status#draft
* http://hl7.org/fhir/publication-status#retired

CodeSystem: MeasureRateAggregation
Title: "Measure Rate Aggregation Coding System"
Description: "This Coding System Identifies methods of rate aggregation"
* #count "Aggregable" "Rates can be summed over consecutive periods"
* #point-in-time "Point in Time" "Rates are point in time measures during the reporting period, the most recent measure is retained in an aggregate"
* #cumulative "Cumulative" "Rates are point in time measures showing cumulative values over all reporting periods, the most recent measure is retained in an aggregate"

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

ValueSet:    VentilatorObservations
Title:       "Ventilator Observations"
Description: "Codes used to report ventilation activity"

ValueSet:    VentilatorProcedures
Title:       "Ventilator Procedures"
Description: "Codes used to report a ventilation procedure"

ValueSet:    SuspectedOrDiagnosedCOVID19
Title:       "Suspected Or Diagnosed COVID-19"
Description: "Coded identifying suspected or confirmed COVID-19"

ValueSet:    PatientDied
Title:       "Patient Died"
Description: "Codes used to identify that a patient has died"

ValueSet:    Covid19Labs
Title:       "COVID-19 Diagnostic Test"
Description: "Codes for COVID-19 Diagnostic Tests"

ValueSet:    PositiveResult
Title:       "Confirmed COVID-19 Diagnosis"
Description: "Codes confirming COVID-19 Diagnostic Test Result"

ValueSet:    ConfirmedCOVID19DiagnosisValues
Title:       "Confirmed COVID-19 Diagnosis Values"
Description: "Codes for result values confirming COVID-19 Diagnostic Test Result"
