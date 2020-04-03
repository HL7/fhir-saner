
Instance: states-DC
InstanceOf: Location
Description : "Example Location for the State of District of Columbia"
* id = "states-DC"
* identifier.system = "https://www.census.gov/geographies"
* identifier.value = "11"
* name = "District of Columbia"
* position.latitude = 28.6305
* position.longitude = 82.4497

Instance: DC-DPH
InstanceOf: Organization
Description : "Example Organization for the District of Columbia Department of Public Health"
* id = "DC-DPH"
* name = "District of Columbia Department of Public Health"

Instance: FEMAexampleDC-positive
InstanceOf: MeasureReport
Description : "Example MeasureReport of positive for DC on 03/31/2020"
* id = "FEMAexampleDC-positive"
* identifier.system = "https://www.census.gov/geographies"
* identifier.value = "11"
* status = #complete
* type = #summary
* measure = "http://ainq.com/fhir/us/saner/Measure/SANERpositive"
* subject.extension.url = "http://hl7.org/fhir/StructureDefinition/geolocation"
* subject.extension.extension[0].url = "latitude"
* subject.extension.extension[0].valueDecimal = 28.6305
* subject.extension.extension[1].url = "longitude"
* subject.extension.extension[1].valueDecimal = 82.4497
* subject.reference = "Location/states-DC"
* subject.display = "State of District of Columbia"
* date = "2020-03-31"
* reporter.reference = "Organization/DC-DPH"
* reporter.display = "District of Columbia Department of Public Health"
* period.start = "2020-03-31"
* period.end = "2020-03-31"
* group.population.code.coding = http://terminology.hl7.org/CodeSystem/measure-population#measure-population
* group.population.count = 495
* group.population[1].code.coding = http://terminology.hl7.org/CodeSystem/measure-population#initial-population
* group.population[1].count = 3757
* group.measureScore.value = 495
* group.measureScore.unit = "Laboratory test (procedure)"
* group.measureScore.code = http://snomed.info/sct#15220000

Instance: FEMAexampleDC-totalTestResults
InstanceOf: MeasureReport
Description : "Example MeasureReport of totalTestResults for DC on 03/31/2020"
* id = "FEMAexampleDC-totalTestResults"
* identifier.system = "https://www.census.gov/geographies"
* identifier.value = "11"
* status = #complete
* type = #summary
* measure = "http://ainq.com/fhir/us/saner/Measure/SANERtotalTestResults"
* subject.extension.url = "http://hl7.org/fhir/StructureDefinition/geolocation"
* subject.extension.extension[0].url = "latitude"
* subject.extension.extension[0].valueDecimal = 28.6305
* subject.extension.extension[1].url = "longitude"
* subject.extension.extension[1].valueDecimal = 82.4497
* subject.reference = "Location/states-DC"
* subject.display = "State of District of Columbia"
* date = "2020-03-31"
* reporter.reference = "Organization/DC-DPH"
* reporter.display = "District of Columbia Department of Public Health"
* period.start = "2020-03-31"
* period.end = "2020-03-31"
* group.population.code.coding = http://terminology.hl7.org/CodeSystem/measure-population#measure-population
* group.population.count = 3757
* group.population[1].code.coding = http://terminology.hl7.org/CodeSystem/measure-population#initial-population
* group.population[1].count = 3757
* group.measureScore.value = 3757
* group.measureScore.unit = "Laboratory test (procedure)"
* group.measureScore.code = http://snomed.info/sct#15220000

Instance: FEMAexampleDC-positiveIncrease
InstanceOf: MeasureReport
Description : "Example MeasureReport of positiveIncrease for DC on 03/31/2020"
* id = "FEMAexampleDC-positiveIncrease"
* identifier.system = "https://www.census.gov/geographies"
* identifier.value = "11"
* status = #complete
* type = #summary
* measure = "http://ainq.com/fhir/us/saner/Measure/SANERpositiveIncrease"
* subject.extension.url = "http://hl7.org/fhir/StructureDefinition/geolocation"
* subject.extension.extension[0].url = "latitude"
* subject.extension.extension[0].valueDecimal = 28.6305
* subject.extension.extension[1].url = "longitude"
* subject.extension.extension[1].valueDecimal = 82.4497
* subject.reference = "Location/states-DC"
* subject.display = "State of District of Columbia"
* date = "2020-03-31"
* reporter.reference = "Organization/DC-DPH"
* reporter.display = "District of Columbia Department of Public Health"
* period.start = "2020-03-31"
* period.end = "2020-03-31"
* group.population.code.coding = http://terminology.hl7.org/CodeSystem/measure-population#measure-population
* group.population.count = 94
* group.population[1].code.coding = http://terminology.hl7.org/CodeSystem/measure-population#initial-population
* group.population[1].count = 3757
* group.measureScore.value = 94
* group.measureScore.unit = "Laboratory test (procedure)"
* group.measureScore.code = http://snomed.info/sct#15220000

Instance: FEMAexampleDC-totalTestResultsIncrease
InstanceOf: MeasureReport
Description : "Example MeasureReport of totalTestResultsIncrease for DC on 03/31/2020"
* id = "FEMAexampleDC-totalTestResultsIncrease"
* identifier.system = "https://www.census.gov/geographies"
* identifier.value = "11"
* status = #complete
* type = #summary
* measure = "http://ainq.com/fhir/us/saner/Measure/SANERtotalTestResultsIncrease"
* subject.extension.url = "http://hl7.org/fhir/StructureDefinition/geolocation"
* subject.extension.extension[0].url = "latitude"
* subject.extension.extension[0].valueDecimal = 28.6305
* subject.extension.extension[1].url = "longitude"
* subject.extension.extension[1].valueDecimal = 82.4497
* subject.reference = "Location/states-DC"
* subject.display = "State of District of Columbia"
* date = "2020-03-31"
* reporter.reference = "Organization/DC-DPH"
* reporter.display = "District of Columbia Department of Public Health"
* period.start = "2020-03-31"
* period.end = "2020-03-31"
* group.population.code.coding = http://terminology.hl7.org/CodeSystem/measure-population#measure-population
* group.population.count = 674
* group.population[1].code.coding = http://terminology.hl7.org/CodeSystem/measure-population#initial-population
* group.population[1].count = 3757
* group.measureScore.value = 674
* group.measureScore.unit = "Laboratory test (procedure)"
* group.measureScore.code = http://snomed.info/sct#15220000

Instance: FEMAexampleDC-positivePercent
InstanceOf: MeasureReport
Description : "Example MeasureReport of positivePercent for DC on 03/31/2020"
* id = "FEMAexampleDC-positivePercent"
* identifier.system = "https://www.census.gov/geographies"
* identifier.value = "11"
* status = #complete
* type = #summary
* measure = "http://ainq.com/fhir/us/saner/Measure/SANERpositivePercent"
* subject.extension.url = "http://hl7.org/fhir/StructureDefinition/geolocation"
* subject.extension.extension[0].url = "latitude"
* subject.extension.extension[0].valueDecimal = 28.6305
* subject.extension.extension[1].url = "longitude"
* subject.extension.extension[1].valueDecimal = 82.4497
* subject.reference = "Location/states-DC"
* subject.display = "State of District of Columbia"
* date = "2020-03-31"
* reporter.reference = "Organization/DC-DPH"
* reporter.display = "District of Columbia Department of Public Health"
* period.start = "2020-03-31"
* period.end = "2020-03-31"
* group.population.code.coding = http://terminology.hl7.org/CodeSystem/measure-population#numerator
* group.population.count = 495
* group.population[1].code.coding = http://terminology.hl7.org/CodeSystem/measure-population#denominator
* group.population[1].count = 3757
* group.measureScore.value = 13.18
* group.measureScore.unit = "%"
* group.measureScore.code = http://unitsofmeasure.org#%

Instance: FEMAexampleDC-positiveIncreasePercent
InstanceOf: MeasureReport
Description : "Example MeasureReport of positiveIncreasePercent for DC on 03/31/2020"
* id = "FEMAexampleDC-positiveIncreasePercent"
* identifier.system = "https://www.census.gov/geographies"
* identifier.value = "11"
* status = #complete
* type = #summary
* measure = "http://ainq.com/fhir/us/saner/Measure/SANERpositiveIncreasePercent"
* subject.extension.url = "http://hl7.org/fhir/StructureDefinition/geolocation"
* subject.extension.extension[0].url = "latitude"
* subject.extension.extension[0].valueDecimal = 28.6305
* subject.extension.extension[1].url = "longitude"
* subject.extension.extension[1].valueDecimal = 82.4497
* subject.reference = "Location/states-DC"
* subject.display = "State of District of Columbia"
* date = "2020-03-31"
* reporter.reference = "Organization/DC-DPH"
* reporter.display = "District of Columbia Department of Public Health"
* period.start = "2020-03-31"
* period.end = "2020-03-31"
* group.population.code.coding = http://terminology.hl7.org/CodeSystem/measure-population#numerator
* group.population.count = 94
* group.population[1].code.coding = http://terminology.hl7.org/CodeSystem/measure-population#denominator
* group.population[1].count = 674
* group.measureScore.value = 13.95
* group.measureScore.unit = "%"
* group.measureScore.code = http://unitsofmeasure.org#%

Instance: FEMAexampleDC
InstanceOf: Bundle
Description : "Example MeasureReport bundle for DC"
* id = "FEMAexampleDC"
* identifier.value = "d1e129"
* identifier.system = "http://example.com"
* type = #collection
* entry[0].resource = FEMAexampleDC-positive
* entry[0].fullUrl = "http://ainq.com/fhir/us/saner/MeasureReport/FEMAexampleDC-positive"
* entry[1].resource = FEMAexampleDC-totalTestResults
* entry[1].fullUrl = "http://ainq.com/fhir/us/saner/MeasureReport/FEMAexampleDC-totalTestResults"
* entry[2].resource = FEMAexampleDC-positiveIncrease
* entry[2].fullUrl = "http://ainq.com/fhir/us/saner/MeasureReport/FEMAexampleDC-positiveIncrease"
* entry[3].resource = FEMAexampleDC-totalTestResultsIncrease
* entry[3].fullUrl = "http://ainq.com/fhir/us/saner/MeasureReport/FEMAexampleDC-totalTestResultsIncrease"
* entry[4].resource = FEMAexampleDC-positivePercent
* entry[4].fullUrl = "http://ainq.com/fhir/us/saner/MeasureReport/FEMAexampleDC-positivePercent"
* entry[5].resource = FEMAexampleDC-positiveIncreasePercent
* entry[5].fullUrl = "http://ainq.com/fhir/us/saner/MeasureReport/FEMAexampleDC-positiveIncreasePercent"
