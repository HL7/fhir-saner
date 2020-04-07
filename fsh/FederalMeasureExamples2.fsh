// This sheet convert output to FHIR Shorthand for generating measures.

CodeSystem: SanerPopulationMeasures
Title: "SANER Population Measure Groups"
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



// %ValueSet-SanerBedDeviceTypes
// %ValueSet-SanerBedLocationTypes
// %ValueSet-InpatientLocations
// %ValueSet-ICULocations
// %ValueSet-OccupiedBed
// %ValueSet-SanerVentilatorDevices
// %ValueSet-SuspectedOrDiagnosedCOVID19
// %ValueSet-SanerVentilatorDevices
// %ValueSet-InpatientLocations
// %ValueSet-EDorOverflowLocations
// %ValueSet-PatientDied
// %ValueSet-COVID19DiagnosticTest
// %ValueSet-COVID19DiagnosticTest
// %ValueSet-ConfirmedCOVID19Diagnosis


Instance: SANERBeds
InstanceOf: Measure
Title: "Bed Availability and Use Reporting"
Description: "This measure demonstrates reporting on bed availability and use at a facility location based on CDC/NHSN reporting requirements."
Usage: #example
 * name = "SANERBeds"
 * status = #draft
 * url = "http://ainq.com/fhir/us/saner/Measure/SANERBeds"
 * experimental = true
 * title = "Bed Availability and Use"
 * author.name = "CDC/NHSN"
 * publisher = "The SANER Project"
 * contact.telecom.system = #email
 * contact.telecom.value = "nhsn@cdc.gov"
 * useContext.code = http://terminology.hl7.org/CodeSystem/usage-context-type#focus
 * useContext.valueCodeableConcept = http://snomed.info/sct#840539006 "COVID-19"
 * type = http://terminology.hl7.org/CodeSystem/measure-type#structure
 * topic = http://snomed.info/sct#91537007 "Hospital bed, device (physical object)"
 * jurisdiction = urn:iso:std:iso:3166#US
 * scoring = http://terminology.hl7.org/CodeSystem/measure-scoring#continuous-variable
 * rateAggregation = "last day"
 * relatedArtifact[0].type = #documentation
 * relatedArtifact[0].url = "https://www.cdc.gov/nhsn/acute-care-hospital/covid19/"
 * relatedArtifact[0].label = "NHSN COVID-19 Reporting"
 * relatedArtifact[0].display = "CDC/NHSN COVID-19 Patient Impact & Hospital Capacity Module Home Page"
 * relatedArtifact[1].type = #documentation
 * relatedArtifact[1].url = "https://www.cdc.gov/nhsn/pdfs/covid19/import-covid19-data-508.pdf"
 * relatedArtifact[1].label = "How to import COVID-19 Summary Data"
 * relatedArtifact[1].display = "Importing COVID-19 Patient Module Denominator data for Patient Safety Component"
 * relatedArtifact[2].type = #documentation
 * relatedArtifact[2].url = "https://www.cdc.gov/nhsn/pdfs/covid19/57.130-toi-508.pdf"
 * relatedArtifact[2].label = "Table of Instructions"
 * relatedArtifact[2].display = "Instructions for Completion of the COVID-19 Patient Impact and Hospital Capacity Module Form (CDC 57.130)"
 * relatedArtifact[3].type = #documentation
 * relatedArtifact[3].url = "https://www.cdc.gov/nhsn/pdfs/covid19/covid19-test-csv-import.csv"
 * relatedArtifact[3].label = "CSV File Template"
 * relatedArtifact[3].display = "CDC/NHSN COVID-19 Reporting CSV File Template"

 // Describe the initial population for this Measure Group
 * group.population.code.coding = http://ainq.com/fhir/us/saner/CodeSystem/SanerPopulationMeasures#numTotBeds
 * group.population.code.coding.display = "All Hospital Beds"
 * group.population.code.coding[1] = http://terminology.hl7.org/CodeSystem/measure-population#initial-population
 * group.population.code.text = "Total number of all Inpatient and outpatient beds, including all staffed,ICU, licensed, and overflow (surge) beds used for inpatients or outpatients"
 * group.population.description = """Enter the total number of all hospital beds, including inpatient and outpatient beds. All staffed, licensed,
and overflow and surge/expansion beds used for inpatients or outpatients. This includes ICU beds."""
 * group.population.criteria.name = "numTotBeds"
 * group.population.criteria.description = "A bed in any location"
 * group.population.criteria.language = http://hl7.org/fhir/expression-language#text/fhirpath
 * group.population.criteria.expression = "Device.where(type in %ValueSet-SanerBedDeviceTypes and location.physicalType in %ValueSet-SanerBedLocationTypes)"

// Describe the population strata for numBeds
 * group.population[1].code.coding = http://ainq.com/fhir/us/saner/CodeSystem/SanerPopulationMeasures#numBeds
 * group.population[1].code.coding.display = "Hospital Inpatient Beds"
 * group.population[1].code.coding[1] = http://terminology.hl7.org/CodeSystem/measure-population#measure-population
 * group.population[1].code.text = "Inpatient beds, including all staffed, licensed, and overflow (surge) beds used for inpatients"
 * group.population[1].criteria.name = "numBeds"
 * group.population[1].criteria.description = "A Bed where the location is an inpatient location."
 * group.population[1].criteria.language = http://hl7.org/fhir/expression-language#text/fhirpath
 * group.population[1].criteria.expression = "%numTotBeds.where(location.type in %ValueSet-InpatientLocations)"
 * group.population[1].description = "Required. Enter the total number of all inpatient beds, including all staffed, licensed, and overflow and surge/expansion beds created for inpatient care. This includes intensive care unit (ICU) beds."

// Describe the population for numBedsOcc
 * group.population[2].code.coding = http://ainq.com/fhir/us/saner/CodeSystem/SanerPopulationMeasures#numBedsOcc
 * group.population[2].code.coding.display = "Hospital Inpatient Bed Occupancy"
 * group.population[2].code.text = "Total number of staffed inpatient beds that are occupied"
 * group.population[2].code.coding[1] = http://terminology.hl7.org/CodeSystem/measure-population#measure-population
 * group.population[2].criteria.name = "numBedsOcc"
 * group.population[2].criteria.description = "An Inpatient Bed where the Bed is occupied."
 * group.population[2].criteria.language = http://hl7.org/fhir/expression-language#text/fhirpath
 * group.population[2].criteria.expression = "%numBeds.where(location.operationalStatus = %ValueSet-OccupiedBed)"
 * group.population[2].description = """Enter the total number of staffed inpatient beds occupied by patients at the time the data is collected, including all staffed, licensed, and overflow and surge/expansion beds created for inpatient care. This includes ICU beds.

CDC Webinar 31-Mar-2020:
Baby beds in mom's room count as 1 bed, even if there are multiple baby beds
Follow-up in progress if staffed is less than licensed.
Total includes all beds, even if with surge beds it exceeds licensed beds."""

// Describe the population for numICUBeds
 * group.population[3].code.coding = http://ainq.com/fhir/us/saner/CodeSystem/SanerPopulationMeasures#numICUBeds
 * group.population[3].code.coding.display = "ICU Beds"
 * group.population[3].code.text = "Total number of staffed inpatient intensive care unit (ICU) beds"
 * group.population[3].code.coding[1] = http://terminology.hl7.org/CodeSystem/measure-population#measure-population
 * group.population[3].criteria.name = "numICUBeds"
 * group.population[3].criteria.description = "A Bed where the location is an inpatient ICU location."
 * group.population[3].criteria.language = http://hl7.org/fhir/expression-language#text/fhirpath
 * group.population[3].criteria.expression = "%numBeds.where(location.type in %ValueSet-ICULocations)"
 * group.population[3].description = """Enter the total number of staffed Intensive Care Unit (ICU) beds.

CDC Webinar 31-Mar-2020:
ICU beds include NICU
"""

// Describe the population for numICUBedsOcc
 * group.population[4].code.coding = http://ainq.com/fhir/us/saner/CodeSystem/SanerPopulationMeasures#numICUBedsOcc
 * group.population[4].code.coding.display = "Total number of staffed inpatient intensive care unit (ICU) beds"
 * group.population[4].code.coding[1] = http://terminology.hl7.org/CodeSystem/measure-population#measure-population
 * group.population[4].code.text = """Total number of staffed inpatient intensive care unit (ICU) beds"""
 * group.population[4].criteria.name = "numICUBedsOcc"
 * group.population[4].criteria.description = "An ICU Bed that is occupied."
 * group.population[4].criteria.language = http://hl7.org/fhir/expression-language#text/fhirpath
 * group.population[4].criteria.expression = "%numICUBeds.where(location.operationalStatus = %ValueSet-OccupiedBed)"
 * group.population[4].description = """Enter the total number of staffed ICU beds occupied by patients at the time the data is collected.

CDC Webinar 31-Mar-2020:
ICU beds include NICU"""


Instance: SANERVents
InstanceOf: Measure
Title: "Mechanical Ventilators Reporting"
Description: "This measure demonstrates reporting on ventilator availability and use at a facility location based on CDC/NHSN reporting requirements."
Usage: #example
 * name = "SANERVents"
 * status = #draft
 * url = "http://ainq.com/fhir/us/saner/Measure/SANERnumVent"
 * experimental = true
 * title = "Mechanical Ventilators"
 * author.name = "CDC/NHSN"
 * publisher = "The SANER Project"
 * contact.telecom.system = #email
 * contact.telecom.value = "nhsn@cdc.gov"
 * description = "Total number of ventilators available"
 * useContext.code = http://terminology.hl7.org/CodeSystem/usage-context-type#focus
 * useContext.valueCodeableConcept = http://snomed.info/sct#840539006 "COVID-19"
 * type = http://terminology.hl7.org/CodeSystem/measure-type#structure
 * topic = http://snomed.info/sct#706172005 "Ventilator (physical object)"
 * jurisdiction = urn:iso:std:iso:3166#US
 * scoring = http://terminology.hl7.org/CodeSystem/measure-scoring#continuous-variable
 * rateAggregation = "last day"
 * relatedArtifact[0].type = #documentation
 * relatedArtifact[0].url = "https://www.cdc.gov/nhsn/acute-care-hospital/covid19/"
 * relatedArtifact[0].label = "NHSN COVID-19 Reporting"
 * relatedArtifact[0].display = "CDC/NHSN COVID-19 Patient Impact & Hospital Capacity Module Home Page"
 * relatedArtifact[1].type = #documentation
 * relatedArtifact[1].url = "https://www.cdc.gov/nhsn/pdfs/covid19/import-covid19-data-508.pdf"
 * relatedArtifact[1].label = "How to import COVID-19 Summary Data"
 * relatedArtifact[1].display = "Importing COVID-19 Patient Module Denominator data for Patient Safety Component"
 * relatedArtifact[2].type = #documentation
 * relatedArtifact[2].url = "https://www.cdc.gov/nhsn/pdfs/covid19/57.130-toi-508.pdf"
 * relatedArtifact[2].label = "Table of Instructions"
 * relatedArtifact[2].display = "Instructions for Completion of the COVID-19 Patient Impact and Hospital Capacity Module Form (CDC 57.130)"
 * relatedArtifact[3].type = #documentation
 * relatedArtifact[3].url = "https://www.cdc.gov/nhsn/pdfs/covid19/covid19-test-csv-import.csv"
 * relatedArtifact[3].label = "CSV File Template"
 * relatedArtifact[3].display = "CDC/NHSN COVID-19 Reporting CSV File Template"

// Describe initial population
 * group.population.code.coding = http://ainq.com/fhir/us/saner/CodeSystem/SanerPopulationMeasures#numVent
 * group.population.code.coding.display = "Mechanical Ventilators"
 * group.population.code.coding[1] = http://terminology.hl7.org/CodeSystem/measure-population#initial-population
 * group.population.code.text = "Total number of ventilators available"
 * group.population.description = """Enter the total number of mechanical ventilators, including anesthesia machines and
portable/transport ventilators available in the facility.
Include BiPAP machines if the hospital uses BiPAP to deliver positive pressure ventilation via artificial airways."""
 * group.population.criteria.name = "numVent"
 * group.population.criteria.description = "A Device that is used for ventilation and could be used (e.g., not broken, transferred, etc)"
 * group.population.criteria.language = http://hl7.org/fhir/expression-language#text/fhirpath
 * group.population.criteria.expression = "Device.where(type in %ValueSet-SanerVentilatorDevices and status = active)"
// Describe the population for numVentUse
 * group.population[1].code.coding = http://ainq.com/fhir/us/saner/CodeSystem/SanerPopulationMeasures#numVentUse
 * group.population[1].code.coding.display = "Mechanical Ventilators in Use"
 * group.population[1].code.coding[1] = http://terminology.hl7.org/CodeSystem/measure-population#measure-population
 * group.population[1].code.text = "Total number of ventilators in use"
 * group.population[1].criteria.name = "numVentUse"
 * group.population[1].criteria.description = "A ventilator that is attached to a patient."
 * group.population[1].criteria.language = http://hl7.org/fhir/expression-language#text/fhirpath
 * group.population[1].criteria.expression = "%numVent.where(patient!={})"
 * group.population[1].description = """Enter the total number of mechanical ventilators use at the time the data is collected, including anesthesia
machines and portable/transport ventilators. Include BiPAP machines if the hospital uses BiPAP to deliver positive pressure ventilation via artificial airways."""

Instance: SANERC19Pats
InstanceOf: Measure
Title: "Suspected or Confirmed COVID-19 Patient Reporting"
Description: "This measure demonstrates reporting about suspected or confirmed patients at a facility location based on CDC/NHSN reporting requirements."
Usage: #example
 * name = "SANERC19Pats"
 * status = #draft
 * url = "http://ainq.com/fhir/us/saner/Measure/SANERC19Pats"
 * experimental = true
 * title = "Suspected or Confirmed COVID-19"
 * author.name = "SANER"
 * publisher = "The SANER Project"
 * contact.telecom.system = #email
 * contact.telecom.value = "kboone@ainq.com"
 * description = "Patients with suspected or confirmed COVID-19 in any location."
 * useContext.code = http://terminology.hl7.org/CodeSystem/usage-context-type#focus
 * useContext.valueCodeableConcept = http://snomed.info/sct#840539006 "COVID-19"
 * type = http://terminology.hl7.org/CodeSystem/measure-type#structure
 * topic = http://snomed.info/sct#116154003 "Patient (person)"
 * jurisdiction = urn:iso:std:iso:3166#US
 * scoring = http://terminology.hl7.org/CodeSystem/measure-scoring#continuous-variable
 * rateAggregation = "last day"
 * relatedArtifact[0].type = #documentation
 * relatedArtifact[0].url = "https://www.cdc.gov/nhsn/acute-care-hospital/covid19/"
 * relatedArtifact[0].label = "NHSN COVID-19 Reporting"
 * relatedArtifact[0].display = "CDC/NHSN COVID-19 Patient Impact & Hospital Capacity Module Home Page"
 * relatedArtifact[1].type = #documentation
 * relatedArtifact[1].url = "https://www.cdc.gov/nhsn/pdfs/covid19/import-covid19-data-508.pdf"
 * relatedArtifact[1].label = "How to import COVID-19 Summary Data"
 * relatedArtifact[1].display = "Importing COVID-19 Patient Module Denominator data for Patient Safety Component"
 * relatedArtifact[2].type = #documentation
 * relatedArtifact[2].url = "https://www.cdc.gov/nhsn/pdfs/covid19/57.130-toi-508.pdf"
 * relatedArtifact[2].label = "Table of Instructions"
 * relatedArtifact[2].display = "Instructions for Completion of the COVID-19 Patient Impact and Hospital Capacity Module Form (CDC 57.130)"
 * relatedArtifact[3].type = #documentation
 * relatedArtifact[3].url = "https://www.cdc.gov/nhsn/pdfs/covid19/covid19-test-csv-import.csv"
 * relatedArtifact[3].label = "CSV File Template"
 * relatedArtifact[3].display = "CDC/NHSN COVID-19 Reporting CSV File Template"


// describe the initial population
 * group.population.code.coding = http://ainq.com/fhir/us/saner/CodeSystem/SanerPopulationMeasures#numC19Pats
 * group.population.code.coding.display = "All COVID-19 Confirmed or Suspected Patients"
 * group.population.code.coding[1] = http://terminology.hl7.org/CodeSystem/measure-population#initial-population
 * group.population.code.text = "Patients with suspected or confirmed COVID-19 in any location."
 * group.population.criteria.name = "numC19Pats"
 * group.population.criteria.description = """Active encounters where the encounter diagnosis is suspected or confirmed COVID-19,
 or a Condition of suspected or confirmed COVID-19 was created during that encounter."""
 * group.population.criteria.language = http://hl7.org/fhir/expression-language#text/fhirpath
 * group.population.criteria.expression = """
   Encounter.where(clinicalStatus = 'active' and diagnosis.condition.ofType(Condition).code in %ValueSet-SuspectedOrDiagnosedCOVID19)
 | Encounter.where(clinicalStatus = "active" and Condition.where(code in %ValueSet-SuspectedOrDiagnosedCOVID19).encounter = $this)
 """
 * group.population.description = """Enter the number of patients in any location at the time the data is collected who have suspected or confirmed
COVID-19. This includes the patients with laboratory-confirmed or clinically diagnosed COVID-19.
Confirmed: A patient with a laboratory confirmed COVID-19 diagnosis
Suspected: A patient without a laboratory confirmed COVID-19 diagnosis who, in accordance with CDC’s Interim Public Health Guidance
for Evaluating Persons Under Investigation (PUIs), has signs and symptoms compatible with COVID-19 (most patients with confirmed
COVID-19 have developed fever and/or symptoms of acute respiratory illness, such as cough, shortness of breath or myalgia/fatigue)."""

// Describe the criteria for numC19VentPats
 * group.population[1].code.coding = http://ainq.com/fhir/us/saner/CodeSystem/SanerPopulationMeasures#numC19VentPats
 * group.population[1].code.coding.display = "COVID-19 Patients on a Ventilator"
 * group.population[1].code.coding[1] = http://terminology.hl7.org/CodeSystem/measure-population#measure-population
 * group.population[1].code.text = "Patients in any location who have suspected or confirmed COVID-19 and are currently on a ventilator."
 * group.population[1].criteria.name = "numC19VentPats"
 * group.population[1].criteria.description = "A COVID-19 encounter where the patient is ventilated"
 * group.population[1].criteria.language = http://hl7.org/fhir/expression-language#text/fhirpath
 * group.population[1].criteria.expression = "%numC19Pats.where(Device.where(type in %ValueSet-SanerVentilatorDevices and status = active).patient = $this.patient)"
 * group.population[1].description = """Enter the number of patients in any location who have suspected or confirmed COVID-19 and are
currently on a mechanical ventilator* at the time the data is collected. This includes the patients with laboratory-confirmed or clinically
diagnosed COVID-19.

*Ventilator: Any device used to support, assist or control respiration (inclusive of the weaning period) through the application of positive
pressure to the airway when delivered via an artificial airway, specifically an oral/nasal endotracheal or tracheostomy tube.
Note: Ventilation and lung expansion devices that deliver positive pressure to the airway (for example: CPAP, BiPAP, bi-level, IPPB and
PEEP) via non-invasive means (for example: nasal prongs, nasal mask, full face mask, total mask, etc.) are not considered ventilators
unless positive pressure is delivered via an artificial airway (oral/nasal endotracheal or tracheostomy tube)."""

// Describe the criteria for numC19HospPats
 * group.population[2].code.coding = http://ainq.com/fhir/us/saner/CodeSystem/SanerPopulationMeasures#numC19HospPats
 * group.population[2].code.coding.display = "Hospitalized COVID-19 Patients"
 * group.population[2].code.coding[1] = http://terminology.hl7.org/CodeSystem/measure-population#measure-population
 * group.population[2].code.text = "Patients currently hospitalized in an inpatient care location who have suspected or confirmed COVID-19"
 * group.population[2].criteria.name = "numC19HospPats"
 * group.population[2].criteria.description = "An COVID-19 encounter where the active location is an inpatient location"
 * group.population[2].criteria.language = http://hl7.org/fhir/expression-language#text/fhirpath
 * group.population[2].criteria.expression = "%numC19Pats.where(location.where(status='active' and type in %ValueSet-InpatientLocations))"
 * group.population[2].description = """Enter the number of patients hospitalized in an inpatient bed at the time the data is collected
 who have suspected or confirmed COVID-19. This includes the patients with laboratory-confirmed or clinically diagnosed COVID-19.
Confirmed: A patient with a laboratory confirmed COVID-19 diagnosis
Suspected: A patient without a laboratory confirmed COVID-19 diagnosis who, in accordance with CDC’s Interim Public Health Guidance
for Evaluating Persons Under Investigation (PUIs), has signs and symptoms compatible with COVID-19 (most patients with confirmed
COVID-19 have developed fever and/or symptoms of acute respiratory illness, such as cough, shortness of breath or myalgia/fatigue)."""

// Describe the criteria for numC19MechVentPats
 * group.population[3].code.coding = http://ainq.com/fhir/us/saner/CodeSystem/SanerPopulationMeasures#numC19MechVentPats
 * group.population[3].code.coding.display = "Hospitalized and Ventilated COVID-19 Patients"
 * group.population[3].code.coding[1] = http://terminology.hl7.org/CodeSystem/measure-population#measure-population
 * group.population[3].code.text = "Patients currently hospitalized in an inpatient bed who have suspected or confirmed COVID-19 and are on a mechanical ventilator"
 * group.population[3].criteria.name = "numC19OFMechVentPats"
 * group.population[3].criteria.description = "An COVID-19 encounter in an inpatient setting on a ventilator"
 * group.population[3].criteria.language = http://hl7.org/fhir/expression-language#text/fhirpath
 * group.population[3].criteria.expression = "%numC19HospPats.intersect(%numC19VentPats)"
 * group.population[3].description = """Enter the number of patients hospitalized in an inpatient bed who have
suspected or confirmed COVID-19 and are currently on a mechanical ventilator* at the time the data is collected . This includes the
patients with laboratory-confirmed or clinically diagnosed COVID-19.

*Ventilator: Any device used to support, assist or control respiration (inclusive of the weaning period) through the application of positive
pressure to the airway when delivered via an artificial airway, specifically an oral/nasal endotracheal or tracheostomy tube.
Note: Ventilation and lung expansion devices that deliver positive pressure to the airway (for example: CPAP, BiPAP, bi-level, IPPB and
PEEP) via non-invasive means (for example: nasal prongs, nasal mask, full face mask, total mask, etc.) are not considered ventilators
unless positive pressure is delivered via an artificial airway (oral/nasal endotracheal or tracheostomy tube)."""

// Describe the criteria for numC19HospOnsetPats
 * group.population[4].code.coding = http://ainq.com/fhir/us/saner/CodeSystem/SanerPopulationMeasures#numC19HospOnsetPats
 * group.population[4].code.coding.display = "Hospital Onset COVID-19 Patients"
 * group.population[4].code.coding[1] = http://terminology.hl7.org/CodeSystem/measure-population#measure-population
 * group.population[4].code.text = """Patients currently hospitalized in an inpatient bed with onset of suspected or
confirmed COVID-19 fourteen or more days after hospital admission due to a condition other than COVID-19"""
 * group.population[4].criteria.name = "numC19HospOnsetPats"
 * group.population[4].criteria.description = "Encounters associated with suspected or confirmed COVID-19 with onset > 14 days after start"
 * group.population[4].criteria.language = http://hl7.org/fhir/expression-language#text/fhirpath
 * group.population[4].criteria.expression = """Condition.where(
   code in %ValueSet-SuspectedOrDiagnosedCOVID19
   and encounter in %numC19HospPats
   and onset + 14 days > encounter.period.start).encounter"""
 * group.population[4].description = """Enter the number of patients hospitalized in an inpatient bed at the time the data is
collected with onset of suspected or confirmed COVID-19 fourteen or more days after hospitalization (admission date = hospital
day 1). This includes laboratory-confirmed or clinically diagnosed COVID-19 cases."""


// Describe the criteria for numC19OverflowPats
 * group.population[5].code.coding = http://ainq.com/fhir/us/saner/CodeSystem/SanerPopulationMeasures#numC19OverflowPats
 * group.population[5].code.coding.display = "ED/Overflow COVID-19 Patients"
 * group.population[5].code.coding[1] = http://terminology.hl7.org/CodeSystem/measure-population#measure-population
 * group.population[5].code.text = "Patients with suspected or confirmed COVID-19 who are currently in the Emergency Department (ED) or any overflow location awaiting an inpatient bed"
 * group.population[5].criteria.name = "numC19OverflowPats"
 * group.population[5].criteria.description = "An COVID-19 encounter where the active location is an ED or Overflow location"
 * group.population[5].criteria.language = http://hl7.org/fhir/expression-language#text/fhirpath
 * group.population[5].criteria.expression = "%numC19Pats.where(location.where(status='active' and type in %ValueSet-EDorOverflowLocations))"
 * group.population[5].description = """Enter the number of patients with suspected or confirmed COVID-19 who are in the
Emergency Department(ED) or any overflow/expansion location awaiting placement in an inpatient bed at the time the data
is collected . This includes patients with laboratory-confirmed or clinically diagnosed COVID-19. Overflow locations include any physical
locations created to accommodate patients include but not limited to 24-hour observation units, hallways, parking lots, or tents."""

// Describe the criteria for numC19OFMechVentPats
 * group.population[6].code.coding = http://ainq.com/fhir/us/saner/CodeSystem/SanerPopulationMeasures#numC19OFMechVentPats
 * group.population[6].code.coding.display = "ED/Overflow and Ventilated COVID-19 Patients"
 * group.population[6].code.coding[1] = http://terminology.hl7.org/CodeSystem/measure-population#measure-population
 * group.population[6].code.text = "Patients with suspected or confirmed COVID-19 who currently are in the ED or any overflow location awaiting an inpatient bed and on a mechanical ventilator"
 * group.population[6].criteria.name = "numC19OFMechVentPats"
 * group.population[6].criteria.description = "An COVID-19 encounter where the active location is an ED or Overflow location"
 * group.population[6].criteria.language = http://hl7.org/fhir/expression-language#text/fhirpath
 * group.population[6].criteria.expression = "%numC19OverflowPats.intersect(%numC19VentPats)"
 * group.population[6].description = """Enter the number of patients with suspected or confirmed COVID-19 who are in the ED or any overflow/expansion location on a
mechanical ventilator* at the time the data is collected . This includes patients with laboratory-confirmed or clinically diagnosed COVID-19.

*Ventilator: Any device used to support, assist or control respiration (inclusive of the weaning period) through the application of positive
pressure to the airway when delivered via an artificial airway, specifically an oral/nasal endotracheal or tracheostomy tube.
Note: Ventilation and lung expansion devices that deliver positive pressure to the airway (for example: CPAP, BiPAP, bi-level, IPPB and
PEEP) via non-invasive means (for example: nasal prongs, nasal mask, full face mask, total mask, etc.) are not considered ventilators
unless positive pressure is delivered via an artificial airway (oral/nasal endotracheal or tracheostomy tube)."""

// Describe the criteria for numC19Died
 * group.population[7].code.coding = http://ainq.com/fhir/us/saner/CodeSystem/SanerPopulationMeasures#numC19Died
 * group.population[7].code.coding.display = "COVID-19 Patient Deaths"
 * group.population[7].code.coding[1] = http://terminology.hl7.org/CodeSystem/measure-population#measure-population
 * group.population[7].code.text = "Patients with suspected or confirmed COVID-19 who died in the hospital, ED or any overflow location on the date for which you are reporting."
 * group.population[7].criteria.name = "numC19Died"
 * group.population[7].criteria.description = "All C19 Patients who have died in an encounter during the reporting period."
 * group.population[7].criteria.language = http://hl7.org/fhir/expression-language#text/fhirpath
 * group.population[7].criteria.expression = "%numC19Pats.hospitalization.dispostion in %ValueSet-PatientDied"
 * group.population[7].description = """Enter the number of patients with suspected or confirmed COVID-19 who died in the hospital, ED, or any overflow location. This
includes patients with laboratory-confirmed or clinically diagnosed COVID-19. Please enter the count of deaths newly occurred, at the time
the data is collected instead of the cumulated number of deaths."""

Instance: SANERC19Testing
InstanceOf: Measure
Title: "Laboratory Orders and Results Daily Increase Reporting"
Description: "This measure demonstrates reporting about Daily Laboratory Testing at a inpatient test sites based the Vice President Pence Letter to Hospital Administrators."
 * name = "SANERC19Testing"
 * status = #draft
 * url = "http://ainq.com/fhir/us/saner/Measure/SANERC19Testing"
 * experimental = true
 * author.name = "FEMA"
 * publisher = "The SANER Project"
 * contact.telecom.system = #email
 * contact.telecom.value = "fema-hhs-covid-diagnostics-tf@fema.dhs.gov "
 * useContext.code = http://terminology.hl7.org/CodeSystem/usage-context-type#focus
 * useContext.valueCodeableConcept = http://snomed.info/sct#840539006 "COVID-19"
 * type = #outcome
 * topic = http://snomed.info/sct#252318005 "Immunology laboratory test (procedure)"
 * jurisdiction = urn:iso:std:iso:3166#US
 * scoring = #ratio
 * rateAggregation = "last day"
 * relatedArtifact[0].type = #documentation
 * relatedArtifact[0].url = "https://www.cms.gov/newsroom/press-releases/trump-administration-engages-americas-hospitals-unprecedented-data-sharing"
 * relatedArtifact[0].display = "Trump Administration Engages America’s Hospitals in Unprecedented Data Sharing"
 * relatedArtifact[0].label = "CMS Press Release"
 * relatedArtifact[1].type = #documentation
 * relatedArtifact[1].url = "https://www.whitehouse.gov/briefings-statements/text-letter-vice-president-hospital-administrators/"
 * relatedArtifact[1].display = "Text of a Letter from the Vice President to Hospital Administrators"
 * relatedArtifact[1].label = "Vice President Pence Letter to Hospital Administrators"
 * relatedArtifact[2].type = #documentation
 * relatedArtifact[2].url = "https://www.aha.org/advisory/2020-03-30-coronavirus-update-administration-requests-hospitals-report-daily-covid-19"
 * relatedArtifact[2].display = "Administration Requests Hospitals Report Daily on COVID-19 Testing Results, Bed and Ventilator"
 * relatedArtifact[2].label = "AHA Advisory on COVID-19 Reporting"
 * relatedArtifact[3].type = #documentation
 * relatedArtifact[3].url = "https://images.magnetmail.net/images/clients/AHA_MCHF/attach/2020/March/0330/Template_for_Daily_Hospital_COVID19_Reporting.xlsx"
 * relatedArtifact[3].display = "Template for Daily Hospital COVID-19 Reporting.xlsx"
 * relatedArtifact[3].label = "Excel Spreadsheet template for reporting to FEMA"


// positiveIncreasePercent IS the measureScore
 * group.code.coding = http://ainq.com/fhir/us/saner/CodeSystem/SanerPopulationMeasures#positiveIncreasePercent
 * group.code.coding.display = "Percent Positive among Newly Resulted Tests"
 * group.code.text = "# of new positive test results released / # of total new tests released for previous date queried"

// describe the initial population
 * group.population.code.coding = http://ainq.com/fhir/us/saner/CodeSystem/SanerPopulationMeasures#totalOrdersIncrease
 * group.population.code.coding.display = "New Diagnostic Tests Ordered/Received"
 * group.population.code.coding[1] = http://terminology.hl7.org/CodeSystem/measure-population#initial-population
 * group.population.code.text = "Midnight to midnight cutoff, tests ordered on previous date queried"
 * group.population.criteria.name = "totalOrdersIncrease"
 * group.population.criteria.description = "Orders initiated during %reportingPeriod"
 * group.population.criteria.language = http://hl7.org/fhir/expression-language#text/fhirpath
 * group.population.criteria.expression = """
 ServiceRequest.where(
    authoredOn.toDate() = %reportingPeriod /* May need to change logic to support ranges for reportingPeriod */
    and status in ('active', 'completed')
    and intent in ('order', 'orginal-order', 'reflex-order', 'filler-order', 'instance-order')
)"""
 * group.population.description = ""

 * group.population[1].code.coding = http://ainq.com/fhir/us/saner/CodeSystem/SanerPopulationMeasures#totalTestResultsIncrease
 * group.population[1].code.coding.display = "New Tests Resulted"
 * group.population[1].code.coding[1] = http://terminology.hl7.org/CodeSystem/measure-population#denominator
 * group.population[1].code.text = "Midnight to midnight cutoff, test results released on previous date queried"
 * group.population[1].criteria.name = "totalTestResultsIncrease"
 * group.population[1].criteria.description = "Results recieved during reporting period"
 * group.population[1].criteria.language = http://hl7.org/fhir/expression-language#text/fhirpath
 * group.population[1].criteria.expression = """
 DiagnosticReport.where(
    issued.toDate() = %reportingPeriod /* May need to change logic to support ranges for reportingPeriod */
    and status in ('final, 'amended', 'corrected', 'appended')
)"""
 * group.population[1].description = ""

 * group.population[2].code.coding = http://ainq.com/fhir/us/saner/CodeSystem/SanerPopulationMeasures#positiveIncrease
 * group.population[2].code.coding.display = "New Positive COVID-19 Tests"
 * group.population[2].code.coding[1] = http://terminology.hl7.org/CodeSystem/measure-population#numerator
 * group.population[2].code.text = "Midnight to midnight cutoff, positive test results released on previous date queried"
 * group.population[2].criteria.name = "positiveIncrease"
 * group.population[2].criteria.description = "Result is positive with respect to COVID-19"
 * group.population[2].criteria.language = http://hl7.org/fhir/expression-language#text/fhirpath
 * group.population[2].criteria.expression = "DiagnosticReport.where($this in %totalTestResultsIncrease and conclusionCode in %ValueSet-ConfirmedCOVID19Diagnosis)"
 * group.population[2].description = ""


Instance: SANERC19CumulativeTesting
InstanceOf: Measure
Title: "Laboratory Orders and Results Cumulative Reporting"
Description: "This measure demonstrates reporting about Daily Laboratory Testing at a inpatient test sites based the Vice President Pence Letter to Hospital Administrators."
 * name = "SANERC19CumulativeTesting"
 * status = #draft
 * url = "http://ainq.com/fhir/us/saner/Measure/SANERC19CumulativeTesting"
 * experimental = true
 * author.name = "FEMA"
 * publisher = "The SANER Project"
 * contact.telecom.system = #email
 * contact.telecom.value = "fema-hhs-covid-diagnostics-tf@fema.dhs.gov "
 * useContext.code = http://terminology.hl7.org/CodeSystem/usage-context-type#focus
 * useContext.valueCodeableConcept = http://snomed.info/sct#840539006 "COVID-19"
 * type = #outcome
 * topic = http://snomed.info/sct#252318005 "Immunology laboratory test (procedure)"
 * jurisdiction = urn:iso:std:iso:3166#US
 * scoring = #ratio
 * rateAggregation = "cumulative from start date"
 * relatedArtifact[0].type = #documentation
 * relatedArtifact[0].url = "https://www.cms.gov/newsroom/press-releases/trump-administration-engages-americas-hospitals-unprecedented-data-sharing"
 * relatedArtifact[0].display = "Trump Administration Engages America’s Hospitals in Unprecedented Data Sharing"
 * relatedArtifact[0].label = "CMS Press Release"
 * relatedArtifact[1].type = #documentation
 * relatedArtifact[1].url = "https://www.whitehouse.gov/briefings-statements/text-letter-vice-president-hospital-administrators/"
 * relatedArtifact[1].display = "Text of a Letter from the Vice President to Hospital Administrators"
 * relatedArtifact[1].label = "Vice President Pence Letter to Hospital Administrators"
 * relatedArtifact[2].type = #documentation
 * relatedArtifact[2].url = "https://www.aha.org/advisory/2020-03-30-coronavirus-update-administration-requests-hospitals-report-daily-covid-19"
 * relatedArtifact[2].display = "Administration Requests Hospitals Report Daily on COVID-19 Testing Results, Bed and Ventilator"
 * relatedArtifact[2].label = "AHA Advisory on COVID-19 Reporting"
 * relatedArtifact[3].type = #documentation
 * relatedArtifact[3].url = "https://images.magnetmail.net/images/clients/AHA_MCHF/attach/2020/March/0330/Template_for_Daily_Hospital_COVID19_Reporting.xlsx"
 * relatedArtifact[3].display = "Template for Daily Hospital COVID-19 Reporting.xlsx"
 * relatedArtifact[3].label = "Excel Spreadsheet template for reporting to FEMA"

 * group.code.coding = http://ainq.com/fhir/us/saner/CodeSystem/SanerPopulationMeasures#positivePercent
 * group.code.coding.display = "Cumulative Percent Positive among Resulted Tests"
 * group.code.text = "# of total positive results to released date / # of total tests results released to date"

 * group.population.code.coding = http://ainq.com/fhir/us/saner/CodeSystem/SanerPopulationMeasures#totalOrders
 * group.population.code.coding.display = "Cumulative Diagnostic Tests Ordered/Recieved"
 * group.population.code.coding[1] = http://terminology.hl7.org/CodeSystem/measure-population#initial-population
 * group.population.code.text = "All tests ordered to date."
 * group.population.criteria.name = "totalOrders"
 * group.population.criteria.description = ""
 * group.population.criteria.language = http://hl7.org/fhir/expression-language#text/fhirpath
 * group.population.criteria.expression = """
 ServiceRequest.where(
    authoredOn.toDate() = %reportingPeriod /* May need to change logic to support ranges for reportingPeriod */
    and status in ('active', 'completed')
    and intent in ('order', 'orginal-order', 'reflex-order', 'filler-order', 'instance-order')
)"""
 * group.population.description = ""

 * group.population[1].code.coding = http://ainq.com/fhir/us/saner/CodeSystem/SanerPopulationMeasures#allReports
 * group.population[1].code.coding.display = "All Reports To Date"
 * group.population[1].code.coding[1] = http://terminology.hl7.org/CodeSystem/measure-population#measure-population
 * group.population[1].code.text = "Reports to date including corrected, amended and canceled reports"
 * group.population[1].criteria.name = "allReports"
 * group.population[1].criteria.description = "Diagnostic Reports provided in response to totalOrders"
 * group.population[1].criteria.language = http://hl7.org/fhir/expression-language#text/fhirpath
 * group.population[1].criteria.expression = "DiagnosticReport.where(basedOn in %totalOrders)"
 * group.population[1].description = "This is in intermediate population used to simplify calculations"

 * group.population[2].code.coding = http://ainq.com/fhir/us/saner/CodeSystem/SanerPopulationMeasures#latestReports
 * group.population[2].code.coding.display = "Cumulative Diagnostic Tests Ordered/Recieved"
 * group.population[2].code.coding[1] = http://terminology.hl7.org/CodeSystem/measure-population#measure-population
 * group.population[2].code.text = "Latest Reports to date for each order"
 * group.population[2].criteria.name = "latestReports"
 * group.population[2].criteria.description = "Most recent diagnostic reports provided in response to totalOrders"
 * group.population[2].criteria.language = http://hl7.org/fhir/expression-language#text/fhirpath
 * group.population[2].criteria.expression = ""
 * group.population[2].description = "This is in intermediate population used to simplify calculations"

 * group.population[3].code.coding = http://ainq.com/fhir/us/saner/CodeSystem/SanerPopulationMeasures#rejected
 * group.population[3].code.coding.display = "Cumulative Specimens Rejected*"
 * group.population[3].code.coding[1] = http://terminology.hl7.org/CodeSystem/measure-population#denominator-exclusion
 * group.population[3].code.text = "All specimens rejected for testing to date"
 * group.population[3].criteria.name = "rejected"
 * group.population[3].criteria.description = "DiagnosticReport for COVID-19 where the report is unavailable because the measurement was not started or not completed."
 * group.population[3].criteria.language = http://hl7.org/fhir/expression-language#text/fhirpath
 * group.population[3].criteria.expression = "DiagnosticReport.where(status = 'cancelled' and code in %ValueSet-COVID19DiagnosticTest)"
 * group.population[3].description = ""

 * group.population[4].code.coding = http://ainq.com/fhir/us/saner/CodeSystem/SanerPopulationMeasures#totalTestResults
 * group.population[4].code.coding.display = "Cumulative Tests Performed"
 * group.population[4].code.coding[1] = http://terminology.hl7.org/CodeSystem/measure-population#denominator
 * group.population[4].code.text = "All tests with results released to date"
 * group.population[4].criteria.name = "totalTestResults"
 * group.population[4].criteria.description = ""
 * group.population[4].criteria.language = http://hl7.org/fhir/expression-language#text/fhirpath
 * group.population[4].criteria.expression = """ServiceRequest.where(
    status in ('active', 'completed')
    and intent in ('order', 'orginal-order', 'reflex-order', 'filler-order', 'instance-order')
)"""
 * group.population[4].description = ""

 * group.population[5].code.coding = http://ainq.com/fhir/us/saner/CodeSystem/SanerPopulationMeasures#positive
 * group.population[5].code.coding.display = "Cumulative Positive COVID-19 Tests"
 * group.population[5].code.coding[1] = http://terminology.hl7.org/CodeSystem/measure-population#numerator
 * group.population[5].code.text = "All positive test results released to date"
 * group.population[5].criteria.name = "positive"
 * group.population[5].criteria.description = "The result is positive for COVID-19"
 * group.population[5].criteria.language = http://hl7.org/fhir/expression-language#text/fhirpath
 * group.population[5].criteria.expression = "DiagnosticReport.where($this in %totalTestResults and conclusionCode in %ValueSet-ConfirmedCOVID19Diagnosis)"
 * group.population[5].description = ""
