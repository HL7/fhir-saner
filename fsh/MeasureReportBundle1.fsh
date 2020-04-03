
Instance: states-AK
InstanceOf: Location
Description : "Example Location for the State of Alaska"
* id = "states-AK"
* identifier.system = "https://www.census.gov/geographies"
* identifier.value = "2"
* name = "Alaska"
* position.latitude = 64.0685
* position.longitude = 152.2782

Instance: AK-DPH
InstanceOf: Organization
Description : "Example Organization for the Alaska Department of Public Health"
* id = "AK-DPH"
* name = "Alaska Department of Public Health"

Instance: FEMAexampleAK-positive
InstanceOf: MeasureReport
Description : "Example MeasureReport of positive for AK on 03/31/2020"
* id = "FEMAexampleAK-positive"
* identifier.system = "https://www.census.gov/geographies"
* identifier.value = "2"
* status = #complete
* type = #summary
* measure = "http://ainq.com/fhir/us/saner/Measure/SANERpositive"
* subject.extension.url = "http://hl7.org/fhir/StructureDefinition/geolocation"
* subject.extension.extension[0].url = "latitude"
* subject.extension.extension[0].valueDecimal = 64.0685
* subject.extension.extension[1].url = "longitude"
* subject.extension.extension[1].valueDecimal = 152.2782
* subject.reference = "Location/states-AK"
* subject.display = "State of Alaska"
* date = "2020-03-31"
* reporter.reference = "Organization/AK-DPH"
* reporter.display = "Alaska Department of Public Health"
* period.start = "2020-03-31"
* period.end = "2020-03-31"
* group.population.code.coding = http://terminology.hl7.org/CodeSystem/measure-population#measure-population
* group.population.count = 119
* group.population[1].code.coding = http://terminology.hl7.org/CodeSystem/measure-population#initial-population
* group.population[1].count = 3713
* group.measureScore.value = 119
* group.measureScore.unit = "Laboratory test (procedure)"
* group.measureScore.code = http://snomed.info/sct#15220000

Instance: FEMAexampleAK-totalTestResults
InstanceOf: MeasureReport
Description : "Example MeasureReport of totalTestResults for AK on 03/31/2020"
* id = "FEMAexampleAK-totalTestResults"
* identifier.system = "https://www.census.gov/geographies"
* identifier.value = "2"
* status = #complete
* type = #summary
* measure = "http://ainq.com/fhir/us/saner/Measure/SANERtotalTestResults"
* subject.extension.url = "http://hl7.org/fhir/StructureDefinition/geolocation"
* subject.extension.extension[0].url = "latitude"
* subject.extension.extension[0].valueDecimal = 64.0685
* subject.extension.extension[1].url = "longitude"
* subject.extension.extension[1].valueDecimal = 152.2782
* subject.reference = "Location/states-AK"
* subject.display = "State of Alaska"
* date = "2020-03-31"
* reporter.reference = "Organization/AK-DPH"
* reporter.display = "Alaska Department of Public Health"
* period.start = "2020-03-31"
* period.end = "2020-03-31"
* group.population.code.coding = http://terminology.hl7.org/CodeSystem/measure-population#measure-population
* group.population.count = 3713
* group.population[1].code.coding = http://terminology.hl7.org/CodeSystem/measure-population#initial-population
* group.population[1].count = 3713
* group.measureScore.value = 3713
* group.measureScore.unit = "Laboratory test (procedure)"
* group.measureScore.code = http://snomed.info/sct#15220000

Instance: FEMAexampleAK-positiveIncrease
InstanceOf: MeasureReport
Description : "Example MeasureReport of positiveIncrease for AK on 03/31/2020"
* id = "FEMAexampleAK-positiveIncrease"
* identifier.system = "https://www.census.gov/geographies"
* identifier.value = "2"
* status = #complete
* type = #summary
* measure = "http://ainq.com/fhir/us/saner/Measure/SANERpositiveIncrease"
* subject.extension.url = "http://hl7.org/fhir/StructureDefinition/geolocation"
* subject.extension.extension[0].url = "latitude"
* subject.extension.extension[0].valueDecimal = 64.0685
* subject.extension.extension[1].url = "longitude"
* subject.extension.extension[1].valueDecimal = 152.2782
* subject.reference = "Location/states-AK"
* subject.display = "State of Alaska"
* date = "2020-03-31"
* reporter.reference = "Organization/AK-DPH"
* reporter.display = "Alaska Department of Public Health"
* period.start = "2020-03-31"
* period.end = "2020-03-31"
* group.population.code.coding = http://terminology.hl7.org/CodeSystem/measure-population#measure-population
* group.population.count = 5
* group.population[1].code.coding = http://terminology.hl7.org/CodeSystem/measure-population#initial-population
* group.population[1].count = 3713
* group.measureScore.value = 5
* group.measureScore.unit = "Laboratory test (procedure)"
* group.measureScore.code = http://snomed.info/sct#15220000

Instance: FEMAexampleAK-totalTestResultsIncrease
InstanceOf: MeasureReport
Description : "Example MeasureReport of totalTestResultsIncrease for AK on 03/31/2020"
* id = "FEMAexampleAK-totalTestResultsIncrease"
* identifier.system = "https://www.census.gov/geographies"
* identifier.value = "2"
* status = #complete
* type = #summary
* measure = "http://ainq.com/fhir/us/saner/Measure/SANERtotalTestResultsIncrease"
* subject.extension.url = "http://hl7.org/fhir/StructureDefinition/geolocation"
* subject.extension.extension[0].url = "latitude"
* subject.extension.extension[0].valueDecimal = 64.0685
* subject.extension.extension[1].url = "longitude"
* subject.extension.extension[1].valueDecimal = 152.2782
* subject.reference = "Location/states-AK"
* subject.display = "State of Alaska"
* date = "2020-03-31"
* reporter.reference = "Organization/AK-DPH"
* reporter.display = "Alaska Department of Public Health"
* period.start = "2020-03-31"
* period.end = "2020-03-31"
* group.population.code.coding = http://terminology.hl7.org/CodeSystem/measure-population#measure-population
* group.population.count = 59
* group.population[1].code.coding = http://terminology.hl7.org/CodeSystem/measure-population#initial-population
* group.population[1].count = 3713
* group.measureScore.value = 59
* group.measureScore.unit = "Laboratory test (procedure)"
* group.measureScore.code = http://snomed.info/sct#15220000

Instance: FEMAexampleAK-positivePercent
InstanceOf: MeasureReport
Description : "Example MeasureReport of positivePercent for AK on 03/31/2020"
* id = "FEMAexampleAK-positivePercent"
* identifier.system = "https://www.census.gov/geographies"
* identifier.value = "2"
* status = #complete
* type = #summary
* measure = "http://ainq.com/fhir/us/saner/Measure/SANERpositivePercent"
* subject.extension.url = "http://hl7.org/fhir/StructureDefinition/geolocation"
* subject.extension.extension[0].url = "latitude"
* subject.extension.extension[0].valueDecimal = 64.0685
* subject.extension.extension[1].url = "longitude"
* subject.extension.extension[1].valueDecimal = 152.2782
* subject.reference = "Location/states-AK"
* subject.display = "State of Alaska"
* date = "2020-03-31"
* reporter.reference = "Organization/AK-DPH"
* reporter.display = "Alaska Department of Public Health"
* period.start = "2020-03-31"
* period.end = "2020-03-31"
* group.population.code.coding = http://terminology.hl7.org/CodeSystem/measure-population#numerator
* group.population.count = 119
* group.population[1].code.coding = http://terminology.hl7.org/CodeSystem/measure-population#denominator
* group.population[1].count = 3713
* group.measureScore.value = 3.2
* group.measureScore.unit = "%"
* group.measureScore.code = http://unitsofmeasure.org#%

Instance: FEMAexampleAK-positiveIncreasePercent
InstanceOf: MeasureReport
Description : "Example MeasureReport of positiveIncreasePercent for AK on 03/31/2020"
* id = "FEMAexampleAK-positiveIncreasePercent"
* identifier.system = "https://www.census.gov/geographies"
* identifier.value = "2"
* status = #complete
* type = #summary
* measure = "http://ainq.com/fhir/us/saner/Measure/SANERpositiveIncreasePercent"
* subject.extension.url = "http://hl7.org/fhir/StructureDefinition/geolocation"
* subject.extension.extension[0].url = "latitude"
* subject.extension.extension[0].valueDecimal = 64.0685
* subject.extension.extension[1].url = "longitude"
* subject.extension.extension[1].valueDecimal = 152.2782
* subject.reference = "Location/states-AK"
* subject.display = "State of Alaska"
* date = "2020-03-31"
* reporter.reference = "Organization/AK-DPH"
* reporter.display = "Alaska Department of Public Health"
* period.start = "2020-03-31"
* period.end = "2020-03-31"
* group.population.code.coding = http://terminology.hl7.org/CodeSystem/measure-population#numerator
* group.population.count = 5
* group.population[1].code.coding = http://terminology.hl7.org/CodeSystem/measure-population#denominator
* group.population[1].count = 59
* group.measureScore.value = 8.47
* group.measureScore.unit = "%"
* group.measureScore.code = http://unitsofmeasure.org#%

Instance: FEMAexampleAK
InstanceOf: Bundle
Description : "Example MeasureReport bundle for AK"
* id = "FEMAexampleAK"
* identifier.value = "d1e2"
* identifier.system = "http://example.com"
* type = #collection
* entry[0].resource = FEMAexampleAK-positive
* entry[0].fullUrl = "http://ainq.com/fhir/us/saner/MeasureReport/FEMAexampleAK-positive"
* entry[1].resource = FEMAexampleAK-totalTestResults
* entry[1].fullUrl = "http://ainq.com/fhir/us/saner/MeasureReport/FEMAexampleAK-totalTestResults"
* entry[2].resource = FEMAexampleAK-positiveIncrease
* entry[2].fullUrl = "http://ainq.com/fhir/us/saner/MeasureReport/FEMAexampleAK-positiveIncrease"
* entry[3].resource = FEMAexampleAK-totalTestResultsIncrease
* entry[3].fullUrl = "http://ainq.com/fhir/us/saner/MeasureReport/FEMAexampleAK-totalTestResultsIncrease"
* entry[4].resource = FEMAexampleAK-positivePercent
* entry[4].fullUrl = "http://ainq.com/fhir/us/saner/MeasureReport/FEMAexampleAK-positivePercent"
* entry[5].resource = FEMAexampleAK-positiveIncreasePercent
* entry[5].fullUrl = "http://ainq.com/fhir/us/saner/MeasureReport/FEMAexampleAK-positiveIncreasePercent"
