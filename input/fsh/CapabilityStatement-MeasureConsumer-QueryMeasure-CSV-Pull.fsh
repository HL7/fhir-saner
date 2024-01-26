
Instance: MeasureConsumer-QueryMeasure-CSV-Pull
InstanceOf: CapabilityStatementWithSlices
Usage: #definition
Description: """
Defines the additional requirements for the Measure Consumer implementing the Query Measure transaction with the CSV Option and the Pull Option."""
* insert SanerDefinitionContent
* name = "MeasureConsumer_QueryMeasure_CSV_Pull"
* title = "Measure Consumer implementing the Query Measure transaction with the CSV Option and the Pull Option."
* date = "2021-07-26"
* kind = #requirements
* description = "Defines the additional requirements for the Measure Consumer implementing the Query Measure transaction with the CSV Option and the Pull Option."
* format[0] = #xml
* format[1] = #json
* fhirVersion = #4.0.1

* rest[clientSlice].mode = #client

* rest[clientSlice].resource[MeasureReportSlice].type = #MeasureReport
* rest[clientSlice].resource[MeasureReportSlice].supportedProfile[0] = "http://hl7.org/fhir/uv/saner/StructureDefinition/PublicHealthMeasureReport"

* rest[clientSlice].resource[MeasureReportSlice].operation[0].name = "read-csv"
* rest[clientSlice].resource[MeasureReportSlice].operation[0].definition = "http://hl7.org/fhir/uv/saner/OperationDefinition/MeasureReport-read-csv"
* rest[clientSlice].resource[MeasureReportSlice].operation[0].documentation = "Read in CSV Format"

* rest[clientSlice].resource[MeasureReportSlice].operation[1].name = "search-csv"
* rest[clientSlice].resource[MeasureReportSlice].operation[1].definition = "http://hl7.org/fhir/uv/saner/OperationDefinition/MeasureReport-search-csv"
* rest[clientSlice].resource[MeasureReportSlice].operation[1].documentation = "Search in CSV Format"
* text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\"><h2 id=\"title\">Measure Consumer implementing the Query Measure transaction with the CSV Option and the Pull Option.</h2><ul><li><b>Official URL:</b><code>http://hl7.org/fhir/uv/saner/CapabilityStatement/MeasureConsumer-QueryMeasure-CSV-Pull</code></li><li><b>Implementation Guide Version:</b> 1.0.1</li><li><b>FHIR Version:</b> 4.0.1</li><li><b>Intended Use:</b> Requirements</li><li><b>Supported Formats:</b>\n\t\t\t\t\n                    XML, JSON\n\t\t\t\t\n\t\t\t\t</li><li><b>Published:</b> 2021-07-26</li><li><b>Published by:</b> HL7 International Public Health Workgroup</li><li><b>Status:</b> Draft (experimental)</li></ul><p>Defines the additional requirements for the Measure Consumer implementing the Query Measure transaction with the CSV Option and the Pull Option.</p><!-- REST Behavior --><h3 id=\"behavior\">FHIR Client RESTful Capabilities</h3><h3 class=\"no_toc\" id=\"resource--details\">RESTful Capabilities by Resource/Profile:</h3><p><strong>Summary</strong></p><table class=\"grid\"><thead><tr><th>Resource Type</th><th>Supported Interactions</th><th>Supported Profiles</th><th>Supported Searches</th><th>Supported <code>_includes</code></th><th>Supported <code>_revincludes</code></th><th>Supported Operations</th></tr></thead><tbody><tr><td><a href=\"#measurereport\">MeasureReport</a></td><td>\n\t\t\t\t\t\t\t\t\t\t\n\t\t\t\t\t\t\t\t\t</td><!-- Supported Profiles --><td><a href=\"http://hl7.org/fhir/uv/saner/StructureDefinition/PublicHealthMeasureReport\">Public Health Measure Report</a></td><!-- Supported Searches --><td>\n\t\t\t\t\t\t\t\t\t\t\n\t\t\t\t\t\t\t\t\t</td><!-- Supported _includes --><td>\n\t\t\t\t\t\t\t\t\t\t\n\t\t\t\t\t\t\t\t\t</td><!-- Supported _revincludes --><td>\n\t\t\t\t\t\t\t\t\t\t\n\t\t\t\t\t\t\t\t\t</td><!-- Supported Operations --><td>\n\t\t\t\t\t\t\t\t\t\t$read-csv, $search-csv\n\t\t\t\t\t\t\t\t\t</td></tr></tbody></table><!-- Resource Details --><h4 class=\"no_toc\" id=\"measurereport\">MeasureReport</h4><p>Conformance Expectation:\t<strong>(conformance expectation undefined)</strong></p><p>Supported Profiles:</p><ul><li><a href=\"http://hl7.org/fhir/uv/saner/StructureDefinition/PublicHealthMeasureReport\">Public Health Measure Report</a></li></ul><p>Operation Summary:</p><ul><li><code>$read-csv</code><sup>&#8224;</sup>, \n\t\t\t\t\t\t\t\t\t\t\t<code>$search-csv</code><sup>&#8224;</sup>.</li></ul><blockquote><p>$read-csv<sup>&#8224;</sup></p><p>Read in CSV Format</p></blockquote><blockquote><p>$search-csv<sup>&#8224;</sup></p><p>Search in CSV Format</p></blockquote></div>"
* text.status = #generated
