ValueSet: OnlyCompleteOrPending
Description: "This valueset is used to limit the reported status to complete or pending for a MeasureReport"
* http://hl7.org/fhir/measure-report-status#complete
* http://hl7.org/fhir/measure-report-status#pending

Profile:        BedMeasureReport
Parent:         MeasureReport
Id:             saner-bed-measure-report
Title:          "Bed MeasureReport Profile"
Description:    "Defines constraints on the MeasureReport Resource for reporting summary data about Bed availability."

* status from OnlyCompleteOrPending (required)
* status ^comment = "Typical use would be complete, but pending might be used in certain situations"

* type = #summary
* type ^comment = "Type is always summary for reports"

* measure 1..1
* measure ^comment = "The measure involved in report must be sent"

* subject 1..1
* subject only Reference(Location)
* subject ^comment = "The subject involved in report must be sent"

* date 1..1
* date ^comment = "This is the date the summary report was generated, not the time when it was reporting about"

* reporter only Reference(Organization)
* reporter 1..1
* reporter ^comment = "The organization responsible for the report must be sent"

* period 1..1
* period ^comment = "The period associated with the report must be sent."

* group 1..*
* group ^comment = "At least one group must be present"
* group.population.subjectResults 0..0

* group ^slicing.discriminator.type = #pattern
* group ^slicing.discriminator.path = "code"
* group ^slicing.rules = #open
* group ^slicing.description = "Slice based on the group.code pattern"

* group.population.subjectResults 0..0
* group.population.subjectResults ^comment = "summary reports are not subject-list reports"

* group.population.code 1..1
* group.population.code ^comment = "Must include code describing population"

* group.population.count obeys must-have-count-except-measure-observation
* group.population.count ^comment = "Must include a count unless code = measureObservation"

* group.measureScore 1..1
* group.measureScore ^comment = "Must include measureScore to simplify use by others, even if measureScore = count"

* group.stratifier ^slicing.discriminator.type = #pattern
* group.stratifier ^slicing.discriminator.path = "code"
* group.stratifier ^slicing.rules = #open
* group.stratifier ^slicing.description = "Slice based on the group.stratifier.code pattern"

* group.stratifier.code 1..1
* group.stratifier.code from Fields (extensible)
* group.stratifier.code ^comment = "If there is a stratifier, it must be coded"

* group.stratifier.stratum ^slicing.discriminator.type = #pattern
* group.stratifier.stratum ^slicing.discriminator.path = "component.code"
* group.stratifier.stratum ^slicing.rules = #open
* group.stratifier.stratum ^slicing.description = "Slice based on the group.stratifier.stratum.code pattern"

* group.stratifier.stratum.component.code from Fields (extensible)
* group.stratifier.stratum.component.code ^comment = "If there is a stratum, it must be coded"
* group.stratifier.stratum.population.subjectResults 0..0
* group.stratifier.stratum.population.subjectResults ^comment = "summary reports are not subject-list reports"
* group.stratifier.stratum.population.code 1..1
* group.stratifier.stratum.population.code ^comment = "Must include code describing population"

* group.stratifier.stratum.population.count obeys must-have-count-except-measure-observation
* group.stratifier.stratum.population.count ^comment = "Must include a count unless code = measureObservation"


Invariant: must-have-count-except-measure-observation
Description: "A population must have a count when code is not measure-observation"
Expression: "type = 'measure-observation' or count.exists()"
Severity: #error
XPath: "f:type/f:code/@value = 'measure-observation' or f:count"