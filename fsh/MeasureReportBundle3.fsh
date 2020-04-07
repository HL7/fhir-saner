
Instance: states-AR
InstanceOf: Location
Description : "Example Location for the State of Arkansas"
* id = "states-AR"
* identifier.system = "https://www.census.gov/geographies"
* identifier.value = "5"
* name = "Arkansas"
* position.latitude = 34.8938
* position.longitude = 92.4426

Instance: AR-DPH
InstanceOf: Organization
Description : "Example Organization for the Arkansas Department of Public Health"
* id = "AR-DPH"
* name = "Arkansas Department of Public Health"

Instance: FEMAexampleAR-positive
InstanceOf: MeasureReport
Description : "Example MeasureReport of positive for AR on 03/31/2020"
* id = "FEMAexampleAR-positive"
* identifier.system = "https://www.census.gov/geographies"
* identifier.value = "5"
* status = #complete
* type = #summary
* measure = "http://ainq.com/fhir/us/saner/Measure/SANERpositive"
* subject.extension.url = "http://hl7.org/fhir/StructureDefinition/geolocation"
* subject.extension.extension[0].url = "latitude"
* subject.extension.extension[0].valueDecimal = 34.8938
* subject.extension.extension[1].url = "longitude"
* subject.extension.extension[1].valueDecimal = 92.4426
* subject.reference = "Location/states-AR"
* subject.display = "State of Arkansas"
* date = "2020-03-31"
* reporter.reference = "Organization/AR-DPH"
* reporter.display = "Arkansas Department of Public Health"
* period.start = "2020-03-31"
* period.end = "2020-03-31"
* group.population.code.coding = http://terminology.hl7.org/CodeSystem/measure-population#measure-population
* group.population.count = 523
* group.population[1].code.coding = http://terminology.hl7.org/CodeSystem/measure-population#initial-population
* group.population[1].count = 6482
* group.measureScore.value = 523
* group.measureScore.unit = "Laboratory test (procedure)"
* group.measureScore.code = http://snomed.info/sct#15220000

Instance: FEMAexampleAR-totalTestResults
InstanceOf: MeasureReport
Description : "Example MeasureReport of totalTestResults for AR on 03/31/2020"
* id = "FEMAexampleAR-totalTestResults"
* identifier.system = "https://www.census.gov/geographies"
* identifier.value = "5"
* status = #complete
* type = #summary
* measure = "http://ainq.com/fhir/us/saner/Measure/SANERtotalTestResults"
* subject.extension.url = "http://hl7.org/fhir/StructureDefinition/geolocation"
* subject.extension.extension[0].url = "latitude"
* subject.extension.extension[0].valueDecimal = 34.8938
* subject.extension.extension[1].url = "longitude"
* subject.extension.extension[1].valueDecimal = 92.4426
* subject.reference = "Location/states-AR"
* subject.display = "State of Arkansas"
* date = "2020-03-31"
* reporter.reference = "Organization/AR-DPH"
* reporter.display = "Arkansas Department of Public Health"
* period.start = "2020-03-31"
* period.end = "2020-03-31"
* group.population.code.coding = http://terminology.hl7.org/CodeSystem/measure-population#measure-population
* group.population.count = 6482
* group.population[1].code.coding = http://terminology.hl7.org/CodeSystem/measure-population#initial-population
* group.population[1].count = 6482
* group.measureScore.value = 6482
* group.measureScore.unit = "Laboratory test (procedure)"
* group.measureScore.code = http://snomed.info/sct#15220000

Instance: FEMAexampleAR-positiveIncrease
InstanceOf: MeasureReport
Description : "Example MeasureReport of positiveIncrease for AR on 03/31/2020"
* id = "FEMAexampleAR-positiveIncrease"
* identifier.system = "https://www.census.gov/geographies"
* identifier.value = "5"
* status = #complete
* type = #summary
* measure = "http://ainq.com/fhir/us/saner/Measure/SANERpositiveIncrease"
* subject.extension.url = "http://hl7.org/fhir/StructureDefinition/geolocation"
* subject.extension.extension[0].url = "latitude"
* subject.extension.extension[0].valueDecimal = 34.8938
* subject.extension.extension[1].url = "longitude"
* subject.extension.extension[1].valueDecimal = 92.4426
* subject.reference = "Location/states-AR"
* subject.display = "State of Arkansas"
* date = "2020-03-31"
* reporter.reference = "Organization/AR-DPH"
* reporter.display = "Arkansas Department of Public Health"
* period.start = "2020-03-31"
* period.end = "2020-03-31"
* group.population.code.coding = http://terminology.hl7.org/CodeSystem/measure-population#measure-population
* group.population.count = 50
* group.population[1].code.coding = http://terminology.hl7.org/CodeSystem/measure-population#initial-population
* group.population[1].count = 6482
* group.measureScore.value = 50
* group.measureScore.unit = "Laboratory test (procedure)"
* group.measureScore.code = http://snomed.info/sct#15220000

Instance: FEMAexampleAR-totalTestResultsIncrease
InstanceOf: MeasureReport
Description : "Example MeasureReport of totalTestResultsIncrease for AR on 03/31/2020"
* id = "FEMAexampleAR-totalTestResultsIncrease"
* identifier.system = "https://www.census.gov/geographies"
* identifier.value = "5"
* status = #complete
* type = #summary
* measure = "http://ainq.com/fhir/us/saner/Measure/SANERtotalTestResultsIncrease"
* subject.extension.url = "http://hl7.org/fhir/StructureDefinition/geolocation"
* subject.extension.extension[0].url = "latitude"
* subject.extension.extension[0].valueDecimal = 34.8938
* subject.extension.extension[1].url = "longitude"
* subject.extension.extension[1].valueDecimal = 92.4426
* subject.reference = "Location/states-AR"
* subject.display = "State of Arkansas"
* date = "2020-03-31"
* reporter.reference = "Organization/AR-DPH"
* reporter.display = "Arkansas Department of Public Health"
* period.start = "2020-03-31"
* period.end = "2020-03-31"
* group.population.code.coding = http://terminology.hl7.org/CodeSystem/measure-population#measure-population
* group.population.count = 747
* group.population[1].code.coding = http://terminology.hl7.org/CodeSystem/measure-population#initial-population
* group.population[1].count = 6482
* group.measureScore.value = 747
* group.measureScore.unit = "Laboratory test (procedure)"
* group.measureScore.code = http://snomed.info/sct#15220000

Instance: FEMAexampleAR-positivePercent
InstanceOf: MeasureReport
Description : "Example MeasureReport of positivePercent for AR on 03/31/2020"
* id = "FEMAexampleAR-positivePercent"
* identifier.system = "https://www.census.gov/geographies"
* identifier.value = "5"
* status = #complete
* type = #summary
* measure = "http://ainq.com/fhir/us/saner/Measure/SANERpositivePercent"
* subject.extension.url = "http://hl7.org/fhir/StructureDefinition/geolocation"
* subject.extension.extension[0].url = "latitude"
* subject.extension.extension[0].valueDecimal = 34.8938
* subject.extension.extension[1].url = "longitude"
* subject.extension.extension[1].valueDecimal = 92.4426
* subject.reference = "Location/states-AR"
* subject.display = "State of Arkansas"
* date = "2020-03-31"
* reporter.reference = "Organization/AR-DPH"
* reporter.display = "Arkansas Department of Public Health"
* period.start = "2020-03-31"
* period.end = "2020-03-31"
* group.population.code.coding = http://terminology.hl7.org/CodeSystem/measure-population#numerator
* group.population.count = 523
* group.population[1].code.coding = http://terminology.hl7.org/CodeSystem/measure-population#denominator
* group.population[1].count = 6482
* group.measureScore.value = 8.07
* group.measureScore.unit = "%"
* group.measureScore.code = http://unitsofmeasure.org#%

Instance: FEMAexampleAR-positiveIncreasePercent
InstanceOf: MeasureReport
Description : "Example MeasureReport of positiveIncreasePercent for AR on 03/31/2020"
* id = "FEMAexampleAR-positiveIncreasePercent"
* identifier.system = "https://www.census.gov/geographies"
* identifier.value = "5"
* status = #complete
* type = #summary
* measure = "http://ainq.com/fhir/us/saner/Measure/SANERpositiveIncreasePercent"
* subject.extension.url = "http://hl7.org/fhir/StructureDefinition/geolocation"
* subject.extension.extension[0].url = "latitude"
* subject.extension.extension[0].valueDecimal = 34.8938
* subject.extension.extension[1].url = "longitude"
* subject.extension.extension[1].valueDecimal = 92.4426
* subject.reference = "Location/states-AR"
* subject.display = "State of Arkansas"
* date = "2020-03-31"
* reporter.reference = "Organization/AR-DPH"
* reporter.display = "Arkansas Department of Public Health"
* period.start = "2020-03-31"
* period.end = "2020-03-31"
* group.population.code.coding = http://terminology.hl7.org/CodeSystem/measure-population#numerator
* group.population.count = 50
* group.population[1].code.coding = http://terminology.hl7.org/CodeSystem/measure-population#denominator
* group.population[1].count = 747
* group.measureScore.value = 6.69
* group.measureScore.unit = "%"
* group.measureScore.code = http://unitsofmeasure.org#%

Instance: FEMAexampleAR
InstanceOf: Bundle
Description : "Example MeasureReport bundle for AR"
* id = "FEMAexampleAR"
* identifier.value = "d1e33"
* identifier.system = "http://example.com"
* type = #collection
* entry[0].resource = FEMAexampleAR-positive
* entry[0].fullUrl = "http://ainq.com/fhir/us/saner/MeasureReport/FEMAexampleAR-positive"
* entry[1].resource = FEMAexampleAR-totalTestResults
* entry[1].fullUrl = "http://ainq.com/fhir/us/saner/MeasureReport/FEMAexampleAR-totalTestResults"
* entry[2].resource = FEMAexampleAR-positiveIncrease
* entry[2].fullUrl = "http://ainq.com/fhir/us/saner/MeasureReport/FEMAexampleAR-positiveIncrease"
* entry[3].resource = FEMAexampleAR-totalTestResultsIncrease
* entry[3].fullUrl = "http://ainq.com/fhir/us/saner/MeasureReport/FEMAexampleAR-totalTestResultsIncrease"
* entry[4].resource = FEMAexampleAR-positivePercent
* entry[4].fullUrl = "http://ainq.com/fhir/us/saner/MeasureReport/FEMAexampleAR-positivePercent"
* entry[5].resource = FEMAexampleAR-positiveIncreasePercent
* entry[5].fullUrl = "http://ainq.com/fhir/us/saner/MeasureReport/FEMAexampleAR-positiveIncreasePercent"
