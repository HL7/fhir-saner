
Instance: states-AL
InstanceOf: Location
Description : "Example Location for the State of Alabama"
* id = "states-AL"
* identifier.system = "https://www.census.gov/geographies"
* identifier.value = "1"
* name = "Alabama"
* position.latitude = 32.7794
* position.longitude = 86.8287

Instance: AL-DPH
InstanceOf: Organization
Description : "Example Organization for the Alabama Department of Public Health"
* id = "AL-DPH"
* name = "Alabama Department of Public Health"

Instance: FEMAexampleAL-positive
InstanceOf: MeasureReport
Description : "Example MeasureReport of positive for AL on 03/31/2020"
* id = "FEMAexampleAL-positive"
* identifier.system = "https://www.census.gov/geographies"
* identifier.value = "1"
* status = #complete
* type = #summary
* measure = "http://ainq.com/fhir/us/saner/Measure/SANERpositive"
* subject.extension.url = "http://hl7.org/fhir/StructureDefinition/geolocation"
* subject.extension.extension[0].url = "latitude"
* subject.extension.extension[0].valueDecimal = 32.7794
* subject.extension.extension[1].url = "longitude"
* subject.extension.extension[1].valueDecimal = 86.8287
* subject.reference = "Location/states-AL"
* subject.display = "State of Alabama"
* date = "2020-03-31"
* reporter.reference = "Organization/AL-DPH"
* reporter.display = "Alabama Department of Public Health"
* period.start = "2020-03-31"
* period.end = "2020-03-31"
* group.population.code.coding = http://terminology.hl7.org/CodeSystem/measure-population#measure-population
* group.population.count = 981
* group.population[1].code.coding = http://terminology.hl7.org/CodeSystem/measure-population#initial-population
* group.population[1].count = 7279
* group.measureScore.value = 981
* group.measureScore.unit = "Laboratory test (procedure)"
* group.measureScore.code = http://snomed.info/sct#15220000

Instance: FEMAexampleAL-totalTestResults
InstanceOf: MeasureReport
Description : "Example MeasureReport of totalTestResults for AL on 03/31/2020"
* id = "FEMAexampleAL-totalTestResults"
* identifier.system = "https://www.census.gov/geographies"
* identifier.value = "1"
* status = #complete
* type = #summary
* measure = "http://ainq.com/fhir/us/saner/Measure/SANERtotalTestResults"
* subject.extension.url = "http://hl7.org/fhir/StructureDefinition/geolocation"
* subject.extension.extension[0].url = "latitude"
* subject.extension.extension[0].valueDecimal = 32.7794
* subject.extension.extension[1].url = "longitude"
* subject.extension.extension[1].valueDecimal = 86.8287
* subject.reference = "Location/states-AL"
* subject.display = "State of Alabama"
* date = "2020-03-31"
* reporter.reference = "Organization/AL-DPH"
* reporter.display = "Alabama Department of Public Health"
* period.start = "2020-03-31"
* period.end = "2020-03-31"
* group.population.code.coding = http://terminology.hl7.org/CodeSystem/measure-population#measure-population
* group.population.count = 7279
* group.population[1].code.coding = http://terminology.hl7.org/CodeSystem/measure-population#initial-population
* group.population[1].count = 7279
* group.measureScore.value = 7279
* group.measureScore.unit = "Laboratory test (procedure)"
* group.measureScore.code = http://snomed.info/sct#15220000

Instance: FEMAexampleAL-positiveIncrease
InstanceOf: MeasureReport
Description : "Example MeasureReport of positiveIncrease for AL on 03/31/2020"
* id = "FEMAexampleAL-positiveIncrease"
* identifier.system = "https://www.census.gov/geographies"
* identifier.value = "1"
* status = #complete
* type = #summary
* measure = "http://ainq.com/fhir/us/saner/Measure/SANERpositiveIncrease"
* subject.extension.url = "http://hl7.org/fhir/StructureDefinition/geolocation"
* subject.extension.extension[0].url = "latitude"
* subject.extension.extension[0].valueDecimal = 32.7794
* subject.extension.extension[1].url = "longitude"
* subject.extension.extension[1].valueDecimal = 86.8287
* subject.reference = "Location/states-AL"
* subject.display = "State of Alabama"
* date = "2020-03-31"
* reporter.reference = "Organization/AL-DPH"
* reporter.display = "Alabama Department of Public Health"
* period.start = "2020-03-31"
* period.end = "2020-03-31"
* group.population.code.coding = http://terminology.hl7.org/CodeSystem/measure-population#measure-population
* group.population.count = 122
* group.population[1].code.coding = http://terminology.hl7.org/CodeSystem/measure-population#initial-population
* group.population[1].count = 7279
* group.measureScore.value = 122
* group.measureScore.unit = "Laboratory test (procedure)"
* group.measureScore.code = http://snomed.info/sct#15220000

Instance: FEMAexampleAL-totalTestResultsIncrease
InstanceOf: MeasureReport
Description : "Example MeasureReport of totalTestResultsIncrease for AL on 03/31/2020"
* id = "FEMAexampleAL-totalTestResultsIncrease"
* identifier.system = "https://www.census.gov/geographies"
* identifier.value = "1"
* status = #complete
* type = #summary
* measure = "http://ainq.com/fhir/us/saner/Measure/SANERtotalTestResultsIncrease"
* subject.extension.url = "http://hl7.org/fhir/StructureDefinition/geolocation"
* subject.extension.extension[0].url = "latitude"
* subject.extension.extension[0].valueDecimal = 32.7794
* subject.extension.extension[1].url = "longitude"
* subject.extension.extension[1].valueDecimal = 86.8287
* subject.reference = "Location/states-AL"
* subject.display = "State of Alabama"
* date = "2020-03-31"
* reporter.reference = "Organization/AL-DPH"
* reporter.display = "Alabama Department of Public Health"
* period.start = "2020-03-31"
* period.end = "2020-03-31"
* group.population.code.coding = http://terminology.hl7.org/CodeSystem/measure-population#measure-population
* group.population.count = 726
* group.population[1].code.coding = http://terminology.hl7.org/CodeSystem/measure-population#initial-population
* group.population[1].count = 7279
* group.measureScore.value = 726
* group.measureScore.unit = "Laboratory test (procedure)"
* group.measureScore.code = http://snomed.info/sct#15220000

Instance: FEMAexampleAL-positivePercent
InstanceOf: MeasureReport
Description : "Example MeasureReport of positivePercent for AL on 03/31/2020"
* id = "FEMAexampleAL-positivePercent"
* identifier.system = "https://www.census.gov/geographies"
* identifier.value = "1"
* status = #complete
* type = #summary
* measure = "http://ainq.com/fhir/us/saner/Measure/SANERpositivePercent"
* subject.extension.url = "http://hl7.org/fhir/StructureDefinition/geolocation"
* subject.extension.extension[0].url = "latitude"
* subject.extension.extension[0].valueDecimal = 32.7794
* subject.extension.extension[1].url = "longitude"
* subject.extension.extension[1].valueDecimal = 86.8287
* subject.reference = "Location/states-AL"
* subject.display = "State of Alabama"
* date = "2020-03-31"
* reporter.reference = "Organization/AL-DPH"
* reporter.display = "Alabama Department of Public Health"
* period.start = "2020-03-31"
* period.end = "2020-03-31"
* group.population.code.coding = http://terminology.hl7.org/CodeSystem/measure-population#numerator
* group.population.count = 981
* group.population[1].code.coding = http://terminology.hl7.org/CodeSystem/measure-population#denominator
* group.population[1].count = 7279
* group.measureScore.value = 13.48
* group.measureScore.unit = "%"
* group.measureScore.code = http://unitsofmeasure.org#%

Instance: FEMAexampleAL-positiveIncreasePercent
InstanceOf: MeasureReport
Description : "Example MeasureReport of positiveIncreasePercent for AL on 03/31/2020"
* id = "FEMAexampleAL-positiveIncreasePercent"
* identifier.system = "https://www.census.gov/geographies"
* identifier.value = "1"
* status = #complete
* type = #summary
* measure = "http://ainq.com/fhir/us/saner/Measure/SANERpositiveIncreasePercent"
* subject.extension.url = "http://hl7.org/fhir/StructureDefinition/geolocation"
* subject.extension.extension[0].url = "latitude"
* subject.extension.extension[0].valueDecimal = 32.7794
* subject.extension.extension[1].url = "longitude"
* subject.extension.extension[1].valueDecimal = 86.8287
* subject.reference = "Location/states-AL"
* subject.display = "State of Alabama"
* date = "2020-03-31"
* reporter.reference = "Organization/AL-DPH"
* reporter.display = "Alabama Department of Public Health"
* period.start = "2020-03-31"
* period.end = "2020-03-31"
* group.population.code.coding = http://terminology.hl7.org/CodeSystem/measure-population#numerator
* group.population.count = 122
* group.population[1].code.coding = http://terminology.hl7.org/CodeSystem/measure-population#denominator
* group.population[1].count = 726
* group.measureScore.value = 16.8
* group.measureScore.unit = "%"
* group.measureScore.code = http://unitsofmeasure.org#%

Instance: FEMAexampleAL
InstanceOf: Bundle
Description : "Example MeasureReport bundle for AL"
* id = "FEMAexampleAL"
* identifier.value = "d1e18"
* identifier.system = "http://example.com"
* type = #collection
* entry[0].resource = FEMAexampleAL-positive
* entry[0].fullUrl = "http://ainq.com/fhir/us/saner/MeasureReport/FEMAexampleAL-positive"
* entry[1].resource = FEMAexampleAL-totalTestResults
* entry[1].fullUrl = "http://ainq.com/fhir/us/saner/MeasureReport/FEMAexampleAL-totalTestResults"
* entry[2].resource = FEMAexampleAL-positiveIncrease
* entry[2].fullUrl = "http://ainq.com/fhir/us/saner/MeasureReport/FEMAexampleAL-positiveIncrease"
* entry[3].resource = FEMAexampleAL-totalTestResultsIncrease
* entry[3].fullUrl = "http://ainq.com/fhir/us/saner/MeasureReport/FEMAexampleAL-totalTestResultsIncrease"
* entry[4].resource = FEMAexampleAL-positivePercent
* entry[4].fullUrl = "http://ainq.com/fhir/us/saner/MeasureReport/FEMAexampleAL-positivePercent"
* entry[5].resource = FEMAexampleAL-positiveIncreasePercent
* entry[5].fullUrl = "http://ainq.com/fhir/us/saner/MeasureReport/FEMAexampleAL-positiveIncreasePercent"
