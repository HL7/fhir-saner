
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
