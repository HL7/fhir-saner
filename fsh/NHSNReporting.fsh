// This sheet convert output to FHIR Shorthand for generating measures.
Instance: CDCPatientImpactAndHospitalCapacity
InstanceOf: PublicHealthMeasure
Title: "CDC Patient Impact and Hospital Capacity"
Description: "This measure demonstrates reporting on bed availability and use at a facility location based on CDC/NHSN reporting requirements."
Mixins: SanerDefinitionContent
Usage: #example
 * name = "CDCPatientImpactAndHospitalCapacity"
 * url = "http://hl7.org/fhir/us/saner/Measure/CDCPatientImpactAndHospitalCapacity"
 * title = "Patient Impact and Hospital Capacity"  // Official name of measure being represented as given by the author
 * useContext.code = http://terminology.hl7.org/CodeSystem/usage-context-type#focus
 * useContext.valueCodeableConcept = http://snomed.info/sct#840539006 "COVID-19"
 * definition = """Ventilator
: Any device used to support, assist or control respiration (inclusive of the weaning period) through the application of positive
pressure to the airway when delivered via an artificial airway, specifically an oral/nasal endotracheal or tracheostomy tube.
Note: Ventilation and lung expansion devices that deliver positive pressure to the airway (for example: CPAP, BiPAP, bi-level, IPPB and
PEEP) via non-invasive means (for example: nasal prongs, nasal mask, full face mask, total mask, etc.) are not considered ventilators
unless positive pressure is delivered via an artificial airway (oral/nasal endotracheal or tracheostomy tube).

Beds
: Baby beds in mom's room count as 1 bed, even if there are multiple baby beds
Follow-up in progress if staffed is less than licensed.
Total includes all beds, even if with surge beds it exceeds licensed beds.

ICU beds
: Include NICU (from CDC Webinar 31-Mar-2020) (outstanding question on burn unit)
"""
 * author.name = "Centers for Disease Control/National Healthcare Safety Network (CDC/NHSN)"  // Fully spelled out name (Acronym)
 * author.telecom.system = #email
 * author.telecom.value = "mailto:nhsn@cdc.gov"  // adding the url schema so that tooling won't be annoyed.
 * relatedArtifact[0].type = #documentation
 * relatedArtifact[0].url = "https://www.cdc.gov/nhsn/acute-care-hospital/covid19/"
 * relatedArtifact[0].label = "NHSN COVID-19 Reporting"  // Descriptive Text to display in a Link
 * relatedArtifact[0].display = "CDC/NHSN COVID-19 Patient Impact & Hospital Capacity Module Home Page" // Title of the link target page
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

// Describe the group of populations being reported, and WHAT this group counts.
 * group.code.coding = MeasureGroupSystem#Beds
 * group.code.coding.display = "Beds"

 * group.code.text = "Hospital Bed Reporting"

 * group.extension[MeasureGroupAttributes].extension[scoring].valueCodeableConcept = http://terminology.hl7.org/CodeSystem/measure-scoring#continuous-variable
 * group.extension[MeasureGroupAttributes].extension[type].valueCodeableConcept = http://terminology.hl7.org/CodeSystem/measure-type#structure
 * group.extension[MeasureGroupAttributes].extension[improvementNotation].valueCodeableConcept = http://terminology.hl7.org/CodeSystem/measure-improvement-notation#increase
 * group.extension[MeasureGroupAttributes].extension[subject].valueCodeableConcept.coding[0] = http://hl7.org/fhir/resource-types#Location
 * group.extension[MeasureGroupAttributes].extension[subject].valueCodeableConcept.coding[1] = http://snomed.info/sct#91537007
 * group.extension[MeasureGroupAttributes].extension[subject].valueCodeableConcept.coding[1].display = "Hospital bed, device (physical object)"
 * group.extension[MeasureGroupAttributes].extension[subject].valueCodeableConcept.text = "Hospital Beds"
 * group.extension[MeasureGroupAttributes].extension[rateAggregation].valueString = "aggregable-by-period"

 // Describe the initial population for this Measure Group
 * group.population.code = MeasurePopulationSystem#numTotBeds
 * group.population.code.coding.display = "All Hospital Beds"
 * group.population.code.coding[1] = http://terminology.hl7.org/CodeSystem/measure-population#initial-population
 * group.population.code.text = "Total number of all Inpatient and outpatient beds, including all staffed,ICU, licensed, and overflow (surge) beds used for inpatients or outpatients"
 * group.population.description = """Enter the total number of all hospital beds, including inpatient and outpatient beds. All staffed, licensed,
and overflow and surge/expansion beds used for inpatients or outpatients. This includes ICU beds."""
 * group.population.criteria.name = "numTotBeds"
 * group.population.criteria.description = "A bed in any location"
 * group.population.criteria.language = http://hl7.org/fhir/expression-language#text/fhirpath
 * group.population.criteria.expression = "Device.where(type in %ValueSet-BedDeviceTypes and location.physicalType in %ValueSet-BedLocationTypes)"

// Describe the population strata for numBeds
 * group.population[1].code.coding = MeasurePopulationSystem#numBeds
 * group.population[1].code.coding.display = "Hospital Inpatient Beds"
// * group.population[1].code.coding[1] = http://terminology.hl7.org/CodeSystem/measure-population#measure-population
 * group.population[1].code.text = "Inpatient beds, including all staffed, licensed, and overflow (surge) beds used for inpatients"
 * group.population[1].criteria.name = "numBeds"
 * group.population[1].criteria.description = "A Bed where the location is an inpatient location."
 * group.population[1].criteria.language = http://hl7.org/fhir/expression-language#text/fhirpath
 * group.population[1].criteria.expression = "%numTotBeds.where(location.type in %ValueSet-InpatientLocations)"
 * group.population[1].description = "Required. Enter the total number of all inpatient beds, including all staffed, licensed, and overflow and surge/expansion beds created for inpatient care. This includes intensive care unit (ICU) beds."

// Describe the population for numBedsOcc
 * group.population[2].code.coding = MeasurePopulationSystem#numBedsOcc
 * group.population[2].code.coding.display = "Hospital Inpatient Bed Occupancy"
 * group.population[2].code.text = "Total number of staffed inpatient beds that are occupied"
// * group.population[2].code.coding[1] = http://terminology.hl7.org/CodeSystem/measure-population#measure-population
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
 * group.population[3].code.coding = MeasurePopulationSystem#numICUBeds
 * group.population[3].code.coding.display = "ICU Beds"
 * group.population[3].code.text = "ICU Bed Occupancy"
// * group.population[3].code.coding[1] = http://terminology.hl7.org/CodeSystem/measure-population#measure-population
 * group.population[3].criteria.name = "numICUBeds"
 * group.population[3].criteria.description = "A Bed where the location is an inpatient ICU location."
 * group.population[3].criteria.language = http://hl7.org/fhir/expression-language#text/fhirpath
 * group.population[3].criteria.expression = "%numBeds.where(location.type in %ValueSet-ICULocations)"
 * group.population[3].description = """Enter the total number of staffed Intensive Care Unit (ICU) beds.

CDC Webinar 31-Mar-2020:
ICU beds include NICU
"""

// Describe the population for numICUBedsOcc
 * group.population[4].code.coding = MeasurePopulationSystem#numICUBedsOcc
 * group.population[4].code.coding.display = "ICU Bed Occupancy"
// * group.population[4].code.coding[1] = http://terminology.hl7.org/CodeSystem/measure-population#measure-population
 * group.population[4].code.text = """Total number of staffed inpatient intensive care unit (ICU) beds"""
 * group.population[4].criteria.name = "numICUBedsOcc"
 * group.population[4].criteria.description = "An ICU Bed that is occupied."
 * group.population[4].criteria.language = http://hl7.org/fhir/expression-language#text/fhirpath
 * group.population[4].criteria.expression = "%numICUBeds.where(location.operationalStatus = %ValueSet-OccupiedBed)"
 * group.population[4].description = """Enter the total number of staffed ICU beds occupied by patients at the time the data is collected.

CDC Webinar 31-Mar-2020:
ICU beds include NICU"""

 * group[1].code.coding = MeasureGroupSystem#Ventilators
 * group[1].code.coding.display = "Ventilators"
 * group[1].code.text = "Hospital Ventilators Reporting"

 * group[1].extension[MeasureGroupAttributes].extension[scoring].valueCodeableConcept = http://terminology.hl7.org/CodeSystem/measure-scoring#continuous-variable
 * group[1].extension[MeasureGroupAttributes].extension[type].valueCodeableConcept = http://terminology.hl7.org/CodeSystem/measure-type#structure
 * group[1].extension[MeasureGroupAttributes].extension[improvementNotation].valueCodeableConcept = http://terminology.hl7.org/CodeSystem/measure-improvement-notation#decrease
 * group[1].extension[MeasureGroupAttributes].extension[subject].valueCodeableConcept.coding[0] = http://hl7.org/fhir/resource-types#Device
 * group[1].extension[MeasureGroupAttributes].extension[subject].valueCodeableConcept.coding[1] = http://snomed.info/sct#706172005
 * group[1].extension[MeasureGroupAttributes].extension[subject].valueCodeableConcept.coding[1].display = "Ventilator (physical object)"
 * group[1].extension[MeasureGroupAttributes].extension[subject].valueCodeableConcept.text = "Ventilator"

 * group[1].extension[MeasureGroupAttributes].extension[rateAggregation].valueString = "aggregable-by-period"

// Describe initial population
 * group[1].population.code.coding = MeasurePopulationSystem#numVent
 * group[1].population.code.coding.display = "Mechanical Ventilators"
 * group[1].population.code.coding[1] = http://terminology.hl7.org/CodeSystem/measure-population#initial-population
 * group[1].population.code.text = "Total number of ventilators available"
 * group[1].population.description = """Enter the total number of mechanical ventilators, including anesthesia machines and
portable/transport ventilators available in the facility.
Include BiPAP machines if the hospital uses BiPAP to deliver positive pressure ventilation via artificial airways."""
 * group[1].population.criteria.name = "numVent"
 * group[1].population.criteria.description = "A Device that is used for ventilation and could be used (e.g., not broken, transferred, etc)"
 * group[1].population.criteria.language = http://hl7.org/fhir/expression-language#text/fhirpath
 * group[1].population.criteria.expression = "Device.where(type in %ValueSet-VentilatorDevices and status = active)"
// Describe the population for numVentUse
 * group[1].population[1].code.coding = MeasurePopulationSystem#numVentUse
 * group[1].population[1].code.coding.display = "Mechanical Ventilators in Use"
// * group[1].population[1].code.coding[1] = http://terminology.hl7.org/CodeSystem/measure-population#measure-population
 * group[1].population[1].code.text = "Total number of ventilators in use"
 * group[1].population[1].criteria.name = "numVentUse"
 * group[1].population[1].criteria.description = "A ventilator that is attached to a patient."
 * group[1].population[1].criteria.language = http://hl7.org/fhir/expression-language#text/fhirpath
 * group[1].population[1].criteria.expression = "%numVent.where(patient!={})"
 * group[1].population[1].description = """Enter the total number of mechanical ventilators use at the time the data is collected, including anesthesia
machines and portable/transport ventilators. Include BiPAP machines if the hospital uses BiPAP to deliver positive pressure ventilation via artificial airways."""

 * group[2].code.coding = MeasureGroupSystem#Encounters
 * group[2].code.coding.display = "Encounters"
 * group[2].code.text = "Hospital COVID-19 Encounters Reporting"

 * group[2].extension[MeasureGroupAttributes].extension[scoring].valueCodeableConcept = http://terminology.hl7.org/CodeSystem/measure-scoring#continuous-variable
 * group[2].extension[MeasureGroupAttributes].extension[type].valueCodeableConcept = http://terminology.hl7.org/CodeSystem/measure-type#structure
 * group[2].extension[MeasureGroupAttributes].extension[improvementNotation].valueCodeableConcept = http://terminology.hl7.org/CodeSystem/measure-improvement-notation#decrease
 * group[2].extension[MeasureGroupAttributes].extension[subject].valueCodeableConcept.coding[0] = http://hl7.org/fhir/resource-types#Encounter

 * group[2].extension[MeasureGroupAttributes].extension[subject].valueCodeableConcept.coding[1] = http://snomed.info/sct#308335008
 * group[2].extension[MeasureGroupAttributes].extension[subject].valueCodeableConcept.coding[1].display = "Patient encounter procedure (procedure)"
 * group[2].extension[MeasureGroupAttributes].extension[subject].valueCodeableConcept.text = "Encounter"

 * group[2].extension[MeasureGroupAttributes].extension[rateAggregation].valueString = "aggregable-by-period"


// describe the initial population
 * group[2].population.code.coding = MeasurePopulationSystem#numC19Pats
 * group[2].population.code.coding.display = "All COVID-19 Confirmed or Suspected Patients"
 * group[2].population.code.coding[1] = http://terminology.hl7.org/CodeSystem/measure-population#initial-population
 * group[2].population.code.text = "Patients with suspected or confirmed COVID-19 in any location."
 * group[2].population.criteria.name = "numC19Pats"
 * group[2].population.criteria.description = """Active encounters where the encounter diagnosis is suspected or confirmed COVID-19,
 or a Condition of suspected or confirmed COVID-19 was created during that encounter."""
 * group[2].population.criteria.language = http://hl7.org/fhir/expression-language#text/fhirpath
 * group[2].population.criteria.expression = """Encounter.where(clinicalStatus = 'active' and diagnosis.condition.ofType(Condition).code in %ValueSet-SuspectedOrDiagnosedCOVID19)
 | Encounter.where(clinicalStatus = "active" and Condition.where(code in %ValueSet-SuspectedOrDiagnosedCOVID19).encounter = $this)
 """
 * group[2].population.description = """Enter the number of patients in any location at the time the data is collected who have suspected or confirmed
COVID-19. This includes the patients with laboratory-confirmed or clinically diagnosed COVID-19.
Confirmed: A patient with a laboratory confirmed COVID-19 diagnosis
Suspected: A patient without a laboratory confirmed COVID-19 diagnosis who, in accordance with CDC’s Interim Public Health Guidance
for Evaluating Persons Under Investigation (PUIs), has signs and symptoms compatible with COVID-19 (most patients with confirmed
COVID-19 have developed fever and/or symptoms of acute respiratory illness, such as cough, shortness of breath or myalgia/fatigue)."""

// Describe the criteria for numC19VentPats
 * group[2].population[1].code.coding = MeasurePopulationSystem#numC19VentPats
 * group[2].population[1].code.coding.display = "Ventilated COVID-19 Patients"
// * group[2].population[1].code.coding[1] = http://terminology.hl7.org/CodeSystem/measure-population#measure-population
 * group[2].population[1].code.text = "Patients in any location who have suspected or confirmed COVID-19 and are currently on a ventilator."
 * group[2].population[1].criteria.name = "numC19VentPats"
 * group[2].population[1].criteria.description = "A COVID-19 encounter where the patient is ventilated"
 * group[2].population[1].criteria.language = http://hl7.org/fhir/expression-language#text/fhirpath
 * group[2].population[1].criteria.expression = "%numC19Pats.where(Device.where(type in %ValueSet-VentilatorDevices and status = active).patient = $this.patient)"
 * group[2].population[1].description = """Enter the number of patients in any location who have suspected or confirmed COVID-19 and are
currently on a mechanical ventilator* at the time the data is collected. This includes the patients with laboratory-confirmed or clinically
diagnosed COVID-19."""

// Describe the criteria for numC19HospPats
 * group[2].population[2].code.coding = MeasurePopulationSystem#numC19HospPats
 * group[2].population[2].code.coding.display = "Hospitalized COVID-19 Patients"
// * group[2].population[2].code.coding[1] = http://terminology.hl7.org/CodeSystem/measure-population#measure-population
 * group[2].population[2].code.text = "Patients currently hospitalized in an inpatient care location who have suspected or confirmed COVID-19"
 * group[2].population[2].criteria.name = "numC19HospPats"
 * group[2].population[2].criteria.description = "An COVID-19 encounter where the active location is an inpatient location"
 * group[2].population[2].criteria.language = http://hl7.org/fhir/expression-language#text/fhirpath
 * group[2].population[2].criteria.expression = "%numC19Pats.where(location.where(status='active' and type in %ValueSet-InpatientLocations))"
 * group[2].population[2].description = """Enter the number of patients hospitalized in an inpatient bed at the time the data is collected
 who have suspected or confirmed COVID-19. This includes the patients with laboratory-confirmed or clinically diagnosed COVID-19.
Confirmed: A patient with a laboratory confirmed COVID-19 diagnosis
Suspected: A patient without a laboratory confirmed COVID-19 diagnosis who, in accordance with CDC’s Interim Public Health Guidance
for Evaluating Persons Under Investigation (PUIs), has signs and symptoms compatible with COVID-19 (most patients with confirmed
COVID-19 have developed fever and/or symptoms of acute respiratory illness, such as cough, shortness of breath or myalgia/fatigue)."""

// Describe the criteria for numC19MechVentPats
 * group[2].population[3].code.coding = MeasurePopulationSystem#numC19MechVentPats
 * group[2].population[3].code.coding.display = "Hospitalized and Ventilated COVID-19 Patients"
// * group[2].population[3].code.coding[1] = http://terminology.hl7.org/CodeSystem/measure-population#measure-population
 * group[2].population[3].code.text = "Patients currently hospitalized in an inpatient bed who have suspected or confirmed COVID-19 and are on a mechanical ventilator"
 * group[2].population[3].criteria.name = "numC19OFMechVentPats"
 * group[2].population[3].criteria.description = "An COVID-19 encounter in an inpatient setting on a ventilator"
 * group[2].population[3].criteria.language = http://hl7.org/fhir/expression-language#text/fhirpath
 * group[2].population[3].criteria.expression = "%numC19HospPats.intersect(%numC19VentPats)"
 * group[2].population[3].description = """Enter the number of patients hospitalized in an inpatient bed who have
suspected or confirmed COVID-19 and are currently on a mechanical ventilator* at the time the data is collected . This includes the
patients with laboratory-confirmed or clinically diagnosed COVID-19."""

// Describe the criteria for numC19HOPats
 * group[2].population[4].code.coding = MeasurePopulationSystem#numC19HOPats
 * group[2].population[4].code.coding.display = "Hospital Onset COVID-19 Patients"
// * group[2].population[4].code.coding[1] = http://terminology.hl7.org/CodeSystem/measure-population#measure-population
 * group[2].population[4].code.text = """Patients currently hospitalized in an inpatient bed with onset of suspected or
confirmed COVID-19 fourteen or more days after hospital admission due to a condition other than COVID-19"""
 * group[2].population[4].criteria.name = "numC19HOPats"
 * group[2].population[4].criteria.description = "Encounters associated with suspected or confirmed COVID-19 with onset > 14 days after start"
 * group[2].population[4].criteria.language = http://hl7.org/fhir/expression-language#text/fhirpath
 * group[2].population[4].criteria.expression = """Condition.where(
   code in %ValueSet-SuspectedOrDiagnosedCOVID19
   and encounter in %numC19HospPats
   and onset + 14 days > encounter.period.start).encounter"""
 * group[2].population[4].description = """Enter the number of patients hospitalized in an inpatient bed at the time the data is
collected with onset of suspected or confirmed COVID-19 fourteen or more days after hospitalization (admission date = hospital
day 1). This includes laboratory-confirmed or clinically diagnosed COVID-19 cases."""


// Describe the criteria for numC19OverflowPats
 * group[2].population[5].code.coding = MeasurePopulationSystem#numC19OverflowPats
 * group[2].population[5].code.coding.display = "ED/Overflow COVID-19 Patients"
// * group[2].population[5].code.coding[1] = http://terminology.hl7.org/CodeSystem/measure-population#measure-population
 * group[2].population[5].code.text = "Patients with suspected or confirmed COVID-19 who are currently in the Emergency Department (ED) or any overflow location awaiting an inpatient bed"
 * group[2].population[5].criteria.name = "numC19OverflowPats"
 * group[2].population[5].criteria.description = "An COVID-19 encounter where the active location is an ED or Overflow location"
 * group[2].population[5].criteria.language = http://hl7.org/fhir/expression-language#text/fhirpath
 * group[2].population[5].criteria.expression = "%numC19Pats.where(location.where(status='active' and type in %ValueSet-EDorOverflowLocations))"
 * group[2].population[5].description = """Enter the number of patients with suspected or confirmed COVID-19 who are in the
Emergency Department(ED) or any overflow/expansion location awaiting placement in an inpatient bed at the time the data
is collected . This includes patients with laboratory-confirmed or clinically diagnosed COVID-19. Overflow locations include any physical
locations created to accommodate patients include but not limited to 24-hour observation units, hallways, parking lots, or tents."""

// Describe the criteria for numC19OFMechVentPats
 * group[2].population[6].code.coding = MeasurePopulationSystem#numC19OFMechVentPats
 * group[2].population[6].code.coding.display = "ED/Overflow and Ventilated COVID-19 Patients"
// * group[2].population[6].code.coding[1] = http://terminology.hl7.org/CodeSystem/measure-population#measure-population
 * group[2].population[6].code.text = "Patients with suspected or confirmed COVID-19 who currently are in the ED or any overflow location awaiting an inpatient bed and on a mechanical ventilator"
 * group[2].population[6].criteria.name = "numC19OFMechVentPats"
 * group[2].population[6].criteria.description = "An COVID-19 encounter where the active location is an ED or Overflow location"
 * group[2].population[6].criteria.language = http://hl7.org/fhir/expression-language#text/fhirpath
 * group[2].population[6].criteria.expression = "%numC19OverflowPats.intersect(%numC19VentPats)"
 * group[2].population[6].description = """Enter the number of patients with suspected or confirmed COVID-19 who are in the ED or any overflow/expansion location on a
mechanical ventilator* at the time the data is collected . This includes patients with laboratory-confirmed or clinically diagnosed COVID-19."""

// Describe the criteria for numC19Died
 * group[2].population[7].code.coding = MeasurePopulationSystem#numC19Died
 * group[2].population[7].code.coding.display = "COVID-19 Patient Deaths"
// * group[2].population[7].code.coding[1] = http://terminology.hl7.org/CodeSystem/measure-population#measure-population
 * group[2].population[7].code.text = "Patients with suspected or confirmed COVID-19 who died in the hospital, ED or any overflow location on the date for which you are reporting."
 * group[2].population[7].criteria.name = "numC19Died"
 * group[2].population[7].criteria.description = "All C19 Patients who have died in an encounter during the reporting period."
 * group[2].population[7].criteria.language = http://hl7.org/fhir/expression-language#text/fhirpath
 * group[2].population[7].criteria.expression = "%numC19Pats.hospitalization.dispostion in %ValueSet-PatientDied"
 * group[2].population[7].description = """Enter the number of patients with suspected or confirmed COVID-19 who died in the hospital, ED, or any overflow location. This
includes patients with laboratory-confirmed or clinically diagnosed COVID-19. Please enter the count of deaths newly occurred, at the time
the data is collected instead of the cumulated number of deaths."""


