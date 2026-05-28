
Instance: MeasureSource-Pull
InstanceOf: CapabilityStatementWithSlices
Usage: #definition
Description: """
Defines the additional requirements for the Measure Source implementing the Pull Option."""
* insert SanerDefinitionContent
* name = "MeasureSource_Pull"
* title = "Measure Source implementing the Pull Option."
* date = "2021-07-26"
* kind = #requirements
* description = "Defines the additional requirements for the Measure Source implementing the Pull Option."
* format[0] = #xml
* format[1] = #json
* fhirVersion = #4.0.1

* rest[serverSlice].mode = #server

* rest[serverSlice].resource[LocationSlice].type = #Location

* rest[serverSlice].resource[LocationSlice].interaction[0].code = #read
* rest[serverSlice].resource[LocationSlice].interaction[0].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest[serverSlice].resource[LocationSlice].interaction[0].extension.valueCode = #SHALL

* rest[serverSlice].resource[LocationSlice].interaction[1].code = #search-type
* rest[serverSlice].resource[LocationSlice].interaction[1].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest[serverSlice].resource[LocationSlice].interaction[1].extension.valueCode = #SHALL

* rest[serverSlice].resource[LocationSlice].searchParam[0].name = "_id"
* rest[serverSlice].resource[LocationSlice].searchParam[0].type = #token
* rest[serverSlice].resource[LocationSlice].searchParam[0].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest[serverSlice].resource[LocationSlice].searchParam[0].extension.valueCode = #SHALL

* rest[serverSlice].resource[LocationSlice].searchParam[1].name = "name"
* rest[serverSlice].resource[LocationSlice].searchParam[1].type = #string
* rest[serverSlice].resource[LocationSlice].searchParam[1].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest[serverSlice].resource[LocationSlice].searchParam[1].extension.valueCode = #SHALL

* rest[serverSlice].resource[LocationSlice].searchParam[2].name = "identifier"
* rest[serverSlice].resource[LocationSlice].searchParam[2].type = #token
* rest[serverSlice].resource[LocationSlice].searchParam[2].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest[serverSlice].resource[LocationSlice].searchParam[2].extension.valueCode = #SHALL

* rest[serverSlice].resource[LocationSlice].searchInclude[0] = "*"
* rest[serverSlice].resource[LocationSlice].searchInclude[0].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest[serverSlice].resource[LocationSlice].searchInclude[0].extension.valueCode = #SHALL

* rest[serverSlice].resource[LocationSlice].extension[0].url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-search-parameter-combination"
* rest[serverSlice].resource[LocationSlice].extension[0].extension[0].url = "required"
* rest[serverSlice].resource[LocationSlice].extension[0].extension[0].valueString = "_id"

* rest[serverSlice].resource[LocationSlice].extension[1].url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-search-parameter-combination"
* rest[serverSlice].resource[LocationSlice].extension[1].extension[0].url = "required"
* rest[serverSlice].resource[LocationSlice].extension[1].extension[0].valueString = "name"
* rest[serverSlice].resource[LocationSlice].extension[1].extension[1].url = "optional"
* rest[serverSlice].resource[LocationSlice].extension[1].extension[1].valueString = "identifier"

* rest[serverSlice].resource[LocationSlice].extension[2].url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-search-parameter-combination"
* rest[serverSlice].resource[LocationSlice].extension[2].extension[0].url = "required"
* rest[serverSlice].resource[LocationSlice].extension[2].extension[0].valueString = "identifier"

* rest[serverSlice].resource[MeasureReportSlice].type = #MeasureReport
* rest[serverSlice].resource[MeasureReportSlice].supportedProfile[0] = "http://hl7.org/fhir/uv/saner/StructureDefinition/PublicHealthMeasureReport"

* rest[serverSlice].resource[MeasureReportSlice].interaction[0].code = #read
* rest[serverSlice].resource[MeasureReportSlice].interaction[0].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest[serverSlice].resource[MeasureReportSlice].interaction[0].extension.valueCode = #SHALL

* rest[serverSlice].resource[MeasureReportSlice].interaction[1].code = #search-type
* rest[serverSlice].resource[MeasureReportSlice].interaction[1].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest[serverSlice].resource[MeasureReportSlice].interaction[1].extension.valueCode = #SHALL

* rest[serverSlice].resource[MeasureReportSlice].searchParam[0].name = "_id"
* rest[serverSlice].resource[MeasureReportSlice].searchParam[0].type = #token
* rest[serverSlice].resource[MeasureReportSlice].searchParam[0].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest[serverSlice].resource[MeasureReportSlice].searchParam[0].extension.valueCode = #SHALL

* rest[serverSlice].resource[MeasureReportSlice].searchParam[1].name = "_lastUpdated"
* rest[serverSlice].resource[MeasureReportSlice].searchParam[1].type = #date
* rest[serverSlice].resource[MeasureReportSlice].searchParam[1].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest[serverSlice].resource[MeasureReportSlice].searchParam[1].extension.valueCode = #SHALL

* rest[serverSlice].resource[MeasureReportSlice].searchParam[2].name = "date"
* rest[serverSlice].resource[MeasureReportSlice].searchParam[2].type = #date
* rest[serverSlice].resource[MeasureReportSlice].searchParam[2].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest[serverSlice].resource[MeasureReportSlice].searchParam[2].extension.valueCode = #SHALL

* rest[serverSlice].resource[MeasureReportSlice].searchParam[3].name = "period"
* rest[serverSlice].resource[MeasureReportSlice].searchParam[3].type = #date
* rest[serverSlice].resource[MeasureReportSlice].searchParam[3].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest[serverSlice].resource[MeasureReportSlice].searchParam[3].extension.valueCode = #SHALL

* rest[serverSlice].resource[MeasureReportSlice].searchParam[4].name = "measure"
* rest[serverSlice].resource[MeasureReportSlice].searchParam[4].type = #uri
* rest[serverSlice].resource[MeasureReportSlice].searchParam[4].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest[serverSlice].resource[MeasureReportSlice].searchParam[4].extension.valueCode = #SHALL

* rest[serverSlice].resource[MeasureReportSlice].searchParam[5].name = "measure.title"
* rest[serverSlice].resource[MeasureReportSlice].searchParam[5].type = #string
* rest[serverSlice].resource[MeasureReportSlice].searchParam[5].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest[serverSlice].resource[MeasureReportSlice].searchParam[5].extension.valueCode = #SHOULD

* rest[serverSlice].resource[MeasureReportSlice].searchParam[6].name = "subject"
* rest[serverSlice].resource[MeasureReportSlice].searchParam[6].type = #reference
* rest[serverSlice].resource[MeasureReportSlice].searchParam[6].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest[serverSlice].resource[MeasureReportSlice].searchParam[6].extension.valueCode = #SHALL

* rest[serverSlice].resource[MeasureReportSlice].searchParam[7].name = "subject:identifier"
* rest[serverSlice].resource[MeasureReportSlice].searchParam[7].type = #token
* rest[serverSlice].resource[MeasureReportSlice].searchParam[7].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest[serverSlice].resource[MeasureReportSlice].searchParam[7].extension.valueCode = #SHALL

* rest[serverSlice].resource[MeasureReportSlice].searchParam[8].name = "subject:Location.near"
* rest[serverSlice].resource[MeasureReportSlice].searchParam[8].type = #special
* rest[serverSlice].resource[MeasureReportSlice].searchParam[8].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest[serverSlice].resource[MeasureReportSlice].searchParam[8].extension.valueCode = #SHOULD

* rest[serverSlice].resource[MeasureReportSlice].searchParam[9].name = "reporter"
* rest[serverSlice].resource[MeasureReportSlice].searchParam[9].type = #reference
* rest[serverSlice].resource[MeasureReportSlice].searchParam[9].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest[serverSlice].resource[MeasureReportSlice].searchParam[9].extension.valueCode = #SHALL

* rest[serverSlice].resource[MeasureReportSlice].searchParam[10].name = "reporter:identifier"
* rest[serverSlice].resource[MeasureReportSlice].searchParam[10].type = #token
* rest[serverSlice].resource[MeasureReportSlice].searchParam[10].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest[serverSlice].resource[MeasureReportSlice].searchParam[10].extension.valueCode = #SHALL

* rest[serverSlice].resource[MeasureReportSlice].searchInclude[0] = "*"
* rest[serverSlice].resource[MeasureReportSlice].searchInclude[0].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest[serverSlice].resource[MeasureReportSlice].searchInclude[0].extension.valueCode = #SHALL

* rest[serverSlice].resource[MeasureReportSlice].extension[0].url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-search-parameter-combination"
* rest[serverSlice].resource[MeasureReportSlice].extension[0].extension[0].url = "required"
* rest[serverSlice].resource[MeasureReportSlice].extension[0].extension[0].valueString = "_id"

* rest[serverSlice].resource[MeasureReportSlice].extension[1].url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-search-parameter-combination"
* rest[serverSlice].resource[MeasureReportSlice].extension[1].extension[0].url = "required"
* rest[serverSlice].resource[MeasureReportSlice].extension[1].extension[0].valueString = "period"
* rest[serverSlice].resource[MeasureReportSlice].extension[1].extension[1].url = "required"
* rest[serverSlice].resource[MeasureReportSlice].extension[1].extension[1].valueString = "measure"
* rest[serverSlice].resource[MeasureReportSlice].extension[1].extension[2].url = "optional"
* rest[serverSlice].resource[MeasureReportSlice].extension[1].extension[2].valueString = "_lastUpdated"
* rest[serverSlice].resource[MeasureReportSlice].extension[1].extension[3].url = "optional"
* rest[serverSlice].resource[MeasureReportSlice].extension[1].extension[3].valueString = "date"
* rest[serverSlice].resource[MeasureReportSlice].extension[1].extension[4].url = "optional"
* rest[serverSlice].resource[MeasureReportSlice].extension[1].extension[4].valueString = "measure.title"
* rest[serverSlice].resource[MeasureReportSlice].extension[1].extension[5].url = "optional"
* rest[serverSlice].resource[MeasureReportSlice].extension[1].extension[5].valueString = "subject"
* rest[serverSlice].resource[MeasureReportSlice].extension[1].extension[6].url = "optional"
* rest[serverSlice].resource[MeasureReportSlice].extension[1].extension[6].valueString = "subject:identifier"
* rest[serverSlice].resource[MeasureReportSlice].extension[1].extension[7].url = "optional"
* rest[serverSlice].resource[MeasureReportSlice].extension[1].extension[7].valueString = "subject:Location.near"
* rest[serverSlice].resource[MeasureReportSlice].extension[1].extension[8].url = "optional"
* rest[serverSlice].resource[MeasureReportSlice].extension[1].extension[8].valueString = "reporter"
* rest[serverSlice].resource[MeasureReportSlice].extension[1].extension[9].url = "optional"
* rest[serverSlice].resource[MeasureReportSlice].extension[1].extension[9].valueString = "reporter:identifier"

* rest[serverSlice].resource[MeasureSlice].type = #Measure
* rest[serverSlice].resource[MeasureSlice].supportedProfile[0] = "http://hl7.org/fhir/uv/saner/StructureDefinition/PublicHealthMeasure"

* rest[serverSlice].resource[MeasureSlice].interaction[0].code = #read
* rest[serverSlice].resource[MeasureSlice].interaction[0].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest[serverSlice].resource[MeasureSlice].interaction[0].extension.valueCode = #SHALL

* rest[serverSlice].resource[MeasureSlice].interaction[1].code = #search-type
* rest[serverSlice].resource[MeasureSlice].interaction[1].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest[serverSlice].resource[MeasureSlice].interaction[1].extension.valueCode = #SHALL

* rest[serverSlice].resource[MeasureSlice].searchParam[0].name = "_id"
* rest[serverSlice].resource[MeasureSlice].searchParam[0].type = #token
* rest[serverSlice].resource[MeasureSlice].searchParam[0].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest[serverSlice].resource[MeasureSlice].searchParam[0].extension.valueCode = #SHALL

* rest[serverSlice].resource[MeasureSlice].searchParam[1].name = "_text"
* rest[serverSlice].resource[MeasureSlice].searchParam[1].type = #string
* rest[serverSlice].resource[MeasureSlice].searchParam[1].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest[serverSlice].resource[MeasureSlice].searchParam[1].extension.valueCode = #SHOULD

* rest[serverSlice].resource[MeasureSlice].searchParam[2].name = "_content"
* rest[serverSlice].resource[MeasureSlice].searchParam[2].type = #string
* rest[serverSlice].resource[MeasureSlice].searchParam[2].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest[serverSlice].resource[MeasureSlice].searchParam[2].extension.valueCode = #SHOULD

* rest[serverSlice].resource[MeasureSlice].searchParam[3].name = "definition-text"
* rest[serverSlice].resource[MeasureSlice].searchParam[3].type = #string
* rest[serverSlice].resource[MeasureSlice].searchParam[3].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest[serverSlice].resource[MeasureSlice].searchParam[3].extension.valueCode = #SHOULD

* rest[serverSlice].resource[MeasureSlice].searchParam[4].name = "code"
* rest[serverSlice].resource[MeasureSlice].searchParam[4].type = #token
* rest[serverSlice].resource[MeasureSlice].searchParam[4].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest[serverSlice].resource[MeasureSlice].searchParam[4].extension.valueCode = #SHOULD

* rest[serverSlice].resource[MeasureSlice].searchParam[5].name = "code:in"
* rest[serverSlice].resource[MeasureSlice].searchParam[5].type = #token
* rest[serverSlice].resource[MeasureSlice].searchParam[5].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest[serverSlice].resource[MeasureSlice].searchParam[5].extension.valueCode = #SHOULD

* rest[serverSlice].resource[MeasureSlice].searchInclude[0] = "*"
* rest[serverSlice].resource[MeasureSlice].searchInclude[0].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest[serverSlice].resource[MeasureSlice].searchInclude[0].extension.valueCode = #SHALL

* rest[serverSlice].resource[MeasureSlice].extension[0].url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-search-parameter-combination"
* rest[serverSlice].resource[MeasureSlice].extension[0].extension[0].url = "required"
* rest[serverSlice].resource[MeasureSlice].extension[0].extension[0].valueString = "_id"

* rest[serverSlice].resource[MeasureSlice].extension[1].url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-search-parameter-combination"
* rest[serverSlice].resource[MeasureSlice].extension[1].extension[0].url = "required"
* rest[serverSlice].resource[MeasureSlice].extension[1].extension[0].valueString = "_text"
* rest[serverSlice].resource[MeasureSlice].extension[1].extension[1].url = "optional"
* rest[serverSlice].resource[MeasureSlice].extension[1].extension[1].valueString = "_content"
* rest[serverSlice].resource[MeasureSlice].extension[1].extension[2].url = "optional"
* rest[serverSlice].resource[MeasureSlice].extension[1].extension[2].valueString = "definition-text"
* rest[serverSlice].resource[MeasureSlice].extension[1].extension[3].url = "optional"
* rest[serverSlice].resource[MeasureSlice].extension[1].extension[3].valueString = "code"
* rest[serverSlice].resource[MeasureSlice].extension[1].extension[4].url = "optional"
* rest[serverSlice].resource[MeasureSlice].extension[1].extension[4].valueString = "code:in"

* rest[serverSlice].resource[MeasureSlice].extension[2].url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-search-parameter-combination"
* rest[serverSlice].resource[MeasureSlice].extension[2].extension[0].url = "required"
* rest[serverSlice].resource[MeasureSlice].extension[2].extension[0].valueString = "_content"
* rest[serverSlice].resource[MeasureSlice].extension[2].extension[1].url = "optional"
* rest[serverSlice].resource[MeasureSlice].extension[2].extension[1].valueString = "definition-text"
* rest[serverSlice].resource[MeasureSlice].extension[2].extension[2].url = "optional"
* rest[serverSlice].resource[MeasureSlice].extension[2].extension[2].valueString = "code"
* rest[serverSlice].resource[MeasureSlice].extension[2].extension[3].url = "optional"
* rest[serverSlice].resource[MeasureSlice].extension[2].extension[3].valueString = "code:in"

* rest[serverSlice].resource[MeasureSlice].extension[3].url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-search-parameter-combination"
* rest[serverSlice].resource[MeasureSlice].extension[3].extension[0].url = "required"
* rest[serverSlice].resource[MeasureSlice].extension[3].extension[0].valueString = "definition-text"
* rest[serverSlice].resource[MeasureSlice].extension[3].extension[1].url = "optional"
* rest[serverSlice].resource[MeasureSlice].extension[3].extension[1].valueString = "code"
* rest[serverSlice].resource[MeasureSlice].extension[3].extension[2].url = "optional"
* rest[serverSlice].resource[MeasureSlice].extension[3].extension[2].valueString = "code:in"

* rest[serverSlice].resource[MeasureSlice].extension[4].url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-search-parameter-combination"
* rest[serverSlice].resource[MeasureSlice].extension[4].extension[0].url = "required"
* rest[serverSlice].resource[MeasureSlice].extension[4].extension[0].valueString = "code"
* rest[serverSlice].resource[MeasureSlice].extension[4].extension[1].url = "optional"
* rest[serverSlice].resource[MeasureSlice].extension[4].extension[1].valueString = "code:in"

* rest[serverSlice].resource[MeasureSlice].extension[5].url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-search-parameter-combination"
* rest[serverSlice].resource[MeasureSlice].extension[5].extension[0].url = "required"
* rest[serverSlice].resource[MeasureSlice].extension[5].extension[0].valueString = "code:in"

* rest[serverSlice].resource[OrganizationSlice].type = #Organization

* rest[serverSlice].resource[OrganizationSlice].interaction[0].code = #read
* rest[serverSlice].resource[OrganizationSlice].interaction[0].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest[serverSlice].resource[OrganizationSlice].interaction[0].extension.valueCode = #SHALL

* rest[serverSlice].resource[OrganizationSlice].interaction[1].code = #search-type
* rest[serverSlice].resource[OrganizationSlice].interaction[1].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest[serverSlice].resource[OrganizationSlice].interaction[1].extension.valueCode = #SHALL

* rest[serverSlice].resource[OrganizationSlice].searchParam[0].name = "_id"
* rest[serverSlice].resource[OrganizationSlice].searchParam[0].type = #token
* rest[serverSlice].resource[OrganizationSlice].searchParam[0].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest[serverSlice].resource[OrganizationSlice].searchParam[0].extension.valueCode = #SHALL

* rest[serverSlice].resource[OrganizationSlice].searchParam[1].name = "name"
* rest[serverSlice].resource[OrganizationSlice].searchParam[1].type = #string
* rest[serverSlice].resource[OrganizationSlice].searchParam[1].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest[serverSlice].resource[OrganizationSlice].searchParam[1].extension.valueCode = #SHALL

* rest[serverSlice].resource[OrganizationSlice].searchParam[2].name = "identifier"
* rest[serverSlice].resource[OrganizationSlice].searchParam[2].type = #token
* rest[serverSlice].resource[OrganizationSlice].searchParam[2].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest[serverSlice].resource[OrganizationSlice].searchParam[2].extension.valueCode = #SHALL

* rest[serverSlice].resource[OrganizationSlice].searchInclude[0] = "*"
* rest[serverSlice].resource[OrganizationSlice].searchInclude[0].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest[serverSlice].resource[OrganizationSlice].searchInclude[0].extension.valueCode = #SHALL

* rest[serverSlice].resource[OrganizationSlice].extension[0].url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-search-parameter-combination"
* rest[serverSlice].resource[OrganizationSlice].extension[0].extension[0].url = "required"
* rest[serverSlice].resource[OrganizationSlice].extension[0].extension[0].valueString = "_id"

* rest[serverSlice].resource[OrganizationSlice].extension[1].url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-search-parameter-combination"
* rest[serverSlice].resource[OrganizationSlice].extension[1].extension[0].url = "required"
* rest[serverSlice].resource[OrganizationSlice].extension[1].extension[0].valueString = "name"
* rest[serverSlice].resource[OrganizationSlice].extension[1].extension[1].url = "optional"
* rest[serverSlice].resource[OrganizationSlice].extension[1].extension[1].valueString = "identifier"

* rest[serverSlice].resource[OrganizationSlice].extension[2].url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-search-parameter-combination"
* rest[serverSlice].resource[OrganizationSlice].extension[2].extension[0].url = "required"
* rest[serverSlice].resource[OrganizationSlice].extension[2].extension[0].valueString = "identifier"
* text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\"><h2 id=\"title\">Measure Source implementing the Pull Option.</h2><ul><li><b>Official URL:</b><code>http://hl7.org/fhir/uv/saner/CapabilityStatement/MeasureSource-Pull</code></li><li><b>Implementation Guide Version:</b> 1.0.1</li><li><b>FHIR Version:</b> 4.0.1</li><li><b>Intended Use:</b> Requirements</li><li><b>Supported Formats:</b>\n\t\t\t\t\n                    XML, JSON\n\t\t\t\t\n\t\t\t\t</li><li><b>Published:</b> 2021-07-26</li><li><b>Published by:</b> HL7 International Public Health Workgroup</li><li><b>Status:</b> Draft (experimental)</li></ul><p>Defines the additional requirements for the Measure Source implementing the Pull Option.</p><!-- REST Behavior --><h3 id=\"behavior\">FHIR Server RESTful Capabilities</h3><h3 class=\"no_toc\" id=\"resource--details\">RESTful Capabilities by Resource/Profile:</h3><p><strong>Summary</strong></p><table class=\"grid\"><thead><tr><th>Resource Type</th><th>Supported Interactions</th><th>Supported Profiles</th><th>Supported Searches</th><th>Supported <code>_includes</code></th><th>Supported <code>_revincludes</code></th><th>Supported Operations</th></tr></thead><tbody><tr><td><a href=\"#location\">Location</a></td><td>\n\t\t\t\t\t\t\t\t\t\t\n\t\t\t\t\t\t\t\t\t\t\tread, \n\t\t\t\t\t\t\t\t\t\t\t\n\t\t\t\t\t\t\t\t\t\t\tsearch-type\n\t\t\t\t\t\t\t\t\t\t\t\n\t\t\t\t\t\t\t\t\t\t\n\t\t\t\t\t\t\t\t\t</td><!-- Supported Profiles --><td>\n\t\t\t\t\t\t\t\t\t\t\n\t\t\t\t\t\t\t\t\t</td><!-- Supported Searches --><td>\n\t\t\t\t\t\t\t\t\t\t_id, name, identifier, _id, name+identifier, identifier\n\t\t\t\t\t\t\t\t\t\t\n\t\t\t\t\t\t\t\t\t\t\n\t\t\t\t\t\t\t\t\t</td><!-- Supported _includes --><td>\n\t\t\t\t\t\t\t\t\t\t*\n\t\t\t\t\t\t\t\t\t</td><!-- Supported _revincludes --><td>\n\t\t\t\t\t\t\t\t\t\t\n\t\t\t\t\t\t\t\t\t</td><!-- Supported Operations --><td>\n\t\t\t\t\t\t\t\t\t\t\n\t\t\t\t\t\t\t\t\t</td></tr><tr><td><a href=\"#measurereport\">MeasureReport</a></td><td>\n\t\t\t\t\t\t\t\t\t\t\n\t\t\t\t\t\t\t\t\t\t\tread, \n\t\t\t\t\t\t\t\t\t\t\t\n\t\t\t\t\t\t\t\t\t\t\tsearch-type\n\t\t\t\t\t\t\t\t\t\t\t\n\t\t\t\t\t\t\t\t\t\t\n\t\t\t\t\t\t\t\t\t</td><!-- Supported Profiles --><td><a href=\"http://hl7.org/fhir/uv/saner/StructureDefinition/PublicHealthMeasureReport\">Public Health Measure Report</a></td><!-- Supported Searches --><td>\n\t\t\t\t\t\t\t\t\t\t_id, _lastUpdated, date, period, measure, measure.title, subject, subject:identifier, subject:Location.near, reporter, reporter:identifier, _id, period+measure+_lastUpdated+date+measure.title+subject+subject:identifier+subject:Location.near+reporter+reporter:identifier\n\t\t\t\t\t\t\t\t\t\t\n\t\t\t\t\t\t\t\t\t\t\n\t\t\t\t\t\t\t\t\t</td><!-- Supported _includes --><td>\n\t\t\t\t\t\t\t\t\t\t*\n\t\t\t\t\t\t\t\t\t</td><!-- Supported _revincludes --><td>\n\t\t\t\t\t\t\t\t\t\t\n\t\t\t\t\t\t\t\t\t</td><!-- Supported Operations --><td>\n\t\t\t\t\t\t\t\t\t\t\n\t\t\t\t\t\t\t\t\t</td></tr><tr><td><a href=\"#measure\">Measure</a></td><td>\n\t\t\t\t\t\t\t\t\t\t\n\t\t\t\t\t\t\t\t\t\t\tread, \n\t\t\t\t\t\t\t\t\t\t\t\n\t\t\t\t\t\t\t\t\t\t\tsearch-type\n\t\t\t\t\t\t\t\t\t\t\t\n\t\t\t\t\t\t\t\t\t\t\n\t\t\t\t\t\t\t\t\t</td><!-- Supported Profiles --><td><a href=\"http://hl7.org/fhir/uv/saner/StructureDefinition/PublicHealthMeasure\">Public Health Measure</a></td><!-- Supported Searches --><td>\n\t\t\t\t\t\t\t\t\t\t_id, _text, _content, definition-text, code, code:in, _id, _text+_content+definition-text+code+code:in, _content+definition-text+code+code:in, definition-text+code+code:in, code+code:in, code:in\n\t\t\t\t\t\t\t\t\t\t\n\t\t\t\t\t\t\t\t\t\t\n\t\t\t\t\t\t\t\t\t</td><!-- Supported _includes --><td>\n\t\t\t\t\t\t\t\t\t\t*\n\t\t\t\t\t\t\t\t\t</td><!-- Supported _revincludes --><td>\n\t\t\t\t\t\t\t\t\t\t\n\t\t\t\t\t\t\t\t\t</td><!-- Supported Operations --><td>\n\t\t\t\t\t\t\t\t\t\t\n\t\t\t\t\t\t\t\t\t</td></tr><tr><td><a href=\"#organization\">Organization</a></td><td>\n\t\t\t\t\t\t\t\t\t\t\n\t\t\t\t\t\t\t\t\t\t\tread, \n\t\t\t\t\t\t\t\t\t\t\t\n\t\t\t\t\t\t\t\t\t\t\tsearch-type\n\t\t\t\t\t\t\t\t\t\t\t\n\t\t\t\t\t\t\t\t\t\t\n\t\t\t\t\t\t\t\t\t</td><!-- Supported Profiles --><td>\n\t\t\t\t\t\t\t\t\t\t\n\t\t\t\t\t\t\t\t\t</td><!-- Supported Searches --><td>\n\t\t\t\t\t\t\t\t\t\t_id, name, identifier, _id, name+identifier, identifier\n\t\t\t\t\t\t\t\t\t\t\n\t\t\t\t\t\t\t\t\t\t\n\t\t\t\t\t\t\t\t\t</td><!-- Supported _includes --><td>\n\t\t\t\t\t\t\t\t\t\t*\n\t\t\t\t\t\t\t\t\t</td><!-- Supported _revincludes --><td>\n\t\t\t\t\t\t\t\t\t\t\n\t\t\t\t\t\t\t\t\t</td><!-- Supported Operations --><td>\n\t\t\t\t\t\t\t\t\t\t\n\t\t\t\t\t\t\t\t\t</td></tr></tbody></table><!-- Resource Details --><h4 class=\"no_toc\" id=\"location\">Location</h4><p>Conformance Expectation:\t<strong>None</strong></p><p>Profile Interaction Summary:</p><ul><li><strong>SHALL</strong> support \n\t\t\t\t\t\t\t\t\t\t\t<code>read</code>, \n\t\t\t\t\t\t\t\t\t\t\t<code>search-type</code>.</li></ul><p>Fetch and Search Criteria:</p><ul><li>\n\t\t\t\t\t\t\t\t\t\t\t\tA Server <strong>SHALL</strong> be capable of returning a Location resource using:\n\t\t\t\t\t\t\t\t\t\t\t\t<code class=\"highlighter-rouge\">GET [base]/Location/[id]</code>\n\t\t\t\t\t\t\t\t\t\t\t\t\n\t\t\t\t\t\t\t\t\t\t\t</li><li>\n\t\t\t\t\t\t\t\t\t\t\t\tA Server <strong>SHALL</strong> be capable of returning resources matching a search query using:\n\t\t\t\t\t\t\t\t\t\t\t\t<code class=\"highlighter-rouge\">GET [base]/Location/[id]{?[parameters]{&amp;_format=[mime-type]}}</code>\n\t\t\t\t\t\t\t\t\t\t\t</li><li>\n\t\t\t\t\t\t\t\t\t\t\t\tA Server <strong>SHALL </strong> be capable of supporting the following _includes:\n\t\t\t\t\t\t\t\t\t\t\t\t<ul><li>* - <code class=\"highlighter-rouge\">GET [base]/Location?[parameter=value]&amp;_include=*</code></li></ul>\n\t\t\t\t\t\t\t\t\t\t\t</li></ul><!-- Only included search parameters that are not MAY or there is no conformance requirement included --><p>Search Parameter Summary:</p><table class=\"grid\"><thead><tr><th>Conformance</th><th>Parameter</th><th>Type</th><th>Example</th></tr></thead><tbody><tr><td><strong>SHALL</strong></td><td><a href=\"http://hl7.org/fhir/R4/search.html#id\">\n\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t_id</a></td><td>\n\t\t\t\t\t\t\t\t\t\t\t\t\t\t\ttoken\n\t\t\t\t\t\t\t\t\t\t\t\t\t\t</td><td><code class=\"highlighter-rouge\">GET [base]/Location?_id=[id]</code></td></tr><tr><td><strong>SHALL</strong></td><td><a href=\"http://hl7.org/fhir/R4/location.html#search\">\n\t\t\t\t\t\t\t\t\t\t\t\t\t\t\tname</a></td><td>\n\t\t\t\t\t\t\t\t\t\t\t\t\t\t\tstring\n\t\t\t\t\t\t\t\t\t\t\t\t\t\t</td><td><code class=\"highlighter-rouge\">GET [base]/Location?name=[name]</code></td></tr><tr><td><strong>SHALL</strong></td><td><a href=\"http://hl7.org/fhir/R4/location.html#search\">\n\t\t\t\t\t\t\t\t\t\t\t\t\t\t\tidentifier</a></td><td>\n\t\t\t\t\t\t\t\t\t\t\t\t\t\t\ttoken\n\t\t\t\t\t\t\t\t\t\t\t\t\t\t</td><td><code class=\"highlighter-rouge\">GET [base]/Location?identifier=[system]|[code]</code></td></tr></tbody></table><p>Search Parameter Combination Summary:</p><table class=\"grid\"><thead><tr><th>Conformance</th><th>Parameter Combination</th><th>Types</th><th>Example</th></tr></thead><tbody><tr><td>\n\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t</td><td><a href=\"http://hl7.org/fhir/R4/search.html#id\">_id</a></td><td>token\n\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t</td><td><code class=\"highlighter-rouge\">GET [base]/Location?_id=[id]</code></td></tr><tr><td>\n\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t</td><td><a href=\"http://hl7.org/fhir/R4/name.html#search\">name</a>+\n\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t<a href=\"http://hl7.org/fhir/R4/identifier.html#search\">identifier</a></td><td>string+token\n\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t</td><td><code class=\"highlighter-rouge\">GET [base]/Location?name=[name]&amp;identifier=[system]|[code]</code></td></tr><tr><td>\n\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t</td><td><a href=\"http://hl7.org/fhir/R4/identifier.html#search\">identifier</a></td><td>token\n\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t</td><td><code class=\"highlighter-rouge\">GET [base]/Location?identifier=[system]|[code]</code></td></tr></tbody></table><h4 class=\"no_toc\" id=\"measurereport\">MeasureReport</h4><p>Conformance Expectation:\t<strong>None</strong></p><p>Supported Profiles:</p><ul><li><a href=\"http://hl7.org/fhir/uv/saner/StructureDefinition/PublicHealthMeasureReport\">Public Health Measure Report</a></li></ul><p>Profile Interaction Summary:</p><ul><li><strong>SHALL</strong> support \n\t\t\t\t\t\t\t\t\t\t\t<code>read</code>, \n\t\t\t\t\t\t\t\t\t\t\t<code>search-type</code>.</li></ul><p>Fetch and Search Criteria:</p><ul><li>\n\t\t\t\t\t\t\t\t\t\t\t\tA Server <strong>SHALL</strong> be capable of returning a MeasureReport resource using:\n\t\t\t\t\t\t\t\t\t\t\t\t<code class=\"highlighter-rouge\">GET [base]/MeasureReport/[id]</code>\n\t\t\t\t\t\t\t\t\t\t\t\t\n\t\t\t\t\t\t\t\t\t\t\t</li><li>\n\t\t\t\t\t\t\t\t\t\t\t\tA Server <strong>SHALL</strong> be capable of returning resources matching a search query using:\n\t\t\t\t\t\t\t\t\t\t\t\t<code class=\"highlighter-rouge\">GET [base]/MeasureReport/[id]{?[parameters]{&amp;_format=[mime-type]}}</code>\n\t\t\t\t\t\t\t\t\t\t\t</li><li>\n\t\t\t\t\t\t\t\t\t\t\t\tA Server <strong>SHALL </strong> be capable of supporting the following _includes:\n\t\t\t\t\t\t\t\t\t\t\t\t<ul><li>* - <code class=\"highlighter-rouge\">GET [base]/MeasureReport?[parameter=value]&amp;_include=*</code></li></ul>\n\t\t\t\t\t\t\t\t\t\t\t</li></ul><!-- Only included search parameters that are not MAY or there is no conformance requirement included --><p>Search Parameter Summary:</p><table class=\"grid\"><thead><tr><th>Conformance</th><th>Parameter</th><th>Type</th><th>Example</th></tr></thead><tbody><tr><td><strong>SHALL</strong></td><td><a href=\"http://hl7.org/fhir/R4/search.html#id\">\n\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t_id</a></td><td>\n\t\t\t\t\t\t\t\t\t\t\t\t\t\t\ttoken\n\t\t\t\t\t\t\t\t\t\t\t\t\t\t</td><td><code class=\"highlighter-rouge\">GET [base]/MeasureReport?_id=[id]</code></td></tr><tr><td><strong>SHALL</strong></td><td><a href=\"http://hl7.org/fhir/R4/search.html#lastUpdated\">\n\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t_lastUpdated</a></td><td>\n\t\t\t\t\t\t\t\t\t\t\t\t\t\t\tdate\n\t\t\t\t\t\t\t\t\t\t\t\t\t\t</td><td><code class=\"highlighter-rouge\">GET [base]/MeasureReport?_lastUpdated=[dateTime]</code></td></tr><tr><td><strong>SHALL</strong></td><td><a href=\"http://hl7.org/fhir/R4/measurereport.html#search\">\n\t\t\t\t\t\t\t\t\t\t\t\t\t\t\tdate</a></td><td>\n\t\t\t\t\t\t\t\t\t\t\t\t\t\t\tdate\n\t\t\t\t\t\t\t\t\t\t\t\t\t\t</td><td><code class=\"highlighter-rouge\">GET [base]/MeasureReport?date=[date]</code></td></tr><tr><td><strong>SHALL</strong></td><td><a href=\"http://hl7.org/fhir/R4/measurereport.html#search\">\n\t\t\t\t\t\t\t\t\t\t\t\t\t\t\tperiod</a></td><td>\n\t\t\t\t\t\t\t\t\t\t\t\t\t\t\tdate\n\t\t\t\t\t\t\t\t\t\t\t\t\t\t</td><td><code class=\"highlighter-rouge\">GET [base]/MeasureReport?period=[period]</code></td></tr><tr><td><strong>SHALL</strong></td><td><a href=\"http://hl7.org/fhir/R4/measurereport.html#search\">\n\t\t\t\t\t\t\t\t\t\t\t\t\t\t\tmeasure</a></td><td>\n\t\t\t\t\t\t\t\t\t\t\t\t\t\t\turi\n\t\t\t\t\t\t\t\t\t\t\t\t\t\t</td><td><code class=\"highlighter-rouge\">GET [base]/MeasureReport?measure=[uri]</code></td></tr><tr><td><strong>SHOULD</strong></td><td><a href=\"http://hl7.org/fhir/R4/measurereport.html#search\">\n\t\t\t\t\t\t\t\t\t\t\t\t\t\t\tmeasure.title</a></td><td>\n\t\t\t\t\t\t\t\t\t\t\t\t\t\t\tstring\n\t\t\t\t\t\t\t\t\t\t\t\t\t\t</td><td><code class=\"highlighter-rouge\">GET [base]/MeasureReport?measure.title=[measure.title]</code></td></tr><tr><td><strong>SHALL</strong></td><td><a href=\"http://hl7.org/fhir/R4/measurereport.html#search\">\n\t\t\t\t\t\t\t\t\t\t\t\t\t\t\tsubject</a></td><td>\n\t\t\t\t\t\t\t\t\t\t\t\t\t\t\treference\n\t\t\t\t\t\t\t\t\t\t\t\t\t\t</td><td><code class=\"highlighter-rouge\">GET [base]/MeasureReport?subject=[type]/[id]</code></td></tr><tr><td><strong>SHALL</strong></td><td><a href=\"http://hl7.org/fhir/R4/measurereport.html#search\">\n\t\t\t\t\t\t\t\t\t\t\t\t\t\t\tsubject:identifier</a></td><td>\n\t\t\t\t\t\t\t\t\t\t\t\t\t\t\ttoken\n\t\t\t\t\t\t\t\t\t\t\t\t\t\t</td><td><code class=\"highlighter-rouge\">GET [base]/MeasureReport?subject:identifier=[system]|[code]</code></td></tr><tr><td><strong>SHOULD</strong></td><td><a href=\"http://hl7.org/fhir/R4/measurereport.html#search\">\n\t\t\t\t\t\t\t\t\t\t\t\t\t\t\tsubject:Location.near</a></td><td>\n\t\t\t\t\t\t\t\t\t\t\t\t\t\t\tspecial\n\t\t\t\t\t\t\t\t\t\t\t\t\t\t</td><td><code class=\"highlighter-rouge\">GET [base]/MeasureReport?subject:Location.near=[subject:Location.near]</code></td></tr><tr><td><strong>SHALL</strong></td><td><a href=\"http://hl7.org/fhir/R4/measurereport.html#search\">\n\t\t\t\t\t\t\t\t\t\t\t\t\t\t\treporter</a></td><td>\n\t\t\t\t\t\t\t\t\t\t\t\t\t\t\treference\n\t\t\t\t\t\t\t\t\t\t\t\t\t\t</td><td><code class=\"highlighter-rouge\">GET [base]/MeasureReport?reporter=[type]/[id]</code></td></tr><tr><td><strong>SHALL</strong></td><td><a href=\"http://hl7.org/fhir/R4/measurereport.html#search\">\n\t\t\t\t\t\t\t\t\t\t\t\t\t\t\treporter:identifier</a></td><td>\n\t\t\t\t\t\t\t\t\t\t\t\t\t\t\ttoken\n\t\t\t\t\t\t\t\t\t\t\t\t\t\t</td><td><code class=\"highlighter-rouge\">GET [base]/MeasureReport?reporter:identifier=[system]|[code]</code></td></tr></tbody></table><p>Search Parameter Combination Summary:</p><table class=\"grid\"><thead><tr><th>Conformance</th><th>Parameter Combination</th><th>Types</th><th>Example</th></tr></thead><tbody><tr><td>\n\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t</td><td><a href=\"http://hl7.org/fhir/R4/search.html#id\">_id</a></td><td>token\n\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t</td><td><code class=\"highlighter-rouge\">GET [base]/MeasureReport?_id=[id]</code></td></tr><tr><td>\n\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t</td><td><a href=\"http://hl7.org/fhir/R4/period.html#search\">period</a>+\n\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t<a href=\"http://hl7.org/fhir/R4/measure.html#search\">measure</a>+\n\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t<a href=\"http://hl7.org/fhir/R4/search.html#lastUpdated\">_lastUpdated</a>+\n\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t<a href=\"http://hl7.org/fhir/R4/date.html#search\">date</a>+\n\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t<a href=\"http://hl7.org/fhir/R4/measure.title.html#search\">measure.title</a>+\n\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t<a href=\"http://hl7.org/fhir/R4/subject.html#search\">subject</a>+\n\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t<a href=\"http://hl7.org/fhir/R4/subject:identifier.html#search\">subject:identifier</a>+\n\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t<a href=\"http://hl7.org/fhir/R4/subject:location.near.html#search\">subject:Location.near</a>+\n\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t<a href=\"http://hl7.org/fhir/R4/reporter.html#search\">reporter</a>+\n\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t<a href=\"http://hl7.org/fhir/R4/reporter:identifier.html#search\">reporter:identifier</a></td><td>date+uri+date+date+string+reference+token+special+reference+token\n\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t</td><td><code class=\"highlighter-rouge\">GET [base]/MeasureReport?period=[period]&amp;measure=[uri]&amp;_lastUpdated=[dateTime]&amp;date=[date]&amp;measure.title=[measure.title]&amp;subject=[type]/[id]&amp;subject:identifier=[system]|[code]&amp;subject:Location.near=[subject:Location.near]&amp;reporter=[type]/[id]&amp;reporter:identifier=[system]|[code]</code></td></tr></tbody></table><h4 class=\"no_toc\" id=\"measure\">Measure</h4><p>Conformance Expectation:\t<strong>None</strong></p><p>Supported Profiles:</p><ul><li><a href=\"http://hl7.org/fhir/uv/saner/StructureDefinition/PublicHealthMeasure\">Public Health Measure</a></li></ul><p>Profile Interaction Summary:</p><ul><li><strong>SHALL</strong> support \n\t\t\t\t\t\t\t\t\t\t\t<code>read</code>, \n\t\t\t\t\t\t\t\t\t\t\t<code>search-type</code>.</li></ul><p>Fetch and Search Criteria:</p><ul><li>\n\t\t\t\t\t\t\t\t\t\t\t\tA Server <strong>SHALL</strong> be capable of returning a Measure resource using:\n\t\t\t\t\t\t\t\t\t\t\t\t<code class=\"highlighter-rouge\">GET [base]/Measure/[id]</code>\n\t\t\t\t\t\t\t\t\t\t\t\t\n\t\t\t\t\t\t\t\t\t\t\t</li><li>\n\t\t\t\t\t\t\t\t\t\t\t\tA Server <strong>SHALL</strong> be capable of returning resources matching a search query using:\n\t\t\t\t\t\t\t\t\t\t\t\t<code class=\"highlighter-rouge\">GET [base]/Measure/[id]{?[parameters]{&amp;_format=[mime-type]}}</code>\n\t\t\t\t\t\t\t\t\t\t\t</li><li>\n\t\t\t\t\t\t\t\t\t\t\t\tA Server <strong>SHALL </strong> be capable of supporting the following _includes:\n\t\t\t\t\t\t\t\t\t\t\t\t<ul><li>* - <code class=\"highlighter-rouge\">GET [base]/Measure?[parameter=value]&amp;_include=*</code></li></ul>\n\t\t\t\t\t\t\t\t\t\t\t</li></ul><!-- Only included search parameters that are not MAY or there is no conformance requirement included --><p>Search Parameter Summary:</p><table class=\"grid\"><thead><tr><th>Conformance</th><th>Parameter</th><th>Type</th><th>Example</th></tr></thead><tbody><tr><td><strong>SHALL</strong></td><td><a href=\"http://hl7.org/fhir/R4/search.html#id\">\n\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t_id</a></td><td>\n\t\t\t\t\t\t\t\t\t\t\t\t\t\t\ttoken\n\t\t\t\t\t\t\t\t\t\t\t\t\t\t</td><td><code class=\"highlighter-rouge\">GET [base]/Measure?_id=[id]</code></td></tr><tr><td><strong>SHOULD</strong></td><td><a href=\"http://hl7.org/fhir/R4/search.html#text\">\n\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t_text</a></td><td>\n\t\t\t\t\t\t\t\t\t\t\t\t\t\t\tstring\n\t\t\t\t\t\t\t\t\t\t\t\t\t\t</td><td><code class=\"highlighter-rouge\">GET [base]/Measure?_text=[string]</code></td></tr><tr><td><strong>SHOULD</strong></td><td><a href=\"http://hl7.org/fhir/R4/search.html#content\">\n\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t_content</a></td><td>\n\t\t\t\t\t\t\t\t\t\t\t\t\t\t\tstring\n\t\t\t\t\t\t\t\t\t\t\t\t\t\t</td><td><code class=\"highlighter-rouge\">GET [base]/Measure?_content=[string]</code></td></tr><tr><td><strong>SHOULD</strong></td><td><a href=\"http://hl7.org/fhir/R4/measure.html#search\">\n\t\t\t\t\t\t\t\t\t\t\t\t\t\t\tdefinition-text</a></td><td>\n\t\t\t\t\t\t\t\t\t\t\t\t\t\t\tstring\n\t\t\t\t\t\t\t\t\t\t\t\t\t\t</td><td><code class=\"highlighter-rouge\">GET [base]/Measure?definition-text=[definition-text]</code></td></tr><tr><td><strong>SHOULD</strong></td><td><a href=\"http://hl7.org/fhir/R4/measure.html#search\">\n\t\t\t\t\t\t\t\t\t\t\t\t\t\t\tcode</a></td><td>\n\t\t\t\t\t\t\t\t\t\t\t\t\t\t\ttoken\n\t\t\t\t\t\t\t\t\t\t\t\t\t\t</td><td><code class=\"highlighter-rouge\">GET [base]/Measure?code=[system]|[code]</code></td></tr><tr><td><strong>SHOULD</strong></td><td><a href=\"http://hl7.org/fhir/R4/measure.html#search\">\n\t\t\t\t\t\t\t\t\t\t\t\t\t\t\tcode:in</a></td><td>\n\t\t\t\t\t\t\t\t\t\t\t\t\t\t\ttoken\n\t\t\t\t\t\t\t\t\t\t\t\t\t\t</td><td><code class=\"highlighter-rouge\">GET [base]/Measure?code:in=[system]|[code]</code></td></tr></tbody></table><p>Search Parameter Combination Summary:</p><table class=\"grid\"><thead><tr><th>Conformance</th><th>Parameter Combination</th><th>Types</th><th>Example</th></tr></thead><tbody><tr><td>\n\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t</td><td><a href=\"http://hl7.org/fhir/R4/search.html#id\">_id</a></td><td>token\n\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t</td><td><code class=\"highlighter-rouge\">GET [base]/Measure?_id=[id]</code></td></tr><tr><td>\n\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t</td><td><a href=\"http://hl7.org/fhir/R4/search.html#text\">_text</a>+\n\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t<a href=\"http://hl7.org/fhir/R4/search.html#content\">_content</a>+\n\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t<a href=\"http://hl7.org/fhir/R4/definition-text.html#search\">definition-text</a>+\n\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t<a href=\"http://hl7.org/fhir/R4/code.html#search\">code</a>+\n\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t<a href=\"http://hl7.org/fhir/R4/code:in.html#search\">code:in</a></td><td>string+string+string+token+token\n\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t</td><td><code class=\"highlighter-rouge\">GET [base]/Measure?_text=[string]&amp;_content=[string]&amp;definition-text=[definition-text]&amp;code=[system]|[code]&amp;code:in=[system]|[code]</code></td></tr><tr><td>\n\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t</td><td><a href=\"http://hl7.org/fhir/R4/search.html#content\">_content</a>+\n\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t<a href=\"http://hl7.org/fhir/R4/definition-text.html#search\">definition-text</a>+\n\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t<a href=\"http://hl7.org/fhir/R4/code.html#search\">code</a>+\n\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t<a href=\"http://hl7.org/fhir/R4/code:in.html#search\">code:in</a></td><td>string+string+token+token\n\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t</td><td><code class=\"highlighter-rouge\">GET [base]/Measure?_content=[string]&amp;definition-text=[definition-text]&amp;code=[system]|[code]&amp;code:in=[system]|[code]</code></td></tr><tr><td>\n\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t</td><td><a href=\"http://hl7.org/fhir/R4/definition-text.html#search\">definition-text</a>+\n\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t<a href=\"http://hl7.org/fhir/R4/code.html#search\">code</a>+\n\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t<a href=\"http://hl7.org/fhir/R4/code:in.html#search\">code:in</a></td><td>string+token+token\n\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t</td><td><code class=\"highlighter-rouge\">GET [base]/Measure?definition-text=[definition-text]&amp;code=[system]|[code]&amp;code:in=[system]|[code]</code></td></tr><tr><td>\n\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t</td><td><a href=\"http://hl7.org/fhir/R4/code.html#search\">code</a>+\n\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t<a href=\"http://hl7.org/fhir/R4/code:in.html#search\">code:in</a></td><td>token+token\n\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t</td><td><code class=\"highlighter-rouge\">GET [base]/Measure?code=[system]|[code]&amp;code:in=[system]|[code]</code></td></tr><tr><td>\n\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t</td><td><a href=\"http://hl7.org/fhir/R4/code:in.html#search\">code:in</a></td><td>token\n\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t</td><td><code class=\"highlighter-rouge\">GET [base]/Measure?code:in=[system]|[code]</code></td></tr></tbody></table><h4 class=\"no_toc\" id=\"organization\">Organization</h4><p>Conformance Expectation:\t<strong>None</strong></p><p>Profile Interaction Summary:</p><ul><li><strong>SHALL</strong> support \n\t\t\t\t\t\t\t\t\t\t\t<code>read</code>, \n\t\t\t\t\t\t\t\t\t\t\t<code>search-type</code>.</li></ul><p>Fetch and Search Criteria:</p><ul><li>\n\t\t\t\t\t\t\t\t\t\t\t\tA Server <strong>SHALL</strong> be capable of returning an Organization resource using:\n\t\t\t\t\t\t\t\t\t\t\t\t<code class=\"highlighter-rouge\">GET [base]/Organization/[id]</code>\n\t\t\t\t\t\t\t\t\t\t\t\t\n\t\t\t\t\t\t\t\t\t\t\t</li><li>\n\t\t\t\t\t\t\t\t\t\t\t\tA Server <strong>SHALL</strong> be capable of returning resources matching a search query using:\n\t\t\t\t\t\t\t\t\t\t\t\t<code class=\"highlighter-rouge\">GET [base]/Organization/[id]{?[parameters]{&amp;_format=[mime-type]}}</code>\n\t\t\t\t\t\t\t\t\t\t\t</li><li>\n\t\t\t\t\t\t\t\t\t\t\t\tA Server <strong>SHALL </strong> be capable of supporting the following _includes:\n\t\t\t\t\t\t\t\t\t\t\t\t<ul><li>* - <code class=\"highlighter-rouge\">GET [base]/Organization?[parameter=value]&amp;_include=*</code></li></ul>\n\t\t\t\t\t\t\t\t\t\t\t</li></ul><!-- Only included search parameters that are not MAY or there is no conformance requirement included --><p>Search Parameter Summary:</p><table class=\"grid\"><thead><tr><th>Conformance</th><th>Parameter</th><th>Type</th><th>Example</th></tr></thead><tbody><tr><td><strong>SHALL</strong></td><td><a href=\"http://hl7.org/fhir/R4/search.html#id\">\n\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t_id</a></td><td>\n\t\t\t\t\t\t\t\t\t\t\t\t\t\t\ttoken\n\t\t\t\t\t\t\t\t\t\t\t\t\t\t</td><td><code class=\"highlighter-rouge\">GET [base]/Organization?_id=[id]</code></td></tr><tr><td><strong>SHALL</strong></td><td><a href=\"http://hl7.org/fhir/R4/organization.html#search\">\n\t\t\t\t\t\t\t\t\t\t\t\t\t\t\tname</a></td><td>\n\t\t\t\t\t\t\t\t\t\t\t\t\t\t\tstring\n\t\t\t\t\t\t\t\t\t\t\t\t\t\t</td><td><code class=\"highlighter-rouge\">GET [base]/Organization?name=[name]</code></td></tr><tr><td><strong>SHALL</strong></td><td><a href=\"http://hl7.org/fhir/R4/organization.html#search\">\n\t\t\t\t\t\t\t\t\t\t\t\t\t\t\tidentifier</a></td><td>\n\t\t\t\t\t\t\t\t\t\t\t\t\t\t\ttoken\n\t\t\t\t\t\t\t\t\t\t\t\t\t\t</td><td><code class=\"highlighter-rouge\">GET [base]/Organization?identifier=[system]|[code]</code></td></tr></tbody></table><p>Search Parameter Combination Summary:</p><table class=\"grid\"><thead><tr><th>Conformance</th><th>Parameter Combination</th><th>Types</th><th>Example</th></tr></thead><tbody><tr><td>\n\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t</td><td><a href=\"http://hl7.org/fhir/R4/search.html#id\">_id</a></td><td>token\n\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t</td><td><code class=\"highlighter-rouge\">GET [base]/Organization?_id=[id]</code></td></tr><tr><td>\n\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t</td><td><a href=\"http://hl7.org/fhir/R4/name.html#search\">name</a>+\n\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t<a href=\"http://hl7.org/fhir/R4/identifier.html#search\">identifier</a></td><td>string+token\n\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t</td><td><code class=\"highlighter-rouge\">GET [base]/Organization?name=[name]&amp;identifier=[system]|[code]</code></td></tr><tr><td>\n\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t</td><td><a href=\"http://hl7.org/fhir/R4/identifier.html#search\">identifier</a></td><td>token\n\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t</td><td><code class=\"highlighter-rouge\">GET [base]/Organization?identifier=[system]|[code]</code></td></tr></tbody></table></div>"
* text.status = #generated
