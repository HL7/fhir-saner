
Instance: states-CT
InstanceOf: Location
Description : "Example Location for the State of Connecticut"
* id = "states-CT"
* identifier.system = "https://www.census.gov/geographies"
* identifier.value = "9"
* name = "Connecticut"
* position.latitude = 41.6219
* position.longitude = 72.7273

Instance: CT-DPH
InstanceOf: Organization
Description : "Example Organization for the Connecticut Department of Public Health"
* id = "CT-DPH"
* name = "Connecticut Department of Public Health"

Instance: FEMAexampleCT-positive
InstanceOf: MeasureReport
Description : "Example MeasureReport of positive for CT on 03/31/2020"
* id = "FEMAexampleCT-positive"
* identifier.system = "https://www.census.gov/geographies"
* identifier.value = "9"
* status = #complete
* type = #summary
* measure = "http://ainq.com/fhir/us/saner/Measure/SANERpositive"
* subject.extension.url = "http://hl7.org/fhir/StructureDefinition/geolocation"
* subject.extension.extension[0].url = "latitude"
* subject.extension.extension[0].valueDecimal = 41.6219
* subject.extension.extension[1].url = "longitude"
* subject.extension.extension[1].valueDecimal = 72.7273
* subject.reference = "Location/states-CT"
* subject.display = "State of Connecticut"
* date = "2020-03-31"
* reporter.reference = "Organization/CT-DPH"
* reporter.display = "Connecticut Department of Public Health"
* period.start = "2020-03-31"
* period.end = "2020-03-31"
* group.population.code.coding = http://terminology.hl7.org/CodeSystem/measure-population#measure-population
* group.population.count = 3128
* group.population[1].code.coding = http://terminology.hl7.org/CodeSystem/measure-population#initial-population
* group.population[1].count = 16157
* group.measureScore.value = 3128
* group.measureScore.unit = "Laboratory test (procedure)"
* group.measureScore.code = http://snomed.info/sct#15220000

Instance: FEMAexampleCT-totalTestResults
InstanceOf: MeasureReport
Description : "Example MeasureReport of totalTestResults for CT on 03/31/2020"
* id = "FEMAexampleCT-totalTestResults"
* identifier.system = "https://www.census.gov/geographies"
* identifier.value = "9"
* status = #complete
* type = #summary
* measure = "http://ainq.com/fhir/us/saner/Measure/SANERtotalTestResults"
* subject.extension.url = "http://hl7.org/fhir/StructureDefinition/geolocation"
* subject.extension.extension[0].url = "latitude"
* subject.extension.extension[0].valueDecimal = 41.6219
* subject.extension.extension[1].url = "longitude"
* subject.extension.extension[1].valueDecimal = 72.7273
* subject.reference = "Location/states-CT"
* subject.display = "State of Connecticut"
* date = "2020-03-31"
* reporter.reference = "Organization/CT-DPH"
* reporter.display = "Connecticut Department of Public Health"
* period.start = "2020-03-31"
* period.end = "2020-03-31"
* group.population.code.coding = http://terminology.hl7.org/CodeSystem/measure-population#measure-population
* group.population.count = 16157
* group.population[1].code.coding = http://terminology.hl7.org/CodeSystem/measure-population#initial-population
* group.population[1].count = 16157
* group.measureScore.value = 16157
* group.measureScore.unit = "Laboratory test (procedure)"
* group.measureScore.code = http://snomed.info/sct#15220000

Instance: FEMAexampleCT-positiveIncrease
InstanceOf: MeasureReport
Description : "Example MeasureReport of positiveIncrease for CT on 03/31/2020"
* id = "FEMAexampleCT-positiveIncrease"
* identifier.system = "https://www.census.gov/geographies"
* identifier.value = "9"
* status = #complete
* type = #summary
* measure = "http://ainq.com/fhir/us/saner/Measure/SANERpositiveIncrease"
* subject.extension.url = "http://hl7.org/fhir/StructureDefinition/geolocation"
* subject.extension.extension[0].url = "latitude"
* subject.extension.extension[0].valueDecimal = 41.6219
* subject.extension.extension[1].url = "longitude"
* subject.extension.extension[1].valueDecimal = 72.7273
* subject.reference = "Location/states-CT"
* subject.display = "State of Connecticut"
* date = "2020-03-31"
* reporter.reference = "Organization/CT-DPH"
* reporter.display = "Connecticut Department of Public Health"
* period.start = "2020-03-31"
* period.end = "2020-03-31"
* group.population.code.coding = http://terminology.hl7.org/CodeSystem/measure-population#measure-population
* group.population.count = 557
* group.population[1].code.coding = http://terminology.hl7.org/CodeSystem/measure-population#initial-population
* group.population[1].count = 16157
* group.measureScore.value = 557
* group.measureScore.unit = "Laboratory test (procedure)"
* group.measureScore.code = http://snomed.info/sct#15220000

Instance: FEMAexampleCT-totalTestResultsIncrease
InstanceOf: MeasureReport
Description : "Example MeasureReport of totalTestResultsIncrease for CT on 03/31/2020"
* id = "FEMAexampleCT-totalTestResultsIncrease"
* identifier.system = "https://www.census.gov/geographies"
* identifier.value = "9"
* status = #complete
* type = #summary
* measure = "http://ainq.com/fhir/us/saner/Measure/SANERtotalTestResultsIncrease"
* subject.extension.url = "http://hl7.org/fhir/StructureDefinition/geolocation"
* subject.extension.extension[0].url = "latitude"
* subject.extension.extension[0].valueDecimal = 41.6219
* subject.extension.extension[1].url = "longitude"
* subject.extension.extension[1].valueDecimal = 72.7273
* subject.reference = "Location/states-CT"
* subject.display = "State of Connecticut"
* date = "2020-03-31"
* reporter.reference = "Organization/CT-DPH"
* reporter.display = "Connecticut Department of Public Health"
* period.start = "2020-03-31"
* period.end = "2020-03-31"
* group.population.code.coding = http://terminology.hl7.org/CodeSystem/measure-population#measure-population
* group.population.count = 1557
* group.population[1].code.coding = http://terminology.hl7.org/CodeSystem/measure-population#initial-population
* group.population[1].count = 16157
* group.measureScore.value = 1557
* group.measureScore.unit = "Laboratory test (procedure)"
* group.measureScore.code = http://snomed.info/sct#15220000

Instance: FEMAexampleCT-positivePercent
InstanceOf: MeasureReport
Description : "Example MeasureReport of positivePercent for CT on 03/31/2020"
* id = "FEMAexampleCT-positivePercent"
* identifier.system = "https://www.census.gov/geographies"
* identifier.value = "9"
* status = #complete
* type = #summary
* measure = "http://ainq.com/fhir/us/saner/Measure/SANERpositivePercent"
* subject.extension.url = "http://hl7.org/fhir/StructureDefinition/geolocation"
* subject.extension.extension[0].url = "latitude"
* subject.extension.extension[0].valueDecimal = 41.6219
* subject.extension.extension[1].url = "longitude"
* subject.extension.extension[1].valueDecimal = 72.7273
* subject.reference = "Location/states-CT"
* subject.display = "State of Connecticut"
* date = "2020-03-31"
* reporter.reference = "Organization/CT-DPH"
* reporter.display = "Connecticut Department of Public Health"
* period.start = "2020-03-31"
* period.end = "2020-03-31"
* group.population.code.coding = http://terminology.hl7.org/CodeSystem/measure-population#numerator
* group.population.count = 3128
* group.population[1].code.coding = http://terminology.hl7.org/CodeSystem/measure-population#denominator
* group.population[1].count = 16157
* group.measureScore.value = 19.36
* group.measureScore.unit = "%"
* group.measureScore.code = http://unitsofmeasure.org#%

Instance: FEMAexampleCT-positiveIncreasePercent
InstanceOf: MeasureReport
Description : "Example MeasureReport of positiveIncreasePercent for CT on 03/31/2020"
* id = "FEMAexampleCT-positiveIncreasePercent"
* identifier.system = "https://www.census.gov/geographies"
* identifier.value = "9"
* status = #complete
* type = #summary
* measure = "http://ainq.com/fhir/us/saner/Measure/SANERpositiveIncreasePercent"
* subject.extension.url = "http://hl7.org/fhir/StructureDefinition/geolocation"
* subject.extension.extension[0].url = "latitude"
* subject.extension.extension[0].valueDecimal = 41.6219
* subject.extension.extension[1].url = "longitude"
* subject.extension.extension[1].valueDecimal = 72.7273
* subject.reference = "Location/states-CT"
* subject.display = "State of Connecticut"
* date = "2020-03-31"
* reporter.reference = "Organization/CT-DPH"
* reporter.display = "Connecticut Department of Public Health"
* period.start = "2020-03-31"
* period.end = "2020-03-31"
* group.population.code.coding = http://terminology.hl7.org/CodeSystem/measure-population#numerator
* group.population.count = 557
* group.population[1].code.coding = http://terminology.hl7.org/CodeSystem/measure-population#denominator
* group.population[1].count = 1557
* group.measureScore.value = 35.77
* group.measureScore.unit = "%"
* group.measureScore.code = http://unitsofmeasure.org#%

Instance: FEMAexampleCT
InstanceOf: Bundle
Description : "Example MeasureReport bundle for CT"
* id = "FEMAexampleCT"
* identifier.value = "d1e113"
* identifier.system = "http://example.com"
* type = #collection
* entry[0].resource = FEMAexampleCT-positive
* entry[0].fullUrl = "http://ainq.com/fhir/us/saner/MeasureReport/FEMAexampleCT-positive"
* entry[1].resource = FEMAexampleCT-totalTestResults
* entry[1].fullUrl = "http://ainq.com/fhir/us/saner/MeasureReport/FEMAexampleCT-totalTestResults"
* entry[2].resource = FEMAexampleCT-positiveIncrease
* entry[2].fullUrl = "http://ainq.com/fhir/us/saner/MeasureReport/FEMAexampleCT-positiveIncrease"
* entry[3].resource = FEMAexampleCT-totalTestResultsIncrease
* entry[3].fullUrl = "http://ainq.com/fhir/us/saner/MeasureReport/FEMAexampleCT-totalTestResultsIncrease"
* entry[4].resource = FEMAexampleCT-positivePercent
* entry[4].fullUrl = "http://ainq.com/fhir/us/saner/MeasureReport/FEMAexampleCT-positivePercent"
* entry[5].resource = FEMAexampleCT-positiveIncreasePercent
* entry[5].fullUrl = "http://ainq.com/fhir/us/saner/MeasureReport/FEMAexampleCT-positiveIncreasePercent"
