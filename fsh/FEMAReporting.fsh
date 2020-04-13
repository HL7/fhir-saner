

Instance: FEMAReporting
InstanceOf: PublicHealthMeasure
Title: "FEMA Laboratory Orders and Results Daily Increase Reporting"
Description: "This measure demonstrates reporting about Daily Laboratory Testing at a inpatient test sites capturing laboratory orders and results daily increase and cumulative counts."
 * name = "FEMAReporting"
 * version = "0.1.0"
 * status = #draft
 * url = "http://hl7.org/fhir/us/saner/Measure/FEMAReporting"
 * experimental = true
 * author.name = "FEMA"
 * author.telecom.system = #email
 * author.telecom.value = "mailto:fema-hhs-covid-diagnostics-tf@fema.dhs.gov "
 * publisher = "HL7 International"
 * contact.telecom.system = #url
 * contact.telecom.value = "http://hl7.org/Special/committees/pafm/index.cfm"
 * contact[1].telecom.system = #email
 * contact[1].telecom.value = "mailto:kboone@ainq.com"
 * useContext.code = http://terminology.hl7.org/CodeSystem/usage-context-type#focus
 * useContext.valueCodeableConcept = http://snomed.info/sct#840539006 "COVID-19"
 * type = #outcome
 * topic = http://snomed.info/sct#252318005 "Immunology laboratory test (procedure)"
 * jurisdiction = urn:iso:std:iso:3166#US
 * scoring = #ratio
 * rateAggregation = "aggregable-by-period"
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
 * group.code.coding = PopulationSystem#positiveIncreasePercent
 * group.code.coding.display = "Percent Positive among Newly Resulted Tests"
 * group.code.text = "# of new positive test results released / # of total new tests released for previous date queried"

 * group.extension[MeasureGroupAttributes].extension[scoring].valueCodeableConcept = http://terminology.hl7.org/CodeSystem/measure-scoring#continuous-variable
 * group.extension[MeasureGroupAttributes].extension[type].valueCodeableConcept = http://terminology.hl7.org/CodeSystem/measure-type#outcome
 * group.extension[MeasureGroupAttributes].extension[improvementNotation].valueCodeableConcept = http://terminology.hl7.org/CodeSystem/measure-improvement-notation#decrease
 * group.extension[MeasureGroupAttributes].extension[subject].valueCodeableConcept.coding[0] = http://hl7.org/fhir/resource-types#ServiceRequest
 * group.extension[MeasureGroupAttributes].extension[subject].valueCodeableConcept.coding[1] = http://snomed.info/sct#252318005
 * group.extension[MeasureGroupAttributes].extension[subject].valueCodeableConcept.coding[1].display = "Immunology laboratory test (procedure)"
 * group.extension[MeasureGroupAttributes].extension[subject].valueCodeableConcept.text = "COVID-19 Diagnostic Testing"
 * group.extension[MeasureGroupAttributes].extension[rateAggregation].valueString = "aggregable-by-period"


// describe the initial population
 * group.population.code.coding = PopulationSystem#totalOrdersIncrease
 * group.population.code.coding.display = "New Diagnostic Tests Ordered/Received"
 * group.population.code.coding[1] = http://terminology.hl7.org/CodeSystem/measure-population#initial-population
 * group.population.code.text = "Midnight to midnight cutoff, tests ordered on previous date queried"
 * group.population.criteria.name = "totalOrdersIncrease"
 * group.population.criteria.description = "Orders initiated during %reportingPeriod"
 * group.population.criteria.language = http://hl7.org/fhir/expression-language#text/fhirpath
 * group.population.criteria.expression = """ServiceRequest.where(
    authoredOn.toDate() = %reportingPeriod /* May need to change logic to support ranges for reportingPeriod */
    and status in ('active', 'completed')
    and intent in ('order', 'orginal-order', 'reflex-order', 'filler-order', 'instance-order')
)"""
 * group.population.description = "Enter the number of new Diagnostic Tests Ordered/Received during the reporting period."

 * group.population[1].code.coding = PopulationSystem#totalTestResultsIncrease
 * group.population[1].code.coding.display = "New Tests Resulted"
 * group.population[1].code.coding[1] = http://terminology.hl7.org/CodeSystem/measure-population#denominator
 * group.population[1].code.text = "Midnight to midnight cutoff, test results released on previous date queried"
 * group.population[1].criteria.name = "totalTestResultsIncrease"
 * group.population[1].criteria.description = "Results recieved during reporting period"
 * group.population[1].criteria.language = http://hl7.org/fhir/expression-language#text/fhirpath
 * group.population[1].criteria.expression =
"""DiagnosticReport.where(
    issued.toDate() = %reportingPeriod /* May need to change logic to support ranges for reportingPeriod */
    and status in ('final, 'amended', 'corrected', 'appended')
)"""
 * group.population[1].description =
 """Enter the number of results recieved/generated during the reporting period.
 Do not include results where the test could not be completed because the specimen
 was rejected or a positive/negative result could not be established"""

 * group.population[2].code.coding = PopulationSystem#positiveIncrease
 * group.population[2].code.coding.display = "New Positive COVID-19 Tests"
 * group.population[2].code.coding[1] = http://terminology.hl7.org/CodeSystem/measure-population#numerator
 * group.population[2].code.text = "Midnight to midnight cutoff, positive test results released on previous date queried"
 * group.population[2].criteria.name = "positiveIncrease"
 * group.population[2].criteria.description = "Result is positive with respect to COVID-19"
 * group.population[2].criteria.language = http://hl7.org/fhir/expression-language#text/fhirpath
 * group.population[2].criteria.expression = "DiagnosticReport.where($this in %totalTestResultsIncrease and conclusionCode in %ValueSet-ConfirmedCOVID19Diagnosis)"
 * group.population[2].description = "Enter the number of positive test results released during the reporting period."

 * group[1].code.coding = PopulationSystem#positivePercent
 * group[1].code.coding.display = "Cumulative Percent Positive among Resulted Tests"
 * group[1].code.text = "# of total positive results to released date / # of total tests results released to date"

 * group[1].extension[MeasureGroupAttributes].extension[scoring].valueCodeableConcept = http://terminology.hl7.org/CodeSystem/measure-scoring#continuous-variable
 * group[1].extension[MeasureGroupAttributes].extension[type].valueCodeableConcept = http://terminology.hl7.org/CodeSystem/measure-type#outcome
 * group[1].extension[MeasureGroupAttributes].extension[improvementNotation].valueCodeableConcept = http://terminology.hl7.org/CodeSystem/measure-improvement-notation#decrease
 * group[1].extension[MeasureGroupAttributes].extension[subject].valueCodeableConcept.coding[0] = http://hl7.org/fhir/resource-types#ServiceRequest
 * group[1].extension[MeasureGroupAttributes].extension[subject].valueCodeableConcept.coding[1] = http://snomed.info/sct#252318005
 * group[1].extension[MeasureGroupAttributes].extension[subject].valueCodeableConcept.coding[1].display = "Immunology laboratory test (procedure)"
 * group[1].extension[MeasureGroupAttributes].extension[subject].valueCodeableConcept.text = "COVID-19 Cumulative Diagnostic Testing"
 * group[1].extension[MeasureGroupAttributes].extension[rateAggregation].valueString = "cumulative"


 * group[1].population.code.coding = PopulationSystem#totalOrders
 * group[1].population.code.coding.display = "Cumulative Diagnostic Tests Ordered/Recieved"
 * group[1].population.code.coding[1] = http://terminology.hl7.org/CodeSystem/measure-population#initial-population
 * group[1].population.code.text = "All tests ordered to date."
 * group[1].population.criteria.name = "totalOrders"
 * group[1].population.criteria.description = "Report all active or completed test orders for a COVID-19 test authored during the reporting period"
 * group[1].population.criteria.language = http://hl7.org/fhir/expression-language#text/fhirpath
 * group[1].population.criteria.expression =
"""ServiceRequest.where(
    authoredOn.toDate() <= %reportingPeriod /* May need to change logic to support ranges for reportingPeriod */
    and status in ('active', 'completed')
    and code in %ValueSet-COVID19DiagnosticTest
    and intent in ('order', 'orginal-order', 'reflex-order', 'filler-order', 'instance-order')
)"""
 * group[1].population.description = "Enter the cumulative number of tests ordered to date."

 * group[1].population[1].code.coding = PopulationSystem#allReports
 * group[1].population[1].code.coding.display = "All Reports To Date"
 * group[1].population[1].code.coding[1] = http://terminology.hl7.org/CodeSystem/measure-population#measure-population
 * group[1].population[1].code.text = "Reports to date including corrected, amended and canceled reports"
 * group[1].population[1].criteria.name = "allReports"
 * group[1].population[1].criteria.description = "Diagnostic Reports provided in response to totalOrders"
 * group[1].population[1].criteria.language = http://hl7.org/fhir/expression-language#text/fhirpath
 * group[1].population[1].criteria.expression = "DiagnosticReport.where(basedOn in %totalOrders)"
 * group[1].population[1].description = "This is in intermediate population used to simplify calculations"

 * group[1].population[2].code.coding = PopulationSystem#latestReports
 * group[1].population[2].code.coding.display = "Most Recent Laboratory Reports for any Order"
 * group[1].population[2].code.coding[1] = http://terminology.hl7.org/CodeSystem/measure-population#measure-population
 * group[1].population[2].code.text = "Latest Reports to date for each order"
 * group[1].population[2].criteria.name = "latestReports"
 * group[1].population[2].criteria.description = "Most recent diagnostic reports provided in response to totalOrders"
 * group[1].population[2].criteria.language = http://hl7.org/fhir/expression-language#text/fhirpath
 * group[1].population[2].criteria.expression = "TBD"
 * group[1].population[2].description = "This is in intermediate population used to simplify calculations"

 * group[1].population[3].code.coding = PopulationSystem#rejected
 * group[1].population[3].code.coding.display = "Cumulative Specimens Rejected*"
 * group[1].population[3].code.coding[1] = http://terminology.hl7.org/CodeSystem/measure-population#denominator-exclusion
 * group[1].population[3].code.text = "All specimens rejected for testing to date"
 * group[1].population[3].criteria.name = "rejected"
 * group[1].population[3].criteria.description = "DiagnosticReport for COVID-19 where the report is unavailable because the measurement was not started or not completed."
 * group[1].population[3].criteria.language = http://hl7.org/fhir/expression-language#text/fhirpath
 * group[1].population[3].criteria.expression = "DiagnosticReport.where(status = 'cancelled' and code in %ValueSet-COVID19DiagnosticTest)"
 * group[1].population[3].description = "Enter the cumulative number of specimens rejected for testing to date."

 * group[1].population[4].code.coding = PopulationSystem#totalTestResults
 * group[1].population[4].code.coding.display = "Cumulative Tests Performed"
 * group[1].population[4].code.coding[1] = http://terminology.hl7.org/CodeSystem/measure-population#denominator
 * group[1].population[4].code.text = "All tests with results released to date"
 * group[1].population[4].criteria.name = "totalTestResults"
 * group[1].population[4].criteria.description = "Report all active or completed test orders for a COVID-19 test authored during or prior to the end of the reporting period that have had results released."
 * group[1].population[4].criteria.language = http://hl7.org/fhir/expression-language#text/fhirpath
 * group[1].population[4].criteria.expression = """ServiceRequest.where(
    status in ('active', 'completed')
    and intent in ('order', 'orginal-order', 'reflex-order', 'filler-order', 'instance-order')
)"""
 * group[1].population[4].description =
 """Enter the total number tests with results released to date. Do not include tests where a
 positive/negative result could not be determined (e.g., because the specimen was inadequate)."""

 * group[1].population[5].code.coding = PopulationSystem#positive
 * group[1].population[5].code.coding.display = "Cumulative Positive COVID-19 Tests"
 * group[1].population[5].code.coding[1] = http://terminology.hl7.org/CodeSystem/measure-population#numerator
 * group[1].population[5].code.text = "All positive test results released to date"
 * group[1].population[5].criteria.name = "positive"
 * group[1].population[5].criteria.description = "The result is positive for COVID-19"
 * group[1].population[5].criteria.language = http://hl7.org/fhir/expression-language#text/fhirpath
 * group[1].population[5].criteria.expression = "DiagnosticReport.where($this in %totalTestResults and conclusionCode in %ValueSet-ConfirmedCOVID19Diagnosis)"
 * group[1].population[5].description = "Enter the total number of positive test results release to date."
