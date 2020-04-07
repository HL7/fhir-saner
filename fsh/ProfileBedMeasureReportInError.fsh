Profile:        BedMeasureReport
Parent:         MeasureReport
Id:             saner-bed-measure-report
Title:          "Bed MeasureReport Profile"
Description:    "Defines constraints on the MeasureReport Resource for reporting that a previous version of a report was made in error"

* status = #error
* status ^comment = "Indicates that a previous version of the resource was in error"
* type = #summary
* type ^comment = "Type is always summary for reports"
* measure 1..1
* measure ^comment = "The measure involved in the erroneous report must be sent"
* subject 1..1
* subject ^comment = "The subject involved in the erroneous report must be sent"
* date 1..1
* date ^comment = "This is the date the error is reported, not the date of the report that was in error"
* period 1..1
* period ^comment = "The period associated with the erroneous report must be sent"
* group 0..0
* group ^comment = "The group information is not sent"

