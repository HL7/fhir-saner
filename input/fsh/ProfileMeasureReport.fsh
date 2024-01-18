Invariant: DateTimePreciseToSecond
Description: "The dateTime value must contain seconds and a timezone"
// Expression: "replaceMatches('[0-9.T]','').length()=6"
Expression: "value.toString().length()=25"
Severity: #error
//XPath: "string-length(replace(@value,'01234566789.T',''))=6"
/*
Profile: PreciseDateTime
Parent: dateTime
Title: "Precise Date Time"
Description: "A dateTime value that contains seconds and a timezone"
* insert SanerStructureDefinitionContent
* value obeys DateTimePreciseToSecond
*/
Invariant: ReporterPresentInCompleteReport
Description: "A reporter must be present in a complete report."
Expression: "MeasureReport.status != 'completed' or MeasureReport.reporter.exists()"
XPath: "/f:MeasureReport/f:status != 'completed' or /f:MeasureReport/f:reporter"
Severity: #error

Invariant: HasValueOrDataAbsentReason
Description: "A population.count must have a value, or .extension.url = 'http://hl7.org/fhir/StructureDefinition/data-absent-reason'"
Expression: "count.exists() or extension.url = 'http://hl7.org/fhir/StructureDefinition/data-absent-reason'"
XPath: "f:count or f:extension[@url='http://hl7.org/fhir/StructureDefinition/data-absent-reason']"
Severity: #error

Extension: GeoLocation
Title: "Extension Attributes to associate with a Location Reference to simplify Geographic search"
Description: """This is essentially a database denormalization that facilitates search by Geographics coordinates on a location.
It enables a FHIR Server to implement search on a MeasureReport by GeoLocation using an extension.
The extension is purposefully designed to duplicate the existing [FHIR GeoLocation Extension](http://hl7.org/fhir/StructureDefinition/geolocation)
in the hope that it could eventually be absorbed by that extension."""
Context: MeasureReport.subject
* insert SanerStructureDefinitionContent

* extension contains latitude 1..1 and longitude 1..1
* extension[latitude].value[x] only decimal
* extension[longitude].value[x] only decimal


Profile:        PublicHealthMeasureReport
Parent:         MeasureReport
Title:          "Public Health Measure Report"
Description:    """Profile Public Health Measure Report

The Public Health Measure Report Profile ensures that MeasureReports conforms to the minimal content required to properly interpret
a report of a Public Health Measure.
"""
* insert SanerStructureDefinitionContent
* obeys ReporterPresentInCompleteReport

* ^jurisdiction = urn:iso:std:iso:3166#US
* status from MeasureReportStatus
* status ^short = "complete | pending | error"
* status ^comment = """complete - The MeasureReport is complete and can be transmitted to others.

pending - The MeasureReport is a partial report, and must be aggregated with other information into a new report in order to be complete.

error - MeasureReport was determined to be in error."""
* measure 1..1 MS
* measure ^short = "Each MeasureReport resource must document the measure it is reporting for."

* type = #summary
* type ^short = "MeasureReports generated conforming to this profile are always summary reports"
* type ^comment = "Other profiles may support collection of subject-list data (e.g., for contact tracing)"

* subject only Reference(Location)
* subject 1..1 MS
* subject ^short = "The subject of a report is a location, e.g., a facility, region, service area, state or other geographic region"
* subject ^comment = "The report is about a site or larger geographic region.  Individual measures within the report may be related to other subjects, but the report itself describes information about a location."
* subject.identifier 1..1  MS
* subject.identifier ^short = "The subject shall have an identifier which uniquely identifies the subject to the recepient."
* subject.identifier ^comment = "Requiring subject.identifier allows reports to be queried by locations using a well-known identifier."
* subject.extension contains GeoLocation named geolocation 0..1

* date 1..1  MS
//* date only PreciseDateTime
* date obeys DateTimePreciseToSecond
* date ^short = "The date the report was generated must be specified, and must be precise to the second"
* date ^comment = "Since report generation is being automated, reporting to the second should not be a significant burden"

* period 1..1  MS
* period ^short = "A period must be present"
* period.start 1..1  MS
//* period.start only PreciseDateTime
* period.start obeys DateTimePreciseToSecond
* period.start ^short = "The start time of the period must be present, be precise to the second, and have a time zone"
* period.end 1..1  MS
* period.start ^short = "The end time of the period must be present, be precise to the second, and have a time zone"
//* period.end only PreciseDateTime
* period.end obeys DateTimePreciseToSecond

* group.code 1..1  MS
* group.code ^short = "The code for each group must be present to enable matching to the measure, and a value must be present that matches the required binding codes in the Measure"

* group.population 1..* MS
* group.population.code 1..1  MS
* group.population.code ^short = "The code for each population must be present to enable matching to the measure, and a value must be present that matches the required binding codes in the Measure"
* group.population obeys HasValueOrDataAbsentReason
* group.population.count 1..1 MS
* group.population.count ^short = "A count must be present for each population. Unknown values may be reported using the http://hl7.org/fhir/StructureDefinition/data-absent-reason extension."

* group.stratifier 0..* MS
* group.stratifier.code 1..*  MS
* group.stratifier.code ^short = "A stratifier must have a code when present"

* group.stratifier.stratum 1..*  MS
* group.stratifier.stratum ^short = "There must be at least one stratum reported"

* group.stratifier.stratum.value 0..0
* group.stratifier.stratum.value ^short = "Strata are not identified using value, see stratum.component below"

* group.stratifier.stratum.population 1..*  MS
* group.stratifier.stratum.population ^short = "At least one stratum population must be present"
* group.stratifier.stratum.population.code 1..1  MS
* group.stratifier.stratum.population.code ^short = "The population code must be present"
* group.stratifier.stratum.population.count 1..1  MS
* group.stratifier.stratum.population.count ^short = "The population code count be present"

* evaluatedResource 0..* MS
* evaluatedResource ^short = "Include references to MeasureReport or QuestionnaireResponse resources used to compute an aggregated report"
* evaluatedResource ^comment = """
When a MeasureReport is prepared by translation of a QuestionnaireReponse, or through aggregation of other MeasureReports (e.g., over time,
or geographic area), this element can be used to include references to the resources used to create the aggregated or translated
MeasureReeport.
"""
