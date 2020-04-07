
Instance: states-DE
InstanceOf: Location
Description : "Example Location for the State of Delaware"
* id = "states-DE"
* identifier.system = "https://www.census.gov/geographies"
* identifier.value = "10"
* name = "Delaware"
* position.latitude = 38.9896
* position.longitude = 75.505

Instance: DE-DPH
InstanceOf: Organization
Description : "Example Organization for the Delaware Department of Public Health"
* id = "DE-DPH"
* name = "Delaware Department of Public Health"

Instance: FEMAexampleDE-positive
InstanceOf: MeasureReport
Description : "Example MeasureReport of positive for DE on 03/31/2020"
* id = "FEMAexampleDE-positive"
* identifier.system = "https://www.census.gov/geographies"
* identifier.value = "10"
* status = #complete
* type = #summary
* measure = "http://ainq.com/fhir/us/saner/Measure/SANERpositive"
* subject.extension.url = "http://hl7.org/fhir/StructureDefinition/geolocation"
* subject.extension.extension[0].url = "latitude"
* subject.extension.extension[0].valueDecimal = 38.9896
* subject.extension.extension[1].url = "longitude"
* subject.extension.extension[1].valueDecimal = 75.505
* subject.reference = "Location/states-DE"
* subject.display = "State of Delaware"
* date = "2020-03-31"
* reporter.reference = "Organization/DE-DPH"
* reporter.display = "Delaware Department of Public Health"
* period.start = "2020-03-31"
* period.end = "2020-03-31"
* group.population.code.coding = http://terminology.hl7.org/CodeSystem/measure-population#measure-population
* group.population.count = 406
* group.population[1].code.coding = http://terminology.hl7.org/CodeSystem/measure-population#initial-population
* group.population[1].count = 4102
* group.measureScore.value = 406
* group.measureScore.unit = "Laboratory test (procedure)"
* group.measureScore.code = http://snomed.info/sct#15220000

Instance: FEMAexampleDE-totalTestResults
InstanceOf: MeasureReport
Description : "Example MeasureReport of totalTestResults for DE on 03/31/2020"
* id = "FEMAexampleDE-totalTestResults"
* identifier.system = "https://www.census.gov/geographies"
* identifier.value = "10"
* status = #complete
* type = #summary
* measure = "http://ainq.com/fhir/us/saner/Measure/SANERtotalTestResults"
* subject.extension.url = "http://hl7.org/fhir/StructureDefinition/geolocation"
* subject.extension.extension[0].url = "latitude"
* subject.extension.extension[0].valueDecimal = 38.9896
* subject.extension.extension[1].url = "longitude"
* subject.extension.extension[1].valueDecimal = 75.505
* subject.reference = "Location/states-DE"
* subject.display = "State of Delaware"
* date = "2020-03-31"
* reporter.reference = "Organization/DE-DPH"
* reporter.display = "Delaware Department of Public Health"
* period.start = "2020-03-31"
* period.end = "2020-03-31"
* group.population.code.coding = http://terminology.hl7.org/CodeSystem/measure-population#measure-population
* group.population.count = 4102
* group.population[1].code.coding = http://terminology.hl7.org/CodeSystem/measure-population#initial-population
* group.population[1].count = 4102
* group.measureScore.value = 4102
* group.measureScore.unit = "Laboratory test (procedure)"
* group.measureScore.code = http://snomed.info/sct#15220000

Instance: FEMAexampleDE-positiveIncrease
InstanceOf: MeasureReport
Description : "Example MeasureReport of positiveIncrease for DE on 03/31/2020"
* id = "FEMAexampleDE-positiveIncrease"
* identifier.system = "https://www.census.gov/geographies"
* identifier.value = "10"
* status = #complete
* type = #summary
* measure = "http://ainq.com/fhir/us/saner/Measure/SANERpositiveIncrease"
* subject.extension.url = "http://hl7.org/fhir/StructureDefinition/geolocation"
* subject.extension.extension[0].url = "latitude"
* subject.extension.extension[0].valueDecimal = 38.9896
* subject.extension.extension[1].url = "longitude"
* subject.extension.extension[1].valueDecimal = 75.505
* subject.reference = "Location/states-DE"
* subject.display = "State of Delaware"
* date = "2020-03-31"
* reporter.reference = "Organization/DE-DPH"
* reporter.display = "Delaware Department of Public Health"
* period.start = "2020-03-31"
* period.end = "2020-03-31"
* group.population.code.coding = http://terminology.hl7.org/CodeSystem/measure-population#measure-population
* group.population.count = 142
* group.population[1].code.coding = http://terminology.hl7.org/CodeSystem/measure-population#initial-population
* group.population[1].count = 4102
* group.measureScore.value = 142
* group.measureScore.unit = "Laboratory test (procedure)"
* group.measureScore.code = http://snomed.info/sct#15220000

Instance: FEMAexampleDE-totalTestResultsIncrease
InstanceOf: MeasureReport
Description : "Example MeasureReport of totalTestResultsIncrease for DE on 03/31/2020"
* id = "FEMAexampleDE-totalTestResultsIncrease"
* identifier.system = "https://www.census.gov/geographies"
* identifier.value = "10"
* status = #complete
* type = #summary
* measure = "http://ainq.com/fhir/us/saner/Measure/SANERtotalTestResultsIncrease"
* subject.extension.url = "http://hl7.org/fhir/StructureDefinition/geolocation"
* subject.extension.extension[0].url = "latitude"
* subject.extension.extension[0].valueDecimal = 38.9896
* subject.extension.extension[1].url = "longitude"
* subject.extension.extension[1].valueDecimal = 75.505
* subject.reference = "Location/states-DE"
* subject.display = "State of Delaware"
* date = "2020-03-31"
* reporter.reference = "Organization/DE-DPH"
* reporter.display = "Delaware Department of Public Health"
* period.start = "2020-03-31"
* period.end = "2020-03-31"
* group.population.code.coding = http://terminology.hl7.org/CodeSystem/measure-population#measure-population
* group.population.count = 1622
* group.population[1].code.coding = http://terminology.hl7.org/CodeSystem/measure-population#initial-population
* group.population[1].count = 4102
* group.measureScore.value = 1622
* group.measureScore.unit = "Laboratory test (procedure)"
* group.measureScore.code = http://snomed.info/sct#15220000

Instance: FEMAexampleDE-positivePercent
InstanceOf: MeasureReport
Description : "Example MeasureReport of positivePercent for DE on 03/31/2020"
* id = "FEMAexampleDE-positivePercent"
* identifier.system = "https://www.census.gov/geographies"
* identifier.value = "10"
* status = #complete
* type = #summary
* measure = "http://ainq.com/fhir/us/saner/Measure/SANERpositivePercent"
* subject.extension.url = "http://hl7.org/fhir/StructureDefinition/geolocation"
* subject.extension.extension[0].url = "latitude"
* subject.extension.extension[0].valueDecimal = 38.9896
* subject.extension.extension[1].url = "longitude"
* subject.extension.extension[1].valueDecimal = 75.505
* subject.reference = "Location/states-DE"
* subject.display = "State of Delaware"
* date = "2020-03-31"
* reporter.reference = "Organization/DE-DPH"
* reporter.display = "Delaware Department of Public Health"
* period.start = "2020-03-31"
* period.end = "2020-03-31"
* group.population.code.coding = http://terminology.hl7.org/CodeSystem/measure-population#numerator
* group.population.count = 406
* group.population[1].code.coding = http://terminology.hl7.org/CodeSystem/measure-population#denominator
* group.population[1].count = 4102
* group.measureScore.value = 9.9
* group.measureScore.unit = "%"
* group.measureScore.code = http://unitsofmeasure.org#%

Instance: FEMAexampleDE-positiveIncreasePercent
InstanceOf: MeasureReport
Description : "Example MeasureReport of positiveIncreasePercent for DE on 03/31/2020"
* id = "FEMAexampleDE-positiveIncreasePercent"
* identifier.system = "https://www.census.gov/geographies"
* identifier.value = "10"
* status = #complete
* type = #summary
* measure = "http://ainq.com/fhir/us/saner/Measure/SANERpositiveIncreasePercent"
* subject.extension.url = "http://hl7.org/fhir/StructureDefinition/geolocation"
* subject.extension.extension[0].url = "latitude"
* subject.extension.extension[0].valueDecimal = 38.9896
* subject.extension.extension[1].url = "longitude"
* subject.extension.extension[1].valueDecimal = 75.505
* subject.reference = "Location/states-DE"
* subject.display = "State of Delaware"
* date = "2020-03-31"
* reporter.reference = "Organization/DE-DPH"
* reporter.display = "Delaware Department of Public Health"
* period.start = "2020-03-31"
* period.end = "2020-03-31"
* group.population.code.coding = http://terminology.hl7.org/CodeSystem/measure-population#numerator
* group.population.count = 142
* group.population[1].code.coding = http://terminology.hl7.org/CodeSystem/measure-population#denominator
* group.population[1].count = 1622
* group.measureScore.value = 8.75
* group.measureScore.unit = "%"
* group.measureScore.code = http://unitsofmeasure.org#%

Instance: FEMAexampleDE
InstanceOf: Bundle
Description : "Example MeasureReport bundle for DE"
* id = "FEMAexampleDE"
* identifier.value = "d1e145"
* identifier.system = "http://example.com"
* type = #collection
* entry[0].resource = FEMAexampleDE-positive
* entry[0].fullUrl = "http://ainq.com/fhir/us/saner/MeasureReport/FEMAexampleDE-positive"
* entry[1].resource = FEMAexampleDE-totalTestResults
* entry[1].fullUrl = "http://ainq.com/fhir/us/saner/MeasureReport/FEMAexampleDE-totalTestResults"
* entry[2].resource = FEMAexampleDE-positiveIncrease
* entry[2].fullUrl = "http://ainq.com/fhir/us/saner/MeasureReport/FEMAexampleDE-positiveIncrease"
* entry[3].resource = FEMAexampleDE-totalTestResultsIncrease
* entry[3].fullUrl = "http://ainq.com/fhir/us/saner/MeasureReport/FEMAexampleDE-totalTestResultsIncrease"
* entry[4].resource = FEMAexampleDE-positivePercent
* entry[4].fullUrl = "http://ainq.com/fhir/us/saner/MeasureReport/FEMAexampleDE-positivePercent"
* entry[5].resource = FEMAexampleDE-positiveIncreasePercent
* entry[5].fullUrl = "http://ainq.com/fhir/us/saner/MeasureReport/FEMAexampleDE-positiveIncreasePercent"
