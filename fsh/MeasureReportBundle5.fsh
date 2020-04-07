
Instance: states-CA
InstanceOf: Location
Description : "Example Location for the State of California"
* id = "states-CA"
* identifier.system = "https://www.census.gov/geographies"
* identifier.value = "6"
* name = "California"
* position.latitude = 37.1841
* position.longitude = 119.4696

Instance: CA-DPH
InstanceOf: Organization
Description : "Example Organization for the California Department of Public Health"
* id = "CA-DPH"
* name = "California Department of Public Health"

Instance: FEMAexampleCA-positive
InstanceOf: MeasureReport
Description : "Example MeasureReport of positive for CA on 03/31/2020"
* id = "FEMAexampleCA-positive"
* identifier.system = "https://www.census.gov/geographies"
* identifier.value = "6"
* status = #complete
* type = #summary
* measure = "http://ainq.com/fhir/us/saner/Measure/SANERpositive"
* subject.extension.url = "http://hl7.org/fhir/StructureDefinition/geolocation"
* subject.extension.extension[0].url = "latitude"
* subject.extension.extension[0].valueDecimal = 37.1841
* subject.extension.extension[1].url = "longitude"
* subject.extension.extension[1].valueDecimal = 119.4696
* subject.reference = "Location/states-CA"
* subject.display = "State of California"
* date = "2020-03-31"
* reporter.reference = "Organization/CA-DPH"
* reporter.display = "California Department of Public Health"
* period.start = "2020-03-31"
* period.end = "2020-03-31"
* group.population.code.coding = http://terminology.hl7.org/CodeSystem/measure-population#measure-population
* group.population.count = 7482
* group.population[1].code.coding = http://terminology.hl7.org/CodeSystem/measure-population#initial-population
* group.population[1].count = 29254
* group.measureScore.value = 7482
* group.measureScore.unit = "Laboratory test (procedure)"
* group.measureScore.code = http://snomed.info/sct#15220000

Instance: FEMAexampleCA-totalTestResults
InstanceOf: MeasureReport
Description : "Example MeasureReport of totalTestResults for CA on 03/31/2020"
* id = "FEMAexampleCA-totalTestResults"
* identifier.system = "https://www.census.gov/geographies"
* identifier.value = "6"
* status = #complete
* type = #summary
* measure = "http://ainq.com/fhir/us/saner/Measure/SANERtotalTestResults"
* subject.extension.url = "http://hl7.org/fhir/StructureDefinition/geolocation"
* subject.extension.extension[0].url = "latitude"
* subject.extension.extension[0].valueDecimal = 37.1841
* subject.extension.extension[1].url = "longitude"
* subject.extension.extension[1].valueDecimal = 119.4696
* subject.reference = "Location/states-CA"
* subject.display = "State of California"
* date = "2020-03-31"
* reporter.reference = "Organization/CA-DPH"
* reporter.display = "California Department of Public Health"
* period.start = "2020-03-31"
* period.end = "2020-03-31"
* group.population.code.coding = http://terminology.hl7.org/CodeSystem/measure-population#measure-population
* group.population.count = 29254
* group.population[1].code.coding = http://terminology.hl7.org/CodeSystem/measure-population#initial-population
* group.population[1].count = 29254
* group.measureScore.value = 29254
* group.measureScore.unit = "Laboratory test (procedure)"
* group.measureScore.code = http://snomed.info/sct#15220000

Instance: FEMAexampleCA-positiveIncrease
InstanceOf: MeasureReport
Description : "Example MeasureReport of positiveIncrease for CA on 03/31/2020"
* id = "FEMAexampleCA-positiveIncrease"
* identifier.system = "https://www.census.gov/geographies"
* identifier.value = "6"
* status = #complete
* type = #summary
* measure = "http://ainq.com/fhir/us/saner/Measure/SANERpositiveIncrease"
* subject.extension.url = "http://hl7.org/fhir/StructureDefinition/geolocation"
* subject.extension.extension[0].url = "latitude"
* subject.extension.extension[0].valueDecimal = 37.1841
* subject.extension.extension[1].url = "longitude"
* subject.extension.extension[1].valueDecimal = 119.4696
* subject.reference = "Location/states-CA"
* subject.display = "State of California"
* date = "2020-03-31"
* reporter.reference = "Organization/CA-DPH"
* reporter.display = "California Department of Public Health"
* period.start = "2020-03-31"
* period.end = "2020-03-31"
* group.population.code.coding = http://terminology.hl7.org/CodeSystem/measure-population#measure-population
* group.population.count = 1035
* group.population[1].code.coding = http://terminology.hl7.org/CodeSystem/measure-population#initial-population
* group.population[1].count = 29254
* group.measureScore.value = 1035
* group.measureScore.unit = "Laboratory test (procedure)"
* group.measureScore.code = http://snomed.info/sct#15220000

Instance: FEMAexampleCA-totalTestResultsIncrease
InstanceOf: MeasureReport
Description : "Example MeasureReport of totalTestResultsIncrease for CA on 03/31/2020"
* id = "FEMAexampleCA-totalTestResultsIncrease"
* identifier.system = "https://www.census.gov/geographies"
* identifier.value = "6"
* status = #complete
* type = #summary
* measure = "http://ainq.com/fhir/us/saner/Measure/SANERtotalTestResultsIncrease"
* subject.extension.url = "http://hl7.org/fhir/StructureDefinition/geolocation"
* subject.extension.extension[0].url = "latitude"
* subject.extension.extension[0].valueDecimal = 37.1841
* subject.extension.extension[1].url = "longitude"
* subject.extension.extension[1].valueDecimal = 119.4696
* subject.reference = "Location/states-CA"
* subject.display = "State of California"
* date = "2020-03-31"
* reporter.reference = "Organization/CA-DPH"
* reporter.display = "California Department of Public Health"
* period.start = "2020-03-31"
* period.end = "2020-03-31"
* group.population.code.coding = http://terminology.hl7.org/CodeSystem/measure-population#measure-population
* group.population.count = 2258
* group.population[1].code.coding = http://terminology.hl7.org/CodeSystem/measure-population#initial-population
* group.population[1].count = 29254
* group.measureScore.value = 2258
* group.measureScore.unit = "Laboratory test (procedure)"
* group.measureScore.code = http://snomed.info/sct#15220000

Instance: FEMAexampleCA-positivePercent
InstanceOf: MeasureReport
Description : "Example MeasureReport of positivePercent for CA on 03/31/2020"
* id = "FEMAexampleCA-positivePercent"
* identifier.system = "https://www.census.gov/geographies"
* identifier.value = "6"
* status = #complete
* type = #summary
* measure = "http://ainq.com/fhir/us/saner/Measure/SANERpositivePercent"
* subject.extension.url = "http://hl7.org/fhir/StructureDefinition/geolocation"
* subject.extension.extension[0].url = "latitude"
* subject.extension.extension[0].valueDecimal = 37.1841
* subject.extension.extension[1].url = "longitude"
* subject.extension.extension[1].valueDecimal = 119.4696
* subject.reference = "Location/states-CA"
* subject.display = "State of California"
* date = "2020-03-31"
* reporter.reference = "Organization/CA-DPH"
* reporter.display = "California Department of Public Health"
* period.start = "2020-03-31"
* period.end = "2020-03-31"
* group.population.code.coding = http://terminology.hl7.org/CodeSystem/measure-population#numerator
* group.population.count = 7482
* group.population[1].code.coding = http://terminology.hl7.org/CodeSystem/measure-population#denominator
* group.population[1].count = 29254
* group.measureScore.value = 25.58
* group.measureScore.unit = "%"
* group.measureScore.code = http://unitsofmeasure.org#%

Instance: FEMAexampleCA-positiveIncreasePercent
InstanceOf: MeasureReport
Description : "Example MeasureReport of positiveIncreasePercent for CA on 03/31/2020"
* id = "FEMAexampleCA-positiveIncreasePercent"
* identifier.system = "https://www.census.gov/geographies"
* identifier.value = "6"
* status = #complete
* type = #summary
* measure = "http://ainq.com/fhir/us/saner/Measure/SANERpositiveIncreasePercent"
* subject.extension.url = "http://hl7.org/fhir/StructureDefinition/geolocation"
* subject.extension.extension[0].url = "latitude"
* subject.extension.extension[0].valueDecimal = 37.1841
* subject.extension.extension[1].url = "longitude"
* subject.extension.extension[1].valueDecimal = 119.4696
* subject.reference = "Location/states-CA"
* subject.display = "State of California"
* date = "2020-03-31"
* reporter.reference = "Organization/CA-DPH"
* reporter.display = "California Department of Public Health"
* period.start = "2020-03-31"
* period.end = "2020-03-31"
* group.population.code.coding = http://terminology.hl7.org/CodeSystem/measure-population#numerator
* group.population.count = 1035
* group.population[1].code.coding = http://terminology.hl7.org/CodeSystem/measure-population#denominator
* group.population[1].count = 2258
* group.measureScore.value = 45.84
* group.measureScore.unit = "%"
* group.measureScore.code = http://unitsofmeasure.org#%

Instance: FEMAexampleCA
InstanceOf: Bundle
Description : "Example MeasureReport bundle for CA"
* id = "FEMAexampleCA"
* identifier.value = "d1e80"
* identifier.system = "http://example.com"
* type = #collection
* entry[0].resource = FEMAexampleCA-positive
* entry[0].fullUrl = "http://ainq.com/fhir/us/saner/MeasureReport/FEMAexampleCA-positive"
* entry[1].resource = FEMAexampleCA-totalTestResults
* entry[1].fullUrl = "http://ainq.com/fhir/us/saner/MeasureReport/FEMAexampleCA-totalTestResults"
* entry[2].resource = FEMAexampleCA-positiveIncrease
* entry[2].fullUrl = "http://ainq.com/fhir/us/saner/MeasureReport/FEMAexampleCA-positiveIncrease"
* entry[3].resource = FEMAexampleCA-totalTestResultsIncrease
* entry[3].fullUrl = "http://ainq.com/fhir/us/saner/MeasureReport/FEMAexampleCA-totalTestResultsIncrease"
* entry[4].resource = FEMAexampleCA-positivePercent
* entry[4].fullUrl = "http://ainq.com/fhir/us/saner/MeasureReport/FEMAexampleCA-positivePercent"
* entry[5].resource = FEMAexampleCA-positiveIncreasePercent
* entry[5].fullUrl = "http://ainq.com/fhir/us/saner/MeasureReport/FEMAexampleCA-positiveIncreasePercent"
