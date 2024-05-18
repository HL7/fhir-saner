
Instance: MeasureConsumer-SupplementalData
InstanceOf: CapabilityStatementWithSlices
Usage: #definition
Description: """
Defines the additional requirements for the Measure Consumer implementing the Supplemental Data Option."""
* insert SanerDefinitionContent
* name = "MeasureConsumer_SupplementalData"
* title = "Measure Consumer implementing the Supplemental Data Option."
* date = "2021-07-26"
* kind = #requirements
* description = "Defines the additional requirements for the Measure Consumer implementing the Supplemental Data Option."
* format[0] = #xml
* format[1] = #json
* fhirVersion = #4.0.1

* rest[serverSlice].mode = #server


* rest[serverSlice].interaction[0].code = #batch
* rest[serverSlice].interaction[0].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest[serverSlice].interaction[0].extension.valueCode = #SHALL
* rest[serverSlice].interaction[0].documentation = "Communicate a MeasureReport with supplemental data in a Bundle using the [FHIR batch](https://www.hl7.org/fhir/http.html#transaction) operation. The MeasureReport shall be the first entry in the Bundle. Referenced MeasureReport.evaluatedResource elements shall appear as subsequent entries in the Bundle."
* text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\"><h2 id=\"title\">Measure Consumer implementing the Supplemental Data Option.</h2><ul><li><b>Official URL:</b><code>http://hl7.org/fhir/uv/saner/CapabilityStatement/MeasureConsumer-SupplementalData</code></li><li><b>Implementation Guide Version:</b> 1.0.1</li><li><b>FHIR Version:</b> 4.0.1</li><li><b>Intended Use:</b> Requirements</li><li><b>Supported Formats:</b>\n\t\t\t\t\n                    XML, JSON\n\t\t\t\t\n\t\t\t\t</li><li><b>Published:</b> 2021-07-26</li><li><b>Published by:</b> HL7 International Public Health Workgroup</li><li><b>Status:</b> Draft (experimental)</li></ul><p>Defines the additional requirements for the Measure Consumer implementing the Supplemental Data Option.</p><!-- REST Behavior --><h3 id=\"behavior\">FHIR Server RESTful Capabilities</h3><p><strong>Summary of Server Wide Interactions</strong></p><ul><li><strong>SHALL</strong> support the <code>batch</code><sup>&#8224;</sup> interaction.</li></ul><blockquote>\n\t\t\t\t\t\t\t\tbatch<sup>&#8224;</sup><p>Communicate a MeasureReport with supplemental data in a Bundle using the <a href=\"https://www.hl7.org/fhir/http.html#transaction\">FHIR batch</a> operation. The MeasureReport shall be the first entry in the Bundle. Referenced MeasureReport.evaluatedResource elements shall appear as subsequent entries in the Bundle.</p>\n\n\t\t\t\t\t\t\t</blockquote></div>"
* text.status = #generated
