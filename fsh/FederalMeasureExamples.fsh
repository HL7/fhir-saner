Instance: SANERnumTotBeds
InstanceOf: Measure
Title: "Total Acute Beds"
 * name = "numTotBeds"
 * status = #draft
 * experimental = true
 * title = "Total Acute Beds"
 * publisher = "CDC"
 * contact.telecom.system = #email
 * contact.telecom.value = "nhsn@cdc.gov"
 * description = "Total number of all Inpatient and outpatient beds, including all staffed,ICU, licensed, and overflow (surge) beds used for inpatients or outpatients"
 * useContext.code = http://terminology.hl7.org/CodeSystem/usage-context-type#focus
 * useContext.valueCodeableConcept = http://snomed.info/sct#840539006 "COVID-19"
 * topic = http://snomed.info/sct#91537007 "Hospital bed, device (physical object)"
 * jurisdiction = urn:iso:std:iso:3166#US
 * rateAggregation = "last day"
 * relatedArtifact.type = #documentation
 * relatedArtifact.url = "https://www.cdc.gov/nhsn/pdfs/covid19/57.130-toi-508.pdf"
 * group.population[0].code = http://terminology.hl7.org/CodeSystem/measure-population#measure-population
 * group.population[0].criteria.language = urn:ietf:bcp:13#text/plain
 * group.population[1].code = http://terminology.hl7.org/CodeSystem/measure-population#initial-population
 * group.population[1].criteria.language = urn:ietf:bcp:13#text/plain
 * group.population[1].description = "All Beds"
 * guidance = """Enter the total number of all hospital beds, including
inpatient and outpatient beds. All staffed, licensed,
and overflow and surge/expansion beds used for
inpatients or outpatients. This includes ICU beds."""

Instance: SANERnumICUBedsOcc
InstanceOf: Measure
Title: "Occupied ICU Beds "
 * name = "numICUBedsOcc"
 * status = #draft
 * experimental = true
 * title = "Occupied ICU Beds "
 * publisher = "CDC"
 * contact.telecom.system = #email
 * contact.telecom.value = "nhsn@cdc.gov"
 * description = "Total number of staffed inpatient ICU beds that are occupied"
 * useContext.code = http://terminology.hl7.org/CodeSystem/usage-context-type#focus
 * useContext.valueCodeableConcept = http://snomed.info/sct#840539006 "COVID-19"
 * topic = http://snomed.info/sct#91537007 "Hospital bed, device (physical object)"
 * jurisdiction = urn:iso:std:iso:3166#US
 * rateAggregation = "last day"
 * relatedArtifact.type = #documentation
 * relatedArtifact.url = "https://www.cdc.gov/nhsn/pdfs/covid19/57.130-toi-508.pdf"
 * group.population[0].code = http://terminology.hl7.org/CodeSystem/measure-population#measure-population
 * group.population[0].criteria.language = urn:ietf:bcp:13#text/plain
 * group.population[1].code = http://terminology.hl7.org/CodeSystem/measure-population#initial-population
 * group.population[1].criteria.language = urn:ietf:bcp:13#text/plain
 * group.population[1].description = "All Beds"
 * guidance = """Enter the total number of staffed ICU beds
occupied by patients at the time the data is
collected."""

Instance: SANERnumICUBeds
InstanceOf: Measure
Title: "Total Staffed ICU Beds"
 * name = "numICUBeds"
 * status = #draft
 * experimental = true
 * title = "Total Staffed ICU Beds"
 * publisher = "CDC"
 * contact.telecom.system = #email
 * contact.telecom.value = "nhsn@cdc.gov"
 * description = "Total number of staffed inpatient intensive care unit (ICU) beds"
 * useContext.code = http://terminology.hl7.org/CodeSystem/usage-context-type#focus
 * useContext.valueCodeableConcept = http://snomed.info/sct#840539006 "COVID-19"
 * topic = http://snomed.info/sct#91537007 "Hospital bed, device (physical object)"
 * jurisdiction = urn:iso:std:iso:3166#US
 * rateAggregation = "last day"
 * relatedArtifact.type = #documentation
 * relatedArtifact.url = "https://www.cdc.gov/nhsn/pdfs/covid19/57.130-toi-508.pdf"
 * group.population[0].code = http://terminology.hl7.org/CodeSystem/measure-population#measure-population
 * group.population[0].criteria.language = urn:ietf:bcp:13#text/plain
 * group.population[1].code = http://terminology.hl7.org/CodeSystem/measure-population#initial-population
 * group.population[1].criteria.language = urn:ietf:bcp:13#text/plain
 * group.population[1].description = "All Beds"
 * guidance = """Enter the total number of staffed Intensive Care
Unit (ICU) beds."""

Instance: SANERnumBedsOcc
InstanceOf: Measure
Title: "Available Staffed Inpatient Beds"
 * name = "numBedsOcc"
 * status = #draft
 * experimental = true
 * title = "Available Staffed Inpatient Beds"
 * publisher = "CDC"
 * contact.telecom.system = #email
 * contact.telecom.value = "nhsn@cdc.gov"
 * description = "Total number of staffed inpatient beds that are occupied"
 * useContext.code = http://terminology.hl7.org/CodeSystem/usage-context-type#focus
 * useContext.valueCodeableConcept = http://snomed.info/sct#840539006 "COVID-19"
 * topic = http://snomed.info/sct#91537007 "Hospital bed, device (physical object)"
 * jurisdiction = urn:iso:std:iso:3166#US
 * rateAggregation = "last day"
 * relatedArtifact.type = #documentation
 * relatedArtifact.url = "https://www.cdc.gov/nhsn/pdfs/covid19/57.130-toi-508.pdf"
 * group.population[0].code = http://terminology.hl7.org/CodeSystem/measure-population#measure-population
 * group.population[0].criteria.language = urn:ietf:bcp:13#text/plain
 * group.population[1].code = http://terminology.hl7.org/CodeSystem/measure-population#initial-population
 * group.population[1].criteria.language = urn:ietf:bcp:13#text/plain
 * group.population[1].description = "All Beds"
 * guidance = ""

Instance: SANERnumbeds
InstanceOf: Measure
Title: "Total Inpatient Beds"
 * name = "numbeds"
 * status = #draft
 * experimental = true
 * title = "Total Inpatient Beds"
 * publisher = "CDC"
 * contact.telecom.system = #email
 * contact.telecom.value = "nhsn@cdc.gov"
 * description = "Inpatient beds, including all staffed, licensed, and overflow (surge) beds used for inpatients"
 * useContext.code = http://terminology.hl7.org/CodeSystem/usage-context-type#focus
 * useContext.valueCodeableConcept = http://snomed.info/sct#840539006 "COVID-19"
 * topic = http://snomed.info/sct#91537007 "Hospital bed, device (physical object)"
 * jurisdiction = urn:iso:std:iso:3166#US
 * rateAggregation = "last day"
 * relatedArtifact.type = #documentation
 * relatedArtifact.url = "https://www.cdc.gov/nhsn/pdfs/covid19/57.130-toi-508.pdf"
 * group.population[0].code = http://terminology.hl7.org/CodeSystem/measure-population#measure-population
 * group.population[0].criteria.language = urn:ietf:bcp:13#text/plain
 * group.population[1].code = http://terminology.hl7.org/CodeSystem/measure-population#initial-population
 * group.population[1].criteria.language = urn:ietf:bcp:13#text/plain
 * group.population[1].description = "All Beds"
 * guidance = ""

Instance: SANERnumC19HospPats
InstanceOf: Measure
Title: "Covid Confirmed or Suspected Patients"
 * name = "numC19HospPats"
 * status = #draft
 * experimental = true
 * title = "Covid Confirmed or Suspected Patients"
 * publisher = "CDC"
 * contact.telecom.system = #email
 * contact.telecom.value = "nhsn@cdc.gov"
 * description = "Patients currently hospitalized in an inpatient care location who have suspected or confirmed COVID-19"
 * useContext.code = http://terminology.hl7.org/CodeSystem/usage-context-type#focus
 * useContext.valueCodeableConcept = http://snomed.info/sct#840539006 "COVID-19"
 * topic = http://snomed.info/sct#116154003 "Patient (person)"
 * jurisdiction = urn:iso:std:iso:3166#US
 * rateAggregation = "last day"
 * relatedArtifact.type = #documentation
 * relatedArtifact.url = "https://www.cdc.gov/nhsn/pdfs/covid19/57.130-toi-508.pdf"
 * group.population[0].code = http://terminology.hl7.org/CodeSystem/measure-population#measure-population
 * group.population[0].criteria.language = urn:ietf:bcp:13#text/plain
 * group.population[1].code = http://terminology.hl7.org/CodeSystem/measure-population#initial-population
 * group.population[1].criteria.language = urn:ietf:bcp:13#text/plain
 * group.population[1].description = "Patient Census"
 * guidance = ""

Instance: SANERnumC19MechVentPats
InstanceOf: Measure
Title: "Covid Confirmed or Suspected Patients on Ventilation"
 * name = "numC19MechVentPats"
 * status = #draft
 * experimental = true
 * title = "Covid Confirmed or Suspected Patients on Ventilation"
 * publisher = "CDC"
 * contact.telecom.system = #email
 * contact.telecom.value = "nhsn@cdc.gov"
 * description = "Patients hospitalized in an NHSN inpatient care location who have suspected or confirmed COVID-19 and are on a mechanical ventilator"
 * useContext.code = http://terminology.hl7.org/CodeSystem/usage-context-type#focus
 * useContext.valueCodeableConcept = http://snomed.info/sct#840539006 "COVID-19"
 * topic = http://snomed.info/sct#116154003 "Patient (person)"
 * jurisdiction = urn:iso:std:iso:3166#US
 * rateAggregation = "last day"
 * relatedArtifact.type = #documentation
 * relatedArtifact.url = "https://www.cdc.gov/nhsn/pdfs/covid19/57.130-toi-508.pdf"
 * group.population[0].code = http://terminology.hl7.org/CodeSystem/measure-population#measure-population
 * group.population[0].criteria.language = urn:ietf:bcp:13#text/plain
 * group.population[1].code = http://terminology.hl7.org/CodeSystem/measure-population#initial-population
 * group.population[1].criteria.language = urn:ietf:bcp:13#text/plain
 * group.population[1].description = "Patient Census"
 * guidance = ""

Instance: SANERnumVentUse
InstanceOf: Measure
Title: "In Use Ventilators"
 * name = "numVentUse"
 * status = #draft
 * experimental = true
 * title = "In Use Ventilators"
 * publisher = "CDC"
 * contact.telecom.system = #email
 * contact.telecom.value = "nhsn@cdc.gov"
 * description = "Total number of ventilators in use"
 * useContext.code = http://terminology.hl7.org/CodeSystem/usage-context-type#focus
 * useContext.valueCodeableConcept = http://snomed.info/sct#840539006 "COVID-19"
 * topic = http://snomed.info/sct#91537007 "Hospital bed, device (physical object)"
 * jurisdiction = urn:iso:std:iso:3166#US
 * rateAggregation = "last day"
 * relatedArtifact.type = #documentation
 * relatedArtifact.url = "https://www.cdc.gov/nhsn/pdfs/covid19/57.130-toi-508.pdf"
 * group.population[0].code = http://terminology.hl7.org/CodeSystem/measure-population#measure-population
 * group.population[0].criteria.language = urn:ietf:bcp:13#text/plain
 * group.population[1].code = http://terminology.hl7.org/CodeSystem/measure-population#initial-population
 * group.population[1].criteria.language = urn:ietf:bcp:13#text/plain
 * group.population[1].description = "All devices"
 * guidance = ""

Instance: SANERnumVent
InstanceOf: Measure
Title: "Available Ventilators"
 * name = "numVent"
 * status = #draft
 * experimental = true
 * title = "Available Ventilators"
 * publisher = "CDC"
 * contact.telecom.system = #email
 * contact.telecom.value = "nhsn@cdc.gov"
 * description = "Total number of ventilators available"
 * useContext.code = http://terminology.hl7.org/CodeSystem/usage-context-type#focus
 * useContext.valueCodeableConcept = http://snomed.info/sct#840539006 "COVID-19"
 * topic = http://snomed.info/sct#706172005 "Ventilator Equipment (physical object)"
 * jurisdiction = urn:iso:std:iso:3166#US
 * rateAggregation = "last day"
 * relatedArtifact.type = #documentation
 * relatedArtifact.url = "https://www.cdc.gov/nhsn/pdfs/covid19/57.130-toi-508.pdf"
 * group.population[0].code = http://terminology.hl7.org/CodeSystem/measure-population#measure-population
 * group.population[0].criteria.language = urn:ietf:bcp:13#text/plain
 * group.population[1].code = http://terminology.hl7.org/CodeSystem/measure-population#initial-population
 * group.population[1].criteria.language = urn:ietf:bcp:13#text/plain
 * group.population[1].description = "All devices"
 * guidance = ""

Instance: SANERnumC19HOPats
InstanceOf: Measure
Title: "Covid Confirmed or Suspected Patients with 2-week+ Onset"
 * name = "numC19HOPats"
 * status = #draft
 * experimental = true
 * title = "Covid Confirmed or Suspected Patients with 2-week+ Onset"
 * publisher = "CDC"
 * contact.telecom.system = #email
 * contact.telecom.value = "nhsn@cdc.gov"
 * description = "Patients hospitalized in an NHSN inpatient care location with onset of suspected or confirmed COVID-19 14 or more days after hospitalization"
 * useContext.code = http://terminology.hl7.org/CodeSystem/usage-context-type#focus
 * useContext.valueCodeableConcept = http://snomed.info/sct#840539006 "COVID-19"
 * topic = http://snomed.info/sct#116154003 "Patient (person)"
 * jurisdiction = urn:iso:std:iso:3166#US
 * rateAggregation = "last day"
 * relatedArtifact.type = #documentation
 * relatedArtifact.url = "https://www.cdc.gov/nhsn/pdfs/covid19/57.130-toi-508.pdf"
 * group.population[0].code = http://terminology.hl7.org/CodeSystem/measure-population#measure-population
 * group.population[0].criteria.language = urn:ietf:bcp:13#text/plain
 * group.population[1].code = http://terminology.hl7.org/CodeSystem/measure-population#initial-population
 * group.population[1].criteria.language = urn:ietf:bcp:13#text/plain
 * group.population[1].description = "Patient Census"
 * guidance = ""

Instance: SANERnumC19OverflowPats
InstanceOf: Measure
Title: "Covid Confirmed or Suspected Patients in ED or Overflow awaiting Inpatient Bed"
 * name = "numC19OverflowPats"
 * status = #draft
 * experimental = true
 * title = "Covid Confirmed or Suspected Patients in ED or Overflow awaiting Inpatient Bed"
 * publisher = "CDC"
 * contact.telecom.system = #email
 * contact.telecom.value = "nhsn@cdc.gov"
 * description = "Patients with suspected or confirmed COVID-19 who are in the ED or any overflow location awaiting an inpatient bed"
 * useContext.code = http://terminology.hl7.org/CodeSystem/usage-context-type#focus
 * useContext.valueCodeableConcept = http://snomed.info/sct#840539006 "COVID-19"
 * topic = http://snomed.info/sct#116154003 "Patient (person)"
 * jurisdiction = urn:iso:std:iso:3166#US
 * rateAggregation = "last day"
 * relatedArtifact.type = #documentation
 * relatedArtifact.url = "https://www.cdc.gov/nhsn/pdfs/covid19/57.130-toi-508.pdf"
 * group.population[0].code = http://terminology.hl7.org/CodeSystem/measure-population#measure-population
 * group.population[0].criteria.language = urn:ietf:bcp:13#text/plain
 * group.population[1].code = http://terminology.hl7.org/CodeSystem/measure-population#initial-population
 * group.population[1].criteria.language = urn:ietf:bcp:13#text/plain
 * group.population[1].description = "Patient Census"
 * guidance = ""

Instance: SANERnumC19OFMechVentPats
InstanceOf: Measure
Title: "Covid Confirmed or Suspected Patients in ED or Overflow awaiting Inpatient Bed and Ventilation"
 * name = "numC19OFMechVentPats"
 * status = #draft
 * experimental = true
 * title = "Covid Confirmed or Suspected Patients in ED or Overflow awaiting Inpatient Bed and Ventilation"
 * publisher = "CDC"
 * contact.telecom.system = #email
 * contact.telecom.value = "nhsn@cdc.gov"
 * description = "Patients with suspected or confirmed COVID-19 who are in the ED or any overflow location awaiting an inpatient bed and on a mechanical ventilator"
 * useContext.code = http://terminology.hl7.org/CodeSystem/usage-context-type#focus
 * useContext.valueCodeableConcept = http://snomed.info/sct#840539006 "COVID-19"
 * topic = http://snomed.info/sct#116154003 "Patient (person)"
 * jurisdiction = urn:iso:std:iso:3166#US
 * rateAggregation = "last day"
 * relatedArtifact.type = #documentation
 * relatedArtifact.url = "https://www.cdc.gov/nhsn/pdfs/covid19/57.130-toi-508.pdf"
 * group.population[0].code = http://terminology.hl7.org/CodeSystem/measure-population#measure-population
 * group.population[0].criteria.language = urn:ietf:bcp:13#text/plain
 * group.population[1].code = http://terminology.hl7.org/CodeSystem/measure-population#initial-population
 * group.population[1].criteria.language = urn:ietf:bcp:13#text/plain
 * group.population[1].description = "Patient Census"
 * guidance = ""

Instance: SANERnumC19Died
InstanceOf: Measure
Title: "Covid Confirmed or Suspected Deaths in any hospital or ED Location"
 * name = "numC19Died"
 * status = #draft
 * experimental = true
 * title = "Covid Confirmed or Suspected Deaths in any hospital or ED Location"
 * publisher = "CDC"
 * contact.telecom.system = #email
 * contact.telecom.value = "nhsn@cdc.gov"
 * description = "Patients with suspected or confirmed COVID-19 who died in the hospital, ED, or any overflow location"
 * useContext.code = http://terminology.hl7.org/CodeSystem/usage-context-type#focus
 * useContext.valueCodeableConcept = http://snomed.info/sct#840539006 "COVID-19"
 * topic = http://snomed.info/sct#419620001 "Death (Event)"
 * jurisdiction = urn:iso:std:iso:3166#US
 * rateAggregation = "last day"
 * relatedArtifact.type = #documentation
 * relatedArtifact.url = "https://www.cdc.gov/nhsn/pdfs/covid19/57.130-toi-508.pdf"
 * group.population[0].code = http://terminology.hl7.org/CodeSystem/measure-population#measure-population
 * group.population[0].criteria.language = urn:ietf:bcp:13#text/plain
 * group.population[1].code = http://terminology.hl7.org/CodeSystem/measure-population#initial-population
 * group.population[1].criteria.language = urn:ietf:bcp:13#text/plain
 * group.population[1].description = "All deaths"
 * guidance = ""

Instance: SANERtotalTestResultsIncrease
InstanceOf: Measure
Title: "New Diagnostic Tests Ordered/Received"
 * name = "totalTestResultsIncrease"
 * status = #draft
 * experimental = true
 * title = "New Diagnostic Tests Ordered/Received"
 * publisher = "FEMA"
 * contact.telecom.system = #email
 * contact.telecom.value = "fema-hhs-covid-diagnostics-tf@fema.dhs.gov"
 * description = "Midnight to midnight cutoff, tests ordered on previous date queried"
 * useContext.code = http://terminology.hl7.org/CodeSystem/usage-context-type#focus
 * useContext.valueCodeableConcept = http://snomed.info/sct#840539006 "COVID-19"
 * topic = http://snomed.info/sct#15220000 "Laboratory test (procedure)"
 * jurisdiction = urn:iso:std:iso:3166#US
 * rateAggregation = "last day"
 * relatedArtifact.type = #documentation
 * relatedArtifact.url = ""
 * group.population[0].code = http://terminology.hl7.org/CodeSystem/measure-population#measure-population
 * group.population[0].criteria.language = urn:ietf:bcp:13#text/plain
 * group.population[1].code = http://terminology.hl7.org/CodeSystem/measure-population#initial-population
 * group.population[1].criteria.language = urn:ietf:bcp:13#text/plain
 * group.population[1].description = "Orders"
 * guidance = ""

Instance: SANERtotalTestResults
InstanceOf: Measure
Title: "Cumulative Diagnostic Tests Ordered/Received"
 * name = "totalTestResults"
 * status = #draft
 * experimental = true
 * title = "Cumulative Diagnostic Tests Ordered/Received"
 * publisher = "FEMA"
 * contact.telecom.system = #email
 * contact.telecom.value = "fema-hhs-covid-diagnostics-tf@fema.dhs.gov"
 * description = "All tests ordered to date."
 * useContext.code = http://terminology.hl7.org/CodeSystem/usage-context-type#focus
 * useContext.valueCodeableConcept = http://snomed.info/sct#840539006 "COVID-19"
 * topic = http://snomed.info/sct#15220000 "Laboratory test (procedure)"
 * jurisdiction = urn:iso:std:iso:3166#US
 * rateAggregation = "cumulative from start date"
 * relatedArtifact.type = #documentation
 * relatedArtifact.url = ""
 * group.population[0].code = http://terminology.hl7.org/CodeSystem/measure-population#measure-population
 * group.population[0].criteria.language = urn:ietf:bcp:13#text/plain
 * group.population[1].code = http://terminology.hl7.org/CodeSystem/measure-population#initial-population
 * group.population[1].criteria.language = urn:ietf:bcp:13#text/plain
 * group.population[1].description = "Orders"
 * guidance = ""

Instance: SANERtotalTestResultsIncrease
InstanceOf: Measure
Title: "New Tests Resulted"
 * name = "totalTestResultsIncrease"
 * status = #draft
 * experimental = true
 * title = "New Tests Resulted"
 * publisher = "FEMA"
 * contact.telecom.system = #email
 * contact.telecom.value = "fema-hhs-covid-diagnostics-tf@fema.dhs.gov"
 * description = "Midnight to midnight cutoff, test results released on previous date queried"
 * useContext.code = http://terminology.hl7.org/CodeSystem/usage-context-type#focus
 * useContext.valueCodeableConcept = http://snomed.info/sct#840539006 "COVID-19"
 * topic = http://snomed.info/sct#15220000 "Laboratory test (procedure)"
 * jurisdiction = urn:iso:std:iso:3166#US
 * rateAggregation = "last day"
 * relatedArtifact.type = #documentation
 * relatedArtifact.url = ""
 * group.population[0].code = http://terminology.hl7.org/CodeSystem/measure-population#measure-population
 * group.population[0].criteria.language = urn:ietf:bcp:13#text/plain
 * group.population[1].code = http://terminology.hl7.org/CodeSystem/measure-population#initial-population
 * group.population[1].criteria.language = urn:ietf:bcp:13#text/plain
 * group.population[1].description = "Results"
 * guidance = ""

Instance: SANERrejected
InstanceOf: Measure
Title: "Cumulative Specimens Rejected"
 * name = "rejected"
 * status = #draft
 * experimental = true
 * title = "Cumulative Specimens Rejected"
 * publisher = "FEMA"
 * contact.telecom.system = #email
 * contact.telecom.value = "fema-hhs-covid-diagnostics-tf@fema.dhs.gov"
 * description = "All specimens rejected for testing to date"
 * useContext.code = http://terminology.hl7.org/CodeSystem/usage-context-type#focus
 * useContext.valueCodeableConcept = http://snomed.info/sct#840539006 "COVID-19"
 * topic = http://snomed.info/sct#15220000 "Laboratory test (procedure)"
 * jurisdiction = urn:iso:std:iso:3166#US
 * rateAggregation = "cumulative from start date"
 * relatedArtifact.type = #documentation
 * relatedArtifact.url = ""
 * group.population[0].code = http://terminology.hl7.org/CodeSystem/measure-population#measure-population
 * group.population[0].criteria.language = urn:ietf:bcp:13#text/plain
 * group.population[1].code = http://terminology.hl7.org/CodeSystem/measure-population#initial-population
 * group.population[1].criteria.language = urn:ietf:bcp:13#text/plain
 * group.population[1].description = "Orders or Results (depending on how rejected is reported)"
 * guidance = ""

Instance: SANERposNeg
InstanceOf: Measure
Title: "Cumulative Tests Performed"
 * name = "posNeg"
 * status = #draft
 * experimental = true
 * title = "Cumulative Tests Performed"
 * publisher = "FEMA"
 * contact.telecom.system = #email
 * contact.telecom.value = "fema-hhs-covid-diagnostics-tf@fema.dhs.gov"
 * description = "All tests with results released to date"
 * useContext.code = http://terminology.hl7.org/CodeSystem/usage-context-type#focus
 * useContext.valueCodeableConcept = http://snomed.info/sct#840539006 "COVID-19"
 * topic = http://snomed.info/sct#15220000 "Laboratory test (procedure)"
 * jurisdiction = urn:iso:std:iso:3166#US
 * rateAggregation = "cumulative from start date"
 * relatedArtifact.type = #documentation
 * relatedArtifact.url = ""
 * group.population[0].code = http://terminology.hl7.org/CodeSystem/measure-population#measure-population
 * group.population[0].criteria.language = urn:ietf:bcp:13#text/plain
 * group.population[1].code = http://terminology.hl7.org/CodeSystem/measure-population#initial-population
 * group.population[1].criteria.language = urn:ietf:bcp:13#text/plain
 * group.population[1].description = "Cumulative Results"
 * guidance = ""

Instance: SANERpositiveIncrease
InstanceOf: Measure
Title: "New Positive COVID-19 Tests"
 * name = "positiveIncrease"
 * status = #draft
 * experimental = true
 * title = "New Positive COVID-19 Tests"
 * publisher = "FEMA"
 * contact.telecom.system = #email
 * contact.telecom.value = "fema-hhs-covid-diagnostics-tf@fema.dhs.gov"
 * description = "Midnight to midnight cutoff, positive test results released on previous date queried"
 * useContext.code = http://terminology.hl7.org/CodeSystem/usage-context-type#focus
 * useContext.valueCodeableConcept = http://snomed.info/sct#840539006 "COVID-19"
 * topic = http://snomed.info/sct#15220000 "Laboratory test (procedure)"
 * jurisdiction = urn:iso:std:iso:3166#US
 * rateAggregation = "last day"
 * relatedArtifact.type = #documentation
 * relatedArtifact.url = ""
 * group.population[0].code = http://terminology.hl7.org/CodeSystem/measure-population#measure-population
 * group.population[0].criteria.language = urn:ietf:bcp:13#text/plain
 * group.population[1].code = http://terminology.hl7.org/CodeSystem/measure-population#initial-population
 * group.population[1].criteria.language = urn:ietf:bcp:13#text/plain
 * group.population[1].description = "Results"
 * guidance = ""

Instance: SANERpositive
InstanceOf: Measure
Title: "Cumulative Positive COVID-19 Tests"
 * name = "positive"
 * status = #draft
 * experimental = true
 * title = "Cumulative Positive COVID-19 Tests"
 * publisher = "FEMA"
 * contact.telecom.system = #email
 * contact.telecom.value = "fema-hhs-covid-diagnostics-tf@fema.dhs.gov"
 * description = "All positive test results released to date"
 * useContext.code = http://terminology.hl7.org/CodeSystem/usage-context-type#focus
 * useContext.valueCodeableConcept = http://snomed.info/sct#840539006 "COVID-19"
 * topic = http://snomed.info/sct#15220000 "Laboratory test (procedure)"
 * jurisdiction = urn:iso:std:iso:3166#US
 * rateAggregation = "cumulative from start date"
 * relatedArtifact.type = #documentation
 * relatedArtifact.url = ""
 * group.population[0].code = http://terminology.hl7.org/CodeSystem/measure-population#measure-population
 * group.population[0].criteria.language = urn:ietf:bcp:13#text/plain
 * group.population[1].code = http://terminology.hl7.org/CodeSystem/measure-population#initial-population
 * group.population[1].criteria.language = urn:ietf:bcp:13#text/plain
 * group.population[1].description = "Cumulative Results"
 * guidance = ""

Instance: SANERpositiveIncreasePercent
InstanceOf: Measure
Title: "Percent Positive among Newly Resulted Tests"
 * name = "positiveIncreasePercent"
 * status = #draft
 * experimental = true
 * title = "Percent Positive among Newly Resulted Tests"
 * publisher = "FEMA"
 * contact.telecom.system = #email
 * contact.telecom.value = "fema-hhs-covid-diagnostics-tf@fema.dhs.gov"
 * description = "# of new positive test results released / # of total new tests released for previous date queried"
 * useContext.code = http://terminology.hl7.org/CodeSystem/usage-context-type#focus
 * useContext.valueCodeableConcept = http://snomed.info/sct#840539006 "COVID-19"
 * topic = http://snomed.info/sct#15220000 "Laboratory test (procedure)"
 * jurisdiction = urn:iso:std:iso:3166#US
 * rateAggregation = "last day"
 * relatedArtifact.type = #documentation
 * relatedArtifact.url = ""
 * group.population[0].code = http://terminology.hl7.org/CodeSystem/measure-population#numerator
 * group.population[0].criteria.language = urn:ietf:bcp:13#text/plain
 * group.population[1].code = http://terminology.hl7.org/CodeSystem/measure-population#denominator
 * group.population[1].criteria.language = urn:ietf:bcp:13#text/plain
 * group.population[1].description = "Results"
 * guidance = ""

Instance: SANERpositivePercent
InstanceOf: Measure
Title: "Cumulative Percent Positive among Resulted Tests"
 * name = "positivePercent"
 * status = #draft
 * experimental = true
 * title = "Cumulative Percent Positive among Resulted Tests"
 * publisher = "FEMA"
 * contact.telecom.system = #email
 * contact.telecom.value = "fema-hhs-covid-diagnostics-tf@fema.dhs.gov"
 * description = "# of total positive results to released date / # of total tests results released to date"
 * useContext.code = http://terminology.hl7.org/CodeSystem/usage-context-type#focus
 * useContext.valueCodeableConcept = http://snomed.info/sct#840539006 "COVID-19"
 * topic = http://snomed.info/sct#15220000 "Laboratory test (procedure)"
 * jurisdiction = urn:iso:std:iso:3166#US
 * rateAggregation = "cumulative from start date"
 * relatedArtifact.type = #documentation
 * relatedArtifact.url = ""
 * group.population[0].code = http://terminology.hl7.org/CodeSystem/measure-population#numerator
 * group.population[0].criteria.language = urn:ietf:bcp:13#text/plain
 * group.population[1].code = http://terminology.hl7.org/CodeSystem/measure-population#denominator
 * group.population[1].criteria.language = urn:ietf:bcp:13#text/plain
 * group.population[1].description = "Cumulative Results"
 * guidance = ""
