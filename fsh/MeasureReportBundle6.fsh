
Instance: states-CO
InstanceOf: Location
Description : "Example Location for the State of Colorado"
* id = "states-CO"
* identifier.system = "https://www.census.gov/geographies"
* identifier.value = "8"
* name = "Colorado"
* position.latitude = 38.9972
* position.longitude = 105.5478

Instance: CO-DPH
InstanceOf: Organization
Description : "Example Organization for the Colorado Department of Public Health"
* id = "CO-DPH"
* name = "Colorado Department of Public Health"

Instance: FEMAexampleCO-positive
InstanceOf: MeasureReport
Description : "Example MeasureReport of positive for CO on 03/31/2020"
* id = "FEMAexampleCO-positive"
* identifier.system = "https://www.census.gov/geographies"
* identifier.value = "8"
* status = #complete
* type = #summary
* measure = "http://ainq.com/fhir/us/saner/Measure/SANERpositive"
* subject.extension.url = "http://hl7.org/fhir/StructureDefinition/geolocation"
* subject.extension.extension[0].url = "latitude"
* subject.extension.extension[0].valueDecimal = 38.9972
* subject.extension.extension[1].url = "longitude"
* subject.extension.extension[1].valueDecimal = 105.5478
* subject.reference = "Location/states-CO"
* subject.display = "State of Colorado"
* date = "2020-03-31"
* reporter.reference = "Organization/CO-DPH"
* reporter.display = "Colorado Department of Public Health"
* period.start = "2020-03-31"
* period.end = "2020-03-31"
* group.population.code.coding = http://terminology.hl7.org/CodeSystem/measure-population#measure-population
* group.population.count = 2627
* group.population[1].code.coding = http://terminology.hl7.org/CodeSystem/measure-population#initial-population
* group.population[1].count = 15364
* group.measureScore.value = 2627
* group.measureScore.unit = "Laboratory test (procedure)"
* group.measureScore.code = http://snomed.info/sct#15220000

Instance: FEMAexampleCO-totalTestResults
InstanceOf: MeasureReport
Description : "Example MeasureReport of totalTestResults for CO on 03/31/2020"
* id = "FEMAexampleCO-totalTestResults"
* identifier.system = "https://www.census.gov/geographies"
* identifier.value = "8"
* status = #complete
* type = #summary
* measure = "http://ainq.com/fhir/us/saner/Measure/SANERtotalTestResults"
* subject.extension.url = "http://hl7.org/fhir/StructureDefinition/geolocation"
* subject.extension.extension[0].url = "latitude"
* subject.extension.extension[0].valueDecimal = 38.9972
* subject.extension.extension[1].url = "longitude"
* subject.extension.extension[1].valueDecimal = 105.5478
* subject.reference = "Location/states-CO"
* subject.display = "State of Colorado"
* date = "2020-03-31"
* reporter.reference = "Organization/CO-DPH"
* reporter.display = "Colorado Department of Public Health"
* period.start = "2020-03-31"
* period.end = "2020-03-31"
* group.population.code.coding = http://terminology.hl7.org/CodeSystem/measure-population#measure-population
* group.population.count = 15364
* group.population[1].code.coding = http://terminology.hl7.org/CodeSystem/measure-population#initial-population
* group.population[1].count = 15364
* group.measureScore.value = 15364
* group.measureScore.unit = "Laboratory test (procedure)"
* group.measureScore.code = http://snomed.info/sct#15220000

Instance: FEMAexampleCO-positiveIncrease
InstanceOf: MeasureReport
Description : "Example MeasureReport of positiveIncrease for CO on 03/31/2020"
* id = "FEMAexampleCO-positiveIncrease"
* identifier.system = "https://www.census.gov/geographies"
* identifier.value = "8"
* status = #complete
* type = #summary
* measure = "http://ainq.com/fhir/us/saner/Measure/SANERpositiveIncrease"
* subject.extension.url = "http://hl7.org/fhir/StructureDefinition/geolocation"
* subject.extension.extension[0].url = "latitude"
* subject.extension.extension[0].valueDecimal = 38.9972
* subject.extension.extension[1].url = "longitude"
* subject.extension.extension[1].valueDecimal = 105.5478
* subject.reference = "Location/states-CO"
* subject.display = "State of Colorado"
* date = "2020-03-31"
* reporter.reference = "Organization/CO-DPH"
* reporter.display = "Colorado Department of Public Health"
* period.start = "2020-03-31"
* period.end = "2020-03-31"
* group.population.code.coding = http://terminology.hl7.org/CodeSystem/measure-population#measure-population
* group.population.count = 0
* group.population[1].code.coding = http://terminology.hl7.org/CodeSystem/measure-population#initial-population
* group.population[1].count = 15364
* group.measureScore.value = 0
* group.measureScore.unit = "Laboratory test (procedure)"
* group.measureScore.code = http://snomed.info/sct#15220000

Instance: FEMAexampleCO-totalTestResultsIncrease
InstanceOf: MeasureReport
Description : "Example MeasureReport of totalTestResultsIncrease for CO on 03/31/2020"
* id = "FEMAexampleCO-totalTestResultsIncrease"
* identifier.system = "https://www.census.gov/geographies"
* identifier.value = "8"
* status = #complete
* type = #summary
* measure = "http://ainq.com/fhir/us/saner/Measure/SANERtotalTestResultsIncrease"
* subject.extension.url = "http://hl7.org/fhir/StructureDefinition/geolocation"
* subject.extension.extension[0].url = "latitude"
* subject.extension.extension[0].valueDecimal = 38.9972
* subject.extension.extension[1].url = "longitude"
* subject.extension.extension[1].valueDecimal = 105.5478
* subject.reference = "Location/states-CO"
* subject.display = "State of Colorado"
* date = "2020-03-31"
* reporter.reference = "Organization/CO-DPH"
* reporter.display = "Colorado Department of Public Health"
* period.start = "2020-03-31"
* period.end = "2020-03-31"
* group.population.code.coding = http://terminology.hl7.org/CodeSystem/measure-population#measure-population
* group.population.count = 0
* group.population[1].code.coding = http://terminology.hl7.org/CodeSystem/measure-population#initial-population
* group.population[1].count = 15364
* group.measureScore.value = 0
* group.measureScore.unit = "Laboratory test (procedure)"
* group.measureScore.code = http://snomed.info/sct#15220000

Instance: FEMAexampleCO-positivePercent
InstanceOf: MeasureReport
Description : "Example MeasureReport of positivePercent for CO on 03/31/2020"
* id = "FEMAexampleCO-positivePercent"
* identifier.system = "https://www.census.gov/geographies"
* identifier.value = "8"
* status = #complete
* type = #summary
* measure = "http://ainq.com/fhir/us/saner/Measure/SANERpositivePercent"
* subject.extension.url = "http://hl7.org/fhir/StructureDefinition/geolocation"
* subject.extension.extension[0].url = "latitude"
* subject.extension.extension[0].valueDecimal = 38.9972
* subject.extension.extension[1].url = "longitude"
* subject.extension.extension[1].valueDecimal = 105.5478
* subject.reference = "Location/states-CO"
* subject.display = "State of Colorado"
* date = "2020-03-31"
* reporter.reference = "Organization/CO-DPH"
* reporter.display = "Colorado Department of Public Health"
* period.start = "2020-03-31"
* period.end = "2020-03-31"
* group.population.code.coding = http://terminology.hl7.org/CodeSystem/measure-population#numerator
* group.population.count = 2627
* group.population[1].code.coding = http://terminology.hl7.org/CodeSystem/measure-population#denominator
* group.population[1].count = 15364
* group.measureScore.value = 17.1
* group.measureScore.unit = "%"
* group.measureScore.code = http://unitsofmeasure.org#%

Instance: FEMAexampleCO
InstanceOf: Bundle
Description : "Example MeasureReport bundle for CO"
* id = "FEMAexampleCO"
* identifier.value = "d1e97"
* identifier.system = "http://example.com"
* type = #collection
* entry[0].resource = FEMAexampleCO-positive
* entry[0].fullUrl = "http://ainq.com/fhir/us/saner/MeasureReport/FEMAexampleCO-positive"
* entry[1].resource = FEMAexampleCO-totalTestResults
* entry[1].fullUrl = "http://ainq.com/fhir/us/saner/MeasureReport/FEMAexampleCO-totalTestResults"
* entry[2].resource = FEMAexampleCO-positiveIncrease
* entry[2].fullUrl = "http://ainq.com/fhir/us/saner/MeasureReport/FEMAexampleCO-positiveIncrease"
* entry[3].resource = FEMAexampleCO-totalTestResultsIncrease
* entry[3].fullUrl = "http://ainq.com/fhir/us/saner/MeasureReport/FEMAexampleCO-totalTestResultsIncrease"
* entry[4].resource = FEMAexampleCO-positivePercent
* entry[4].fullUrl = "http://ainq.com/fhir/us/saner/MeasureReport/FEMAexampleCO-positivePercent"
