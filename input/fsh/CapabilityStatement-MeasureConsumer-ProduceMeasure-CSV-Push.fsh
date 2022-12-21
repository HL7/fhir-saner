
Instance: MeasureConsumer-ProduceMeasure-CSV-Push
InstanceOf: CapabilityStatementWithSlices
Usage: #definition
Description: """
Defines the additional requirements for the Measure Consumer implementing the Produce Measure transaction with the CSV Option and the Push Option."""
* insert SanerDefinitionContent
* name = "MeasureConsumer_ProduceMeasure_CSV_Push"
* title = "Measure Consumer implementing the Produce Measure transaction with the CSV Option and the Push Option."
* date = "2021-07-26"
* kind = #requirements
* description = "Defines the additional requirements for the Measure Consumer implementing the Produce Measure transaction with the CSV Option and the Push Option."
* format[0] = #xml
* format[1] = #json
* fhirVersion = #4.0.1

* rest[serverSlice].mode = #server

* rest[serverSlice].resource[MeasureSlice].type = #Measure

* rest[serverSlice].resource[MeasureSlice].operation[0].name = "report-csv"
* rest[serverSlice].resource[MeasureSlice].operation[0].definition = "http://hl7.org/fhir/uv/saner/OperationDefinition/Measure-report-csv"
* rest[serverSlice].resource[MeasureSlice].operation[0].documentation = "Create or update a MeasureReport from CSV Format"
* text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\"><h2 id=\"title\">Measure Consumer implementing the Produce Measure transaction with the CSV Option and the Push Option.</h2><ul><li><b>Official URL:</b><code>http://hl7.org/fhir/uv/saner/CapabilityStatement/MeasureConsumer-ProduceMeasure-CSV-Push</code></li><li><b>Implementation Guide Version:</b> 1.0.1</li><li><b>FHIR Version:</b> 4.0.1</li><li><b>Intended Use:</b> Requirements</li><li><b>Supported Formats:</b>\n\t\t\t\t\n                    XML, JSON\n\t\t\t\t\n\t\t\t\t</li><li><b>Published:</b> 2021-07-26</li><li><b>Published by:</b> HL7 International Public Health Workgroup</li><li><b>Status:</b> Draft (experimental)</li></ul><p>Defines the additional requirements for the Measure Consumer implementing the Produce Measure transaction with the CSV Option and the Push Option.</p><!-- REST Behavior --><h3 id=\"behavior\">FHIR Server RESTful Capabilities</h3><h3 class=\"no_toc\" id=\"resource--details\">RESTful Capabilities by Resource/Profile:</h3><p><strong>Summary</strong></p><table class=\"grid\"><thead><tr><th>Resource Type</th><th>Supported Interactions</th><th>Supported Profiles</th><th>Supported Searches</th><th>Supported <code>_includes</code></th><th>Supported <code>_revincludes</code></th><th>Supported Operations</th></tr></thead><tbody><tr><td><a href=\"#measure\">Measure</a></td><td>\n\t\t\t\t\t\t\t\t\t\t\n\t\t\t\t\t\t\t\t\t</td><!-- Supported Profiles --><td>\n\t\t\t\t\t\t\t\t\t\t\n\t\t\t\t\t\t\t\t\t</td><!-- Supported Searches --><td>\n\t\t\t\t\t\t\t\t\t\t\n\t\t\t\t\t\t\t\t\t</td><!-- Supported _includes --><td>\n\t\t\t\t\t\t\t\t\t\t\n\t\t\t\t\t\t\t\t\t</td><!-- Supported _revincludes --><td>\n\t\t\t\t\t\t\t\t\t\t\n\t\t\t\t\t\t\t\t\t</td><!-- Supported Operations --><td>\n\t\t\t\t\t\t\t\t\t\t$report-csv\n\t\t\t\t\t\t\t\t\t</td></tr></tbody></table><!-- Resource Details --><h4 class=\"no_toc\" id=\"measure\">Measure</h4><p>Conformance Expectation:\t<strong>(conformance expectation undefined)</strong></p><p>Operation Summary:</p><ul><li><code>$report-csv</code><sup>&#8224;</sup>.</li></ul><blockquote><p>$report-csv<sup>&#8224;</sup></p><p>Create or update a MeasureReport from CSV Format</p></blockquote></div>"
* text.status = #generated
