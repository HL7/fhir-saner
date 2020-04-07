
Instance: states-FL
InstanceOf: Location
Description : "Example Location for the State of Florida"
* id = "states-FL"
* identifier.system = "https://www.census.gov/geographies"
* identifier.value = "12"
* name = "Florida"
* position.latitude = 28.6305
* position.longitude = 82.4497

Instance: FL-DPH
InstanceOf: Organization
Description : "Example Organization for the Florida Department of Public Health"
* id = "FL-DPH"
* name = "Florida Department of Public Health"

Instance: FEMAexampleFL-positive
InstanceOf: MeasureReport
Description : "Example MeasureReport of positive for FL on 03/31/2020"
* id = "FEMAexampleFL-positive"
* identifier.system = "https://www.census.gov/geographies"
* identifier.value = "12"
* status = #complete
* type = #summary
* measure = "http://ainq.com/fhir/us/saner/Measure/SANERpositive"
* subject.extension.url = "http://hl7.org/fhir/StructureDefinition/geolocation"
* subject.extension.extension[0].url = "latitude"
* subject.extension.extension[0].valueDecimal = 28.6305
* subject.extension.extension[1].url = "longitude"
* subject.extension.extension[1].valueDecimal = 82.4497
* subject.reference = "Location/states-FL"
* subject.display = "State of Florida"
* date = "2020-03-31"
* reporter.reference = "Organization/FL-DPH"
* reporter.display = "Florida Department of Public Health"
* period.start = "2020-03-31"
* period.end = "2020-03-31"
* group.population.code.coding = http://terminology.hl7.org/CodeSystem/measure-population#measure-population
* group.population.count = 6338
* group.population[1].code.coding = http://terminology.hl7.org/CodeSystem/measure-population#initial-population
* group.population[1].count = 60623
* group.measureScore.value = 6338
* group.measureScore.unit = "Laboratory test (procedure)"
* group.measureScore.code = http://snomed.info/sct#15220000

Instance: FEMAexampleFL-totalTestResults
InstanceOf: MeasureReport
Description : "Example MeasureReport of totalTestResults for FL on 03/31/2020"
* id = "FEMAexampleFL-totalTestResults"
* identifier.system = "https://www.census.gov/geographies"
* identifier.value = "12"
* status = #complete
* type = #summary
* measure = "http://ainq.com/fhir/us/saner/Measure/SANERtotalTestResults"
* subject.extension.url = "http://hl7.org/fhir/StructureDefinition/geolocation"
* subject.extension.extension[0].url = "latitude"
* subject.extension.extension[0].valueDecimal = 28.6305
* subject.extension.extension[1].url = "longitude"
* subject.extension.extension[1].valueDecimal = 82.4497
* subject.reference = "Location/states-FL"
* subject.display = "State of Florida"
* date = "2020-03-31"
* reporter.reference = "Organization/FL-DPH"
* reporter.display = "Florida Department of Public Health"
* period.start = "2020-03-31"
* period.end = "2020-03-31"
* group.population.code.coding = http://terminology.hl7.org/CodeSystem/measure-population#measure-population
* group.population.count = 60623
* group.population[1].code.coding = http://terminology.hl7.org/CodeSystem/measure-population#initial-population
* group.population[1].count = 60623
* group.measureScore.value = 60623
* group.measureScore.unit = "Laboratory test (procedure)"
* group.measureScore.code = http://snomed.info/sct#15220000

Instance: FEMAexampleFL-positiveIncrease
InstanceOf: MeasureReport
Description : "Example MeasureReport of positiveIncrease for FL on 03/31/2020"
* id = "FEMAexampleFL-positiveIncrease"
* identifier.system = "https://www.census.gov/geographies"
* identifier.value = "12"
* status = #complete
* type = #summary
* measure = "http://ainq.com/fhir/us/saner/Measure/SANERpositiveIncrease"
* subject.extension.url = "http://hl7.org/fhir/StructureDefinition/geolocation"
* subject.extension.extension[0].url = "latitude"
* subject.extension.extension[0].valueDecimal = 28.6305
* subject.extension.extension[1].url = "longitude"
* subject.extension.extension[1].valueDecimal = 82.4497
* subject.reference = "Location/states-FL"
* subject.display = "State of Florida"
* date = "2020-03-31"
* reporter.reference = "Organization/FL-DPH"
* reporter.display = "Florida Department of Public Health"
* period.start = "2020-03-31"
* period.end = "2020-03-31"
* group.population.code.coding = http://terminology.hl7.org/CodeSystem/measure-population#measure-population
* group.population.count = 865
* group.population[1].code.coding = http://terminology.hl7.org/CodeSystem/measure-population#initial-population
* group.population[1].count = 60623
* group.measureScore.value = 865
* group.measureScore.unit = "Laboratory test (procedure)"
* group.measureScore.code = http://snomed.info/sct#15220000

Instance: FEMAexampleFL-totalTestResultsIncrease
InstanceOf: MeasureReport
Description : "Example MeasureReport of totalTestResultsIncrease for FL on 03/31/2020"
* id = "FEMAexampleFL-totalTestResultsIncrease"
* identifier.system = "https://www.census.gov/geographies"
* identifier.value = "12"
* status = #complete
* type = #summary
* measure = "http://ainq.com/fhir/us/saner/Measure/SANERtotalTestResultsIncrease"
* subject.extension.url = "http://hl7.org/fhir/StructureDefinition/geolocation"
* subject.extension.extension[0].url = "latitude"
* subject.extension.extension[0].valueDecimal = 28.6305
* subject.extension.extension[1].url = "longitude"
* subject.extension.extension[1].valueDecimal = 82.4497
* subject.reference = "Location/states-FL"
* subject.display = "State of Florida"
* date = "2020-03-31"
* reporter.reference = "Organization/FL-DPH"
* reporter.display = "Florida Department of Public Health"
* period.start = "2020-03-31"
* period.end = "2020-03-31"
* group.population.code.coding = http://terminology.hl7.org/CodeSystem/measure-population#measure-population
* group.population.count = 6925
* group.population[1].code.coding = http://terminology.hl7.org/CodeSystem/measure-population#initial-population
* group.population[1].count = 60623
* group.measureScore.value = 6925
* group.measureScore.unit = "Laboratory test (procedure)"
* group.measureScore.code = http://snomed.info/sct#15220000

Instance: FEMAexampleFL-positivePercent
InstanceOf: MeasureReport
Description : "Example MeasureReport of positivePercent for FL on 03/31/2020"
* id = "FEMAexampleFL-positivePercent"
* identifier.system = "https://www.census.gov/geographies"
* identifier.value = "12"
* status = #complete
* type = #summary
* measure = "http://ainq.com/fhir/us/saner/Measure/SANERpositivePercent"
* subject.extension.url = "http://hl7.org/fhir/StructureDefinition/geolocation"
* subject.extension.extension[0].url = "latitude"
* subject.extension.extension[0].valueDecimal = 28.6305
* subject.extension.extension[1].url = "longitude"
* subject.extension.extension[1].valueDecimal = 82.4497
* subject.reference = "Location/states-FL"
* subject.display = "State of Florida"
* date = "2020-03-31"
* reporter.reference = "Organization/FL-DPH"
* reporter.display = "Florida Department of Public Health"
* period.start = "2020-03-31"
* period.end = "2020-03-31"
* group.population.code.coding = http://terminology.hl7.org/CodeSystem/measure-population#numerator
* group.population.count = 6338
* group.population[1].code.coding = http://terminology.hl7.org/CodeSystem/measure-population#denominator
* group.population[1].count = 60623
* group.measureScore.value = 10.45
* group.measureScore.unit = "%"
* group.measureScore.code = http://unitsofmeasure.org#%

Instance: FEMAexampleFL-positiveIncreasePercent
InstanceOf: MeasureReport
Description : "Example MeasureReport of positiveIncreasePercent for FL on 03/31/2020"
* id = "FEMAexampleFL-positiveIncreasePercent"
* identifier.system = "https://www.census.gov/geographies"
* identifier.value = "12"
* status = #complete
* type = #summary
* measure = "http://ainq.com/fhir/us/saner/Measure/SANERpositiveIncreasePercent"
* subject.extension.url = "http://hl7.org/fhir/StructureDefinition/geolocation"
* subject.extension.extension[0].url = "latitude"
* subject.extension.extension[0].valueDecimal = 28.6305
* subject.extension.extension[1].url = "longitude"
* subject.extension.extension[1].valueDecimal = 82.4497
* subject.reference = "Location/states-FL"
* subject.display = "State of Florida"
* date = "2020-03-31"
* reporter.reference = "Organization/FL-DPH"
* reporter.display = "Florida Department of Public Health"
* period.start = "2020-03-31"
* period.end = "2020-03-31"
* group.population.code.coding = http://terminology.hl7.org/CodeSystem/measure-population#numerator
* group.population.count = 865
* group.population[1].code.coding = http://terminology.hl7.org/CodeSystem/measure-population#denominator
* group.population[1].count = 6925
* group.measureScore.value = 12.49
* group.measureScore.unit = "%"
* group.measureScore.code = http://unitsofmeasure.org#%

Instance: FEMAexampleFL
InstanceOf: Bundle
Description : "Example MeasureReport bundle for FL"
* id = "FEMAexampleFL"
* identifier.value = "d1e161"
* identifier.system = "http://example.com"
* type = #collection
* entry[0].resource = FEMAexampleFL-positive
* entry[0].fullUrl = "http://ainq.com/fhir/us/saner/MeasureReport/FEMAexampleFL-positive"
* entry[1].resource = FEMAexampleFL-totalTestResults
* entry[1].fullUrl = "http://ainq.com/fhir/us/saner/MeasureReport/FEMAexampleFL-totalTestResults"
* entry[2].resource = FEMAexampleFL-positiveIncrease
* entry[2].fullUrl = "http://ainq.com/fhir/us/saner/MeasureReport/FEMAexampleFL-positiveIncrease"
* entry[3].resource = FEMAexampleFL-totalTestResultsIncrease
* entry[3].fullUrl = "http://ainq.com/fhir/us/saner/MeasureReport/FEMAexampleFL-totalTestResultsIncrease"
* entry[4].resource = FEMAexampleFL-positivePercent
* entry[4].fullUrl = "http://ainq.com/fhir/us/saner/MeasureReport/FEMAexampleFL-positivePercent"
* entry[5].resource = FEMAexampleFL-positiveIncreasePercent
* entry[5].fullUrl = "http://ainq.com/fhir/us/saner/MeasureReport/FEMAexampleFL-positiveIncreasePercent"
