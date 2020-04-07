
Instance: states-AZ
InstanceOf: Location
Description : "Example Location for the State of Arizona"
* id = "states-AZ"
* identifier.system = "https://www.census.gov/geographies"
* identifier.value = "4"
* name = "Arizona"
* position.latitude = 34.2744
* position.longitude = 111.6602

Instance: AZ-DPH
InstanceOf: Organization
Description : "Example Organization for the Arizona Department of Public Health"
* id = "AZ-DPH"
* name = "Arizona Department of Public Health"

Instance: FEMAexampleAZ-positive
InstanceOf: MeasureReport
Description : "Example MeasureReport of positive for AZ on 03/31/2020"
* id = "FEMAexampleAZ-positive"
* identifier.system = "https://www.census.gov/geographies"
* identifier.value = "4"
* status = #complete
* type = #summary
* measure = "http://ainq.com/fhir/us/saner/Measure/SANERpositive"
* subject.extension.url = "http://hl7.org/fhir/StructureDefinition/geolocation"
* subject.extension.extension[0].url = "latitude"
* subject.extension.extension[0].valueDecimal = 34.2744
* subject.extension.extension[1].url = "longitude"
* subject.extension.extension[1].valueDecimal = 111.6602
* subject.reference = "Location/states-AZ"
* subject.display = "State of Arizona"
* date = "2020-03-31"
* reporter.reference = "Organization/AZ-DPH"
* reporter.display = "Arizona Department of Public Health"
* period.start = "2020-03-31"
* period.end = "2020-03-31"
* group.population.code.coding = http://terminology.hl7.org/CodeSystem/measure-population#measure-population
* group.population.count = 1289
* group.population[1].code.coding = http://terminology.hl7.org/CodeSystem/measure-population#initial-population
* group.population[1].count = 19371
* group.measureScore.value = 1289
* group.measureScore.unit = "Laboratory test (procedure)"
* group.measureScore.code = http://snomed.info/sct#15220000

Instance: FEMAexampleAZ-totalTestResults
InstanceOf: MeasureReport
Description : "Example MeasureReport of totalTestResults for AZ on 03/31/2020"
* id = "FEMAexampleAZ-totalTestResults"
* identifier.system = "https://www.census.gov/geographies"
* identifier.value = "4"
* status = #complete
* type = #summary
* measure = "http://ainq.com/fhir/us/saner/Measure/SANERtotalTestResults"
* subject.extension.url = "http://hl7.org/fhir/StructureDefinition/geolocation"
* subject.extension.extension[0].url = "latitude"
* subject.extension.extension[0].valueDecimal = 34.2744
* subject.extension.extension[1].url = "longitude"
* subject.extension.extension[1].valueDecimal = 111.6602
* subject.reference = "Location/states-AZ"
* subject.display = "State of Arizona"
* date = "2020-03-31"
* reporter.reference = "Organization/AZ-DPH"
* reporter.display = "Arizona Department of Public Health"
* period.start = "2020-03-31"
* period.end = "2020-03-31"
* group.population.code.coding = http://terminology.hl7.org/CodeSystem/measure-population#measure-population
* group.population.count = 19371
* group.population[1].code.coding = http://terminology.hl7.org/CodeSystem/measure-population#initial-population
* group.population[1].count = 19371
* group.measureScore.value = 19371
* group.measureScore.unit = "Laboratory test (procedure)"
* group.measureScore.code = http://snomed.info/sct#15220000

Instance: FEMAexampleAZ-positiveIncrease
InstanceOf: MeasureReport
Description : "Example MeasureReport of positiveIncrease for AZ on 03/31/2020"
* id = "FEMAexampleAZ-positiveIncrease"
* identifier.system = "https://www.census.gov/geographies"
* identifier.value = "4"
* status = #complete
* type = #summary
* measure = "http://ainq.com/fhir/us/saner/Measure/SANERpositiveIncrease"
* subject.extension.url = "http://hl7.org/fhir/StructureDefinition/geolocation"
* subject.extension.extension[0].url = "latitude"
* subject.extension.extension[0].valueDecimal = 34.2744
* subject.extension.extension[1].url = "longitude"
* subject.extension.extension[1].valueDecimal = 111.6602
* subject.reference = "Location/states-AZ"
* subject.display = "State of Arizona"
* date = "2020-03-31"
* reporter.reference = "Organization/AZ-DPH"
* reporter.display = "Arizona Department of Public Health"
* period.start = "2020-03-31"
* period.end = "2020-03-31"
* group.population.code.coding = http://terminology.hl7.org/CodeSystem/measure-population#measure-population
* group.population.count = 132
* group.population[1].code.coding = http://terminology.hl7.org/CodeSystem/measure-population#initial-population
* group.population[1].count = 19371
* group.measureScore.value = 132
* group.measureScore.unit = "Laboratory test (procedure)"
* group.measureScore.code = http://snomed.info/sct#15220000

Instance: FEMAexampleAZ-totalTestResultsIncrease
InstanceOf: MeasureReport
Description : "Example MeasureReport of totalTestResultsIncrease for AZ on 03/31/2020"
* id = "FEMAexampleAZ-totalTestResultsIncrease"
* identifier.system = "https://www.census.gov/geographies"
* identifier.value = "4"
* status = #complete
* type = #summary
* measure = "http://ainq.com/fhir/us/saner/Measure/SANERtotalTestResultsIncrease"
* subject.extension.url = "http://hl7.org/fhir/StructureDefinition/geolocation"
* subject.extension.extension[0].url = "latitude"
* subject.extension.extension[0].valueDecimal = 34.2744
* subject.extension.extension[1].url = "longitude"
* subject.extension.extension[1].valueDecimal = 111.6602
* subject.reference = "Location/states-AZ"
* subject.display = "State of Arizona"
* date = "2020-03-31"
* reporter.reference = "Organization/AZ-DPH"
* reporter.display = "Arizona Department of Public Health"
* period.start = "2020-03-31"
* period.end = "2020-03-31"
* group.population.code.coding = http://terminology.hl7.org/CodeSystem/measure-population#measure-population
* group.population.count = 2612
* group.population[1].code.coding = http://terminology.hl7.org/CodeSystem/measure-population#initial-population
* group.population[1].count = 19371
* group.measureScore.value = 2612
* group.measureScore.unit = "Laboratory test (procedure)"
* group.measureScore.code = http://snomed.info/sct#15220000

Instance: FEMAexampleAZ-positivePercent
InstanceOf: MeasureReport
Description : "Example MeasureReport of positivePercent for AZ on 03/31/2020"
* id = "FEMAexampleAZ-positivePercent"
* identifier.system = "https://www.census.gov/geographies"
* identifier.value = "4"
* status = #complete
* type = #summary
* measure = "http://ainq.com/fhir/us/saner/Measure/SANERpositivePercent"
* subject.extension.url = "http://hl7.org/fhir/StructureDefinition/geolocation"
* subject.extension.extension[0].url = "latitude"
* subject.extension.extension[0].valueDecimal = 34.2744
* subject.extension.extension[1].url = "longitude"
* subject.extension.extension[1].valueDecimal = 111.6602
* subject.reference = "Location/states-AZ"
* subject.display = "State of Arizona"
* date = "2020-03-31"
* reporter.reference = "Organization/AZ-DPH"
* reporter.display = "Arizona Department of Public Health"
* period.start = "2020-03-31"
* period.end = "2020-03-31"
* group.population.code.coding = http://terminology.hl7.org/CodeSystem/measure-population#numerator
* group.population.count = 1289
* group.population[1].code.coding = http://terminology.hl7.org/CodeSystem/measure-population#denominator
* group.population[1].count = 19371
* group.measureScore.value = 6.65
* group.measureScore.unit = "%"
* group.measureScore.code = http://unitsofmeasure.org#%

Instance: FEMAexampleAZ-positiveIncreasePercent
InstanceOf: MeasureReport
Description : "Example MeasureReport of positiveIncreasePercent for AZ on 03/31/2020"
* id = "FEMAexampleAZ-positiveIncreasePercent"
* identifier.system = "https://www.census.gov/geographies"
* identifier.value = "4"
* status = #complete
* type = #summary
* measure = "http://ainq.com/fhir/us/saner/Measure/SANERpositiveIncreasePercent"
* subject.extension.url = "http://hl7.org/fhir/StructureDefinition/geolocation"
* subject.extension.extension[0].url = "latitude"
* subject.extension.extension[0].valueDecimal = 34.2744
* subject.extension.extension[1].url = "longitude"
* subject.extension.extension[1].valueDecimal = 111.6602
* subject.reference = "Location/states-AZ"
* subject.display = "State of Arizona"
* date = "2020-03-31"
* reporter.reference = "Organization/AZ-DPH"
* reporter.display = "Arizona Department of Public Health"
* period.start = "2020-03-31"
* period.end = "2020-03-31"
* group.population.code.coding = http://terminology.hl7.org/CodeSystem/measure-population#numerator
* group.population.count = 132
* group.population[1].code.coding = http://terminology.hl7.org/CodeSystem/measure-population#denominator
* group.population[1].count = 2612
* group.measureScore.value = 5.05
* group.measureScore.unit = "%"
* group.measureScore.code = http://unitsofmeasure.org#%

Instance: FEMAexampleAZ
InstanceOf: Bundle
Description : "Example MeasureReport bundle for AZ"
* id = "FEMAexampleAZ"
* identifier.value = "d1e64"
* identifier.system = "http://example.com"
* type = #collection
* entry[0].resource = FEMAexampleAZ-positive
* entry[0].fullUrl = "http://ainq.com/fhir/us/saner/MeasureReport/FEMAexampleAZ-positive"
* entry[1].resource = FEMAexampleAZ-totalTestResults
* entry[1].fullUrl = "http://ainq.com/fhir/us/saner/MeasureReport/FEMAexampleAZ-totalTestResults"
* entry[2].resource = FEMAexampleAZ-positiveIncrease
* entry[2].fullUrl = "http://ainq.com/fhir/us/saner/MeasureReport/FEMAexampleAZ-positiveIncrease"
* entry[3].resource = FEMAexampleAZ-totalTestResultsIncrease
* entry[3].fullUrl = "http://ainq.com/fhir/us/saner/MeasureReport/FEMAexampleAZ-totalTestResultsIncrease"
* entry[4].resource = FEMAexampleAZ-positivePercent
* entry[4].fullUrl = "http://ainq.com/fhir/us/saner/MeasureReport/FEMAexampleAZ-positivePercent"
* entry[5].resource = FEMAexampleAZ-positiveIncreasePercent
* entry[5].fullUrl = "http://ainq.com/fhir/us/saner/MeasureReport/FEMAexampleAZ-positiveIncreasePercent"
