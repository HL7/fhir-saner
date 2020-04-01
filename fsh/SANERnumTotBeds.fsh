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
 * useContext.valueCodeableConcept = http://snomed.info/sct#840535000 "COVID-19"
 * topic = http://snomed.info/sct#91537007 "Hospital bed, device (physical object)"
 * jurisdiction = urn:iso:std:iso:3166#US
 * rateAggregation = "last day"
 * relatedArtifact.type = #documentation
 * relatedArtifact.url = "https://www.cdc.gov/nhsn/pdfs/covid19/57.130-toi-508.pdf"
 * group.population[0].code = #measure-population
 * group.population[0].criteria.language = urn:ietf:bcp:13#text/plain
 * group.population[1].code = #initial-population
 * group.population[1].criteria.language = urn:ietf:bcp:13#text/plain
 * group.population[1].description = "All Beds"
 * guidance = """Enter the total number of all hospital beds, including
inpatient and outpatient beds. All staffed, licensed,
and overflow and surge/expansion beds used for
inpatients or outpatients. This includes ICU beds."""
