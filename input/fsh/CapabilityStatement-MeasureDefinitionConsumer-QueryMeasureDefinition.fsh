
Instance: MeasureDefinitionConsumer-QueryMeasureDefinition
InstanceOf: CapabilityStatementWithSlices
Usage: #definition
Description: """
Defines the requirements for the Measure Definition Consumer implementing the Query Measure Definition transaction."""
* insert SanerDefinitionContent
* name = "MeasureDefinitionConsumer_QueryMeasureDefinition"
* title = "Measure Definition Consumer implementing the Query Measure Definition transaction."
* date = "2021-07-26"
* kind = #requirements
* description = "Defines the requirements for the Measure Definition Consumer implementing the Query Measure Definition transaction."
* format[0] = #xml
* format[1] = #json
* fhirVersion = #4.0.1

* rest[clientSlice].mode = #client

* rest[clientSlice].resource[MeasureSlice].type = #Measure
* rest[clientSlice].resource[MeasureSlice].supportedProfile[0] = "http://hl7.org/fhir/uv/saner/StructureDefinition/PublicHealthMeasure"

* rest[clientSlice].resource[MeasureSlice].interaction[0].code = #read
* rest[clientSlice].resource[MeasureSlice].interaction[0].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest[clientSlice].resource[MeasureSlice].interaction[0].extension.valueCode = #SHALL

* rest[clientSlice].resource[MeasureSlice].interaction[1].code = #search-type
* rest[clientSlice].resource[MeasureSlice].interaction[1].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest[clientSlice].resource[MeasureSlice].interaction[1].extension.valueCode = #SHOULD

* rest[clientSlice].resource[MeasureSlice].searchParam[0].name = "_id"
* rest[clientSlice].resource[MeasureSlice].searchParam[0].type = #token
* rest[clientSlice].resource[MeasureSlice].searchParam[0].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest[clientSlice].resource[MeasureSlice].searchParam[0].extension.valueCode = #SHALL

* rest[clientSlice].resource[MeasureSlice].searchParam[1].name = "url"
* rest[clientSlice].resource[MeasureSlice].searchParam[1].type = #uri
* rest[clientSlice].resource[MeasureSlice].searchParam[1].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest[clientSlice].resource[MeasureSlice].searchParam[1].extension.valueCode = #SHALL

* rest[clientSlice].resource[MeasureSlice].searchParam[2].name = "_text"
* rest[clientSlice].resource[MeasureSlice].searchParam[2].type = #string
* rest[clientSlice].resource[MeasureSlice].searchParam[2].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest[clientSlice].resource[MeasureSlice].searchParam[2].extension.valueCode = #MAY

* rest[clientSlice].resource[MeasureSlice].searchParam[3].name = "_content"
* rest[clientSlice].resource[MeasureSlice].searchParam[3].type = #string
* rest[clientSlice].resource[MeasureSlice].searchParam[3].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest[clientSlice].resource[MeasureSlice].searchParam[3].extension.valueCode = #MAY

* rest[clientSlice].resource[MeasureSlice].searchParam[4].name = "definition-text"
* rest[clientSlice].resource[MeasureSlice].searchParam[4].type = #string
* rest[clientSlice].resource[MeasureSlice].searchParam[4].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest[clientSlice].resource[MeasureSlice].searchParam[4].extension.valueCode = #MAY

* rest[clientSlice].resource[MeasureSlice].searchParam[5].name = "code"
* rest[clientSlice].resource[MeasureSlice].searchParam[5].type = #token
* rest[clientSlice].resource[MeasureSlice].searchParam[5].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest[clientSlice].resource[MeasureSlice].searchParam[5].extension.valueCode = #MAY

* rest[clientSlice].resource[MeasureSlice].searchParam[6].name = "code:in"
* rest[clientSlice].resource[MeasureSlice].searchParam[6].type = #token
* rest[clientSlice].resource[MeasureSlice].searchParam[6].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest[clientSlice].resource[MeasureSlice].searchParam[6].extension.valueCode = #MAY

* rest[clientSlice].resource[MeasureSlice].searchInclude[0] = "*"
* rest[clientSlice].resource[MeasureSlice].searchInclude[0].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest[clientSlice].resource[MeasureSlice].searchInclude[0].extension.valueCode = #MAY

* rest[clientSlice].resource[MeasureSlice].extension[0].url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-search-parameter-combination"
* rest[clientSlice].resource[MeasureSlice].extension[0].extension[0].url = "required"
* rest[clientSlice].resource[MeasureSlice].extension[0].extension[0].valueString = "_id"

* rest[clientSlice].resource[MeasureSlice].extension[1].url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-search-parameter-combination"
* rest[clientSlice].resource[MeasureSlice].extension[1].extension[0].url = "required"
* rest[clientSlice].resource[MeasureSlice].extension[1].extension[0].valueString = "url"

* rest[clientSlice].resource[MeasureSlice].extension[2].url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-search-parameter-combination"
* rest[clientSlice].resource[MeasureSlice].extension[2].extension[0].url = "required"
* rest[clientSlice].resource[MeasureSlice].extension[2].extension[0].valueString = "_text"
* rest[clientSlice].resource[MeasureSlice].extension[2].extension[1].url = "optional"
* rest[clientSlice].resource[MeasureSlice].extension[2].extension[1].valueString = "_content"
* rest[clientSlice].resource[MeasureSlice].extension[2].extension[2].url = "optional"
* rest[clientSlice].resource[MeasureSlice].extension[2].extension[2].valueString = "definition-text"
* rest[clientSlice].resource[MeasureSlice].extension[2].extension[3].url = "optional"
* rest[clientSlice].resource[MeasureSlice].extension[2].extension[3].valueString = "code"
* rest[clientSlice].resource[MeasureSlice].extension[2].extension[4].url = "optional"
* rest[clientSlice].resource[MeasureSlice].extension[2].extension[4].valueString = "code:in"

* rest[clientSlice].resource[MeasureSlice].extension[3].url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-search-parameter-combination"
* rest[clientSlice].resource[MeasureSlice].extension[3].extension[0].url = "required"
* rest[clientSlice].resource[MeasureSlice].extension[3].extension[0].valueString = "_content"
* rest[clientSlice].resource[MeasureSlice].extension[3].extension[1].url = "optional"
* rest[clientSlice].resource[MeasureSlice].extension[3].extension[1].valueString = "definition-text"
* rest[clientSlice].resource[MeasureSlice].extension[3].extension[2].url = "optional"
* rest[clientSlice].resource[MeasureSlice].extension[3].extension[2].valueString = "code"
* rest[clientSlice].resource[MeasureSlice].extension[3].extension[3].url = "optional"
* rest[clientSlice].resource[MeasureSlice].extension[3].extension[3].valueString = "code:in"

* rest[clientSlice].resource[MeasureSlice].extension[4].url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-search-parameter-combination"
* rest[clientSlice].resource[MeasureSlice].extension[4].extension[0].url = "required"
* rest[clientSlice].resource[MeasureSlice].extension[4].extension[0].valueString = "definition-text"
* rest[clientSlice].resource[MeasureSlice].extension[4].extension[1].url = "optional"
* rest[clientSlice].resource[MeasureSlice].extension[4].extension[1].valueString = "code"
* rest[clientSlice].resource[MeasureSlice].extension[4].extension[2].url = "optional"
* rest[clientSlice].resource[MeasureSlice].extension[4].extension[2].valueString = "code:in"

* rest[clientSlice].resource[MeasureSlice].extension[5].url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-search-parameter-combination"
* rest[clientSlice].resource[MeasureSlice].extension[5].extension[0].url = "required"
* rest[clientSlice].resource[MeasureSlice].extension[5].extension[0].valueString = "code"
* rest[clientSlice].resource[MeasureSlice].extension[5].extension[1].url = "optional"
* rest[clientSlice].resource[MeasureSlice].extension[5].extension[1].valueString = "code:in"

* rest[clientSlice].resource[MeasureSlice].extension[6].url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-search-parameter-combination"
* rest[clientSlice].resource[MeasureSlice].extension[6].extension[0].url = "required"
* rest[clientSlice].resource[MeasureSlice].extension[6].extension[0].valueString = "code:in"

* rest[clientSlice].resource[LibrarySlice].type = #Library

* rest[clientSlice].resource[LibrarySlice].interaction[0].code = #read
* rest[clientSlice].resource[LibrarySlice].interaction[0].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest[clientSlice].resource[LibrarySlice].interaction[0].extension.valueCode = #SHALL

* rest[clientSlice].resource[LibrarySlice].interaction[1].code = #search-type
* rest[clientSlice].resource[LibrarySlice].interaction[1].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest[clientSlice].resource[LibrarySlice].interaction[1].extension.valueCode = #SHOULD

* rest[clientSlice].resource[LibrarySlice].searchParam[0].name = "_id"
* rest[clientSlice].resource[LibrarySlice].searchParam[0].type = #token
* rest[clientSlice].resource[LibrarySlice].searchParam[0].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest[clientSlice].resource[LibrarySlice].searchParam[0].extension.valueCode = #SHALL

* rest[clientSlice].resource[LibrarySlice].searchParam[1].name = "url"
* rest[clientSlice].resource[LibrarySlice].searchParam[1].type = #uri
* rest[clientSlice].resource[LibrarySlice].searchParam[1].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest[clientSlice].resource[LibrarySlice].searchParam[1].extension.valueCode = #SHALL

* rest[clientSlice].resource[LibrarySlice].searchInclude[0] = "*"
* rest[clientSlice].resource[LibrarySlice].searchInclude[0].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest[clientSlice].resource[LibrarySlice].searchInclude[0].extension.valueCode = #MAY

* rest[clientSlice].resource[LibrarySlice].extension[0].url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-search-parameter-combination"
* rest[clientSlice].resource[LibrarySlice].extension[0].extension[0].url = "required"
* rest[clientSlice].resource[LibrarySlice].extension[0].extension[0].valueString = "_id"

* rest[clientSlice].resource[LibrarySlice].extension[1].url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-search-parameter-combination"
* rest[clientSlice].resource[LibrarySlice].extension[1].extension[0].url = "required"
* rest[clientSlice].resource[LibrarySlice].extension[1].extension[0].valueString = "url"

* rest[clientSlice].resource[ValueSetSlice].type = #ValueSet

* rest[clientSlice].resource[ValueSetSlice].interaction[0].code = #read
* rest[clientSlice].resource[ValueSetSlice].interaction[0].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest[clientSlice].resource[ValueSetSlice].interaction[0].extension.valueCode = #SHALL

* rest[clientSlice].resource[ValueSetSlice].interaction[1].code = #search-type
* rest[clientSlice].resource[ValueSetSlice].interaction[1].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest[clientSlice].resource[ValueSetSlice].interaction[1].extension.valueCode = #SHOULD

* rest[clientSlice].resource[ValueSetSlice].searchParam[0].name = "_id"
* rest[clientSlice].resource[ValueSetSlice].searchParam[0].type = #token
* rest[clientSlice].resource[ValueSetSlice].searchParam[0].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest[clientSlice].resource[ValueSetSlice].searchParam[0].extension.valueCode = #SHALL

* rest[clientSlice].resource[ValueSetSlice].searchParam[1].name = "url"
* rest[clientSlice].resource[ValueSetSlice].searchParam[1].type = #uri
* rest[clientSlice].resource[ValueSetSlice].searchParam[1].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest[clientSlice].resource[ValueSetSlice].searchParam[1].extension.valueCode = #SHALL

* rest[clientSlice].resource[ValueSetSlice].searchInclude[0] = "*"
* rest[clientSlice].resource[ValueSetSlice].searchInclude[0].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest[clientSlice].resource[ValueSetSlice].searchInclude[0].extension.valueCode = #MAY

* rest[clientSlice].resource[ValueSetSlice].extension[0].url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-search-parameter-combination"
* rest[clientSlice].resource[ValueSetSlice].extension[0].extension[0].url = "required"
* rest[clientSlice].resource[ValueSetSlice].extension[0].extension[0].valueString = "_id"

* rest[clientSlice].resource[ValueSetSlice].extension[1].url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-search-parameter-combination"
* rest[clientSlice].resource[ValueSetSlice].extension[1].extension[0].url = "required"
* rest[clientSlice].resource[ValueSetSlice].extension[1].extension[0].valueString = "url"

* rest[clientSlice].resource[CodeSystemSlice].type = #CodeSystem

* rest[clientSlice].resource[CodeSystemSlice].interaction[0].code = #read
* rest[clientSlice].resource[CodeSystemSlice].interaction[0].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest[clientSlice].resource[CodeSystemSlice].interaction[0].extension.valueCode = #SHALL

* rest[clientSlice].resource[CodeSystemSlice].interaction[1].code = #search-type
* rest[clientSlice].resource[CodeSystemSlice].interaction[1].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest[clientSlice].resource[CodeSystemSlice].interaction[1].extension.valueCode = #SHOULD

* rest[clientSlice].resource[CodeSystemSlice].searchParam[0].name = "_id"
* rest[clientSlice].resource[CodeSystemSlice].searchParam[0].type = #token
* rest[clientSlice].resource[CodeSystemSlice].searchParam[0].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest[clientSlice].resource[CodeSystemSlice].searchParam[0].extension.valueCode = #SHALL

* rest[clientSlice].resource[CodeSystemSlice].searchParam[1].name = "url"
* rest[clientSlice].resource[CodeSystemSlice].searchParam[1].type = #uri
* rest[clientSlice].resource[CodeSystemSlice].searchParam[1].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest[clientSlice].resource[CodeSystemSlice].searchParam[1].extension.valueCode = #SHALL

* rest[clientSlice].resource[CodeSystemSlice].searchInclude[0] = "*"
* rest[clientSlice].resource[CodeSystemSlice].searchInclude[0].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest[clientSlice].resource[CodeSystemSlice].searchInclude[0].extension.valueCode = #MAY

* rest[clientSlice].resource[CodeSystemSlice].extension[0].url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-search-parameter-combination"
* rest[clientSlice].resource[CodeSystemSlice].extension[0].extension[0].url = "required"
* rest[clientSlice].resource[CodeSystemSlice].extension[0].extension[0].valueString = "_id"

* rest[clientSlice].resource[CodeSystemSlice].extension[1].url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-search-parameter-combination"
* rest[clientSlice].resource[CodeSystemSlice].extension[1].extension[0].url = "required"
* rest[clientSlice].resource[CodeSystemSlice].extension[1].extension[0].valueString = "url"

* rest[clientSlice].resource[ConceptMapSlice].type = #ConceptMap

* rest[clientSlice].resource[ConceptMapSlice].interaction[0].code = #read
* rest[clientSlice].resource[ConceptMapSlice].interaction[0].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest[clientSlice].resource[ConceptMapSlice].interaction[0].extension.valueCode = #SHALL

* rest[clientSlice].resource[ConceptMapSlice].interaction[1].code = #search-type
* rest[clientSlice].resource[ConceptMapSlice].interaction[1].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest[clientSlice].resource[ConceptMapSlice].interaction[1].extension.valueCode = #SHOULD

* rest[clientSlice].resource[ConceptMapSlice].searchParam[0].name = "_id"
* rest[clientSlice].resource[ConceptMapSlice].searchParam[0].type = #token
* rest[clientSlice].resource[ConceptMapSlice].searchParam[0].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest[clientSlice].resource[ConceptMapSlice].searchParam[0].extension.valueCode = #SHALL

* rest[clientSlice].resource[ConceptMapSlice].searchParam[1].name = "url"
* rest[clientSlice].resource[ConceptMapSlice].searchParam[1].type = #uri
* rest[clientSlice].resource[ConceptMapSlice].searchParam[1].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest[clientSlice].resource[ConceptMapSlice].searchParam[1].extension.valueCode = #SHALL

* rest[clientSlice].resource[ConceptMapSlice].searchInclude[0] = "*"
* rest[clientSlice].resource[ConceptMapSlice].searchInclude[0].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest[clientSlice].resource[ConceptMapSlice].searchInclude[0].extension.valueCode = #MAY

* rest[clientSlice].resource[ConceptMapSlice].extension[0].url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-search-parameter-combination"
* rest[clientSlice].resource[ConceptMapSlice].extension[0].extension[0].url = "required"
* rest[clientSlice].resource[ConceptMapSlice].extension[0].extension[0].valueString = "_id"

* rest[clientSlice].resource[ConceptMapSlice].extension[1].url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-search-parameter-combination"
* rest[clientSlice].resource[ConceptMapSlice].extension[1].extension[0].url = "required"
* rest[clientSlice].resource[ConceptMapSlice].extension[1].extension[0].valueString = "url"
* text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\"><h2 id=\"title\">Measure Definition Consumer implementing the Query Measure Definition transaction.</h2><ul><li><b>Official URL:</b><code>http://hl7.org/fhir/uv/saner/CapabilityStatement/MeasureDefinitionConsumer-QueryMeasureDefinition</code></li><li><b>Implementation Guide Version:</b> 1.0.1</li><li><b>FHIR Version:</b> 4.0.1</li><li><b>Intended Use:</b> Requirements</li><li><b>Supported Formats:</b>\n\t\t\t\t\n                    XML, JSON\n\t\t\t\t\n\t\t\t\t</li><li><b>Published:</b> 2021-07-26</li><li><b>Published by:</b> HL7 International Public Health Workgroup</li><li><b>Status:</b> Draft (experimental)</li></ul><p>Defines the requirements for the Measure Definition Consumer implementing the Query Measure Definition transaction.</p><!-- REST Behavior --><h3 id=\"behavior\">FHIR Client RESTful Capabilities</h3><h3 class=\"no_toc\" id=\"resource--details\">RESTful Capabilities by Resource/Profile:</h3><p><strong>Summary</strong></p><table class=\"grid\"><thead><tr><th>Resource Type</th><th>Supported Interactions</th><th>Supported Profiles</th><th>Supported Searches</th><th>Supported <code>_includes</code></th><th>Supported <code>_revincludes</code></th><th>Supported Operations</th></tr></thead><tbody><tr><td><a href=\"#measure\">Measure</a></td><td>\n\t\t\t\t\t\t\t\t\t\t\n\t\t\t\t\t\t\t\t\t\t\tread, \n\t\t\t\t\t\t\t\t\t\t\t\n\t\t\t\t\t\t\t\t\t\t\tsearch-type\n\t\t\t\t\t\t\t\t\t\t\t\n\t\t\t\t\t\t\t\t\t\t\n\t\t\t\t\t\t\t\t\t</td><!-- Supported Profiles --><td><a href=\"http://hl7.org/fhir/uv/saner/StructureDefinition/PublicHealthMeasure\">Public Health Measure</a></td><!-- Supported Searches --><td>\n\t\t\t\t\t\t\t\t\t\t_id, url, _text, _content, definition-text, code, code:in, _id, url, _text+_content+definition-text+code+code:in, _content+definition-text+code+code:in, definition-text+code+code:in, code+code:in, code:in\n\t\t\t\t\t\t\t\t\t\t\n\t\t\t\t\t\t\t\t\t\t\n\t\t\t\t\t\t\t\t\t</td><!-- Supported _includes --><td>\n\t\t\t\t\t\t\t\t\t\t*\n\t\t\t\t\t\t\t\t\t</td><!-- Supported _revincludes --><td>\n\t\t\t\t\t\t\t\t\t\t\n\t\t\t\t\t\t\t\t\t</td><!-- Supported Operations --><td>\n\t\t\t\t\t\t\t\t\t\t\n\t\t\t\t\t\t\t\t\t</td></tr><tr><td><a href=\"#library\">Library</a></td><td>\n\t\t\t\t\t\t\t\t\t\t\n\t\t\t\t\t\t\t\t\t\t\tread, \n\t\t\t\t\t\t\t\t\t\t\t\n\t\t\t\t\t\t\t\t\t\t\tsearch-type\n\t\t\t\t\t\t\t\t\t\t\t\n\t\t\t\t\t\t\t\t\t\t\n\t\t\t\t\t\t\t\t\t</td><!-- Supported Profiles --><td>\n\t\t\t\t\t\t\t\t\t\t\n\t\t\t\t\t\t\t\t\t</td><!-- Supported Searches --><td>\n\t\t\t\t\t\t\t\t\t\t_id, url, _id, url\n\t\t\t\t\t\t\t\t\t\t\n\t\t\t\t\t\t\t\t\t\t\n\t\t\t\t\t\t\t\t\t</td><!-- Supported _includes --><td>\n\t\t\t\t\t\t\t\t\t\t*\n\t\t\t\t\t\t\t\t\t</td><!-- Supported _revincludes --><td>\n\t\t\t\t\t\t\t\t\t\t\n\t\t\t\t\t\t\t\t\t</td><!-- Supported Operations --><td>\n\t\t\t\t\t\t\t\t\t\t\n\t\t\t\t\t\t\t\t\t</td></tr><tr><td><a href=\"#valueset\">ValueSet</a></td><td>\n\t\t\t\t\t\t\t\t\t\t\n\t\t\t\t\t\t\t\t\t\t\tread, \n\t\t\t\t\t\t\t\t\t\t\t\n\t\t\t\t\t\t\t\t\t\t\tsearch-type\n\t\t\t\t\t\t\t\t\t\t\t\n\t\t\t\t\t\t\t\t\t\t\n\t\t\t\t\t\t\t\t\t</td><!-- Supported Profiles --><td>\n\t\t\t\t\t\t\t\t\t\t\n\t\t\t\t\t\t\t\t\t</td><!-- Supported Searches --><td>\n\t\t\t\t\t\t\t\t\t\t_id, url, _id, url\n\t\t\t\t\t\t\t\t\t\t\n\t\t\t\t\t\t\t\t\t\t\n\t\t\t\t\t\t\t\t\t</td><!-- Supported _includes --><td>\n\t\t\t\t\t\t\t\t\t\t*\n\t\t\t\t\t\t\t\t\t</td><!-- Supported _revincludes --><td>\n\t\t\t\t\t\t\t\t\t\t\n\t\t\t\t\t\t\t\t\t</td><!-- Supported Operations --><td>\n\t\t\t\t\t\t\t\t\t\t\n\t\t\t\t\t\t\t\t\t</td></tr><tr><td><a href=\"#codesystem\">CodeSystem</a></td><td>\n\t\t\t\t\t\t\t\t\t\t\n\t\t\t\t\t\t\t\t\t\t\tread, \n\t\t\t\t\t\t\t\t\t\t\t\n\t\t\t\t\t\t\t\t\t\t\tsearch-type\n\t\t\t\t\t\t\t\t\t\t\t\n\t\t\t\t\t\t\t\t\t\t\n\t\t\t\t\t\t\t\t\t</td><!-- Supported Profiles --><td>\n\t\t\t\t\t\t\t\t\t\t\n\t\t\t\t\t\t\t\t\t</td><!-- Supported Searches --><td>\n\t\t\t\t\t\t\t\t\t\t_id, url, _id, url\n\t\t\t\t\t\t\t\t\t\t\n\t\t\t\t\t\t\t\t\t\t\n\t\t\t\t\t\t\t\t\t</td><!-- Supported _includes --><td>\n\t\t\t\t\t\t\t\t\t\t*\n\t\t\t\t\t\t\t\t\t</td><!-- Supported _revincludes --><td>\n\t\t\t\t\t\t\t\t\t\t\n\t\t\t\t\t\t\t\t\t</td><!-- Supported Operations --><td>\n\t\t\t\t\t\t\t\t\t\t\n\t\t\t\t\t\t\t\t\t</td></tr><tr><td><a href=\"#conceptmap\">ConceptMap</a></td><td>\n\t\t\t\t\t\t\t\t\t\t\n\t\t\t\t\t\t\t\t\t\t\tread, \n\t\t\t\t\t\t\t\t\t\t\t\n\t\t\t\t\t\t\t\t\t\t\tsearch-type\n\t\t\t\t\t\t\t\t\t\t\t\n\t\t\t\t\t\t\t\t\t\t\n\t\t\t\t\t\t\t\t\t</td><!-- Supported Profiles --><td>\n\t\t\t\t\t\t\t\t\t\t\n\t\t\t\t\t\t\t\t\t</td><!-- Supported Searches --><td>\n\t\t\t\t\t\t\t\t\t\t_id, url, _id, url\n\t\t\t\t\t\t\t\t\t\t\n\t\t\t\t\t\t\t\t\t\t\n\t\t\t\t\t\t\t\t\t</td><!-- Supported _includes --><td>\n\t\t\t\t\t\t\t\t\t\t*\n\t\t\t\t\t\t\t\t\t</td><!-- Supported _revincludes --><td>\n\t\t\t\t\t\t\t\t\t\t\n\t\t\t\t\t\t\t\t\t</td><!-- Supported Operations --><td>\n\t\t\t\t\t\t\t\t\t\t\n\t\t\t\t\t\t\t\t\t</td></tr></tbody></table><!-- Resource Details --><h4 class=\"no_toc\" id=\"measure\">Measure</h4><p>Conformance Expectation:\t<strong>None</strong></p><p>Supported Profiles:</p><ul><li><a href=\"http://hl7.org/fhir/uv/saner/StructureDefinition/PublicHealthMeasure\">Public Health Measure</a></li></ul><p>Profile Interaction Summary:</p><ul><li><strong>SHALL</strong> support \n\t\t\t\t\t\t\t\t\t\t\t<code>read</code>.</li><li><strong>SHOULD</strong> support \n\t\t\t\t\t\t\t\t\t\t\t<code>search-type</code>.</li></ul><p>Fetch and Search Criteria:</p><ul><li>\n\t\t\t\t\t\t\t\t\t\t\t\tA Client <strong>SHALL</strong> be capable of fetching a Measure resource using:\n\t\t\t\t\t\t\t\t\t\t\t\t<code class=\"highlighter-rouge\">GET [base]/Measure/[id]</code>\n\t\t\t\t\t\t\t\t\t\t\t\t\n\t\t\t\t\t\t\t\t\t\t\t</li><li>\n\t\t\t\t\t\t\t\t\t\t\t\tA Client <strong>SHOULD</strong> be capable of fetching resources matching a search query using:\n\t\t\t\t\t\t\t\t\t\t\t\t<code class=\"highlighter-rouge\">GET [base]/Measure/[id]{?[parameters]{&amp;_format=[mime-type]}}</code>\n\t\t\t\t\t\t\t\t\t\t\t</li><li>\n\t\t\t\t\t\t\t\t\t\t\t\tA Client <strong>MAY </strong> be capable of supporting the following _includes:\n\t\t\t\t\t\t\t\t\t\t\t\t<ul><li>* - <code class=\"highlighter-rouge\">GET [base]/Measure?[parameter=value]&amp;_include=*</code></li></ul>\n\t\t\t\t\t\t\t\t\t\t\t</li></ul><!-- Only included search parameters that are not MAY or there is no conformance requirement included --><p>Search Parameter Summary:</p><table class=\"grid\"><thead><tr><th>Conformance</th><th>Parameter</th><th>Type</th><th>Example</th></tr></thead><tbody><tr><td><strong>SHALL</strong></td><td><a href=\"http://hl7.org/fhir/R4/search.html#id\">\n\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t_id</a></td><td>\n\t\t\t\t\t\t\t\t\t\t\t\t\t\t\ttoken\n\t\t\t\t\t\t\t\t\t\t\t\t\t\t</td><td><code class=\"highlighter-rouge\">GET [base]/Measure?_id=[id]</code></td></tr><tr><td><strong>SHALL</strong></td><td><a href=\"http://hl7.org/fhir/R4/measure.html#search\">\n\t\t\t\t\t\t\t\t\t\t\t\t\t\t\turl</a></td><td>\n\t\t\t\t\t\t\t\t\t\t\t\t\t\t\turi\n\t\t\t\t\t\t\t\t\t\t\t\t\t\t</td><td><code class=\"highlighter-rouge\">GET [base]/Measure?url=[uri]</code></td></tr></tbody></table><p>Search Parameter Combination Summary:</p><table class=\"grid\"><thead><tr><th>Conformance</th><th>Parameter Combination</th><th>Types</th><th>Example</th></tr></thead><tbody><tr><td>\n\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t</td><td><a href=\"http://hl7.org/fhir/R4/search.html#id\">_id</a></td><td>token\n\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t</td><td><code class=\"highlighter-rouge\">GET [base]/Measure?_id=[id]</code></td></tr><tr><td>\n\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t</td><td><a href=\"http://hl7.org/fhir/R4/url.html#search\">url</a></td><td>uri\n\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t</td><td><code class=\"highlighter-rouge\">GET [base]/Measure?url=[uri]</code></td></tr><tr><td>\n\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t</td><td><a href=\"http://hl7.org/fhir/R4/search.html#text\">_text</a>+\n\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t<a href=\"http://hl7.org/fhir/R4/search.html#content\">_content</a>+\n\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t<a href=\"http://hl7.org/fhir/R4/definition-text.html#search\">definition-text</a>+\n\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t<a href=\"http://hl7.org/fhir/R4/code.html#search\">code</a>+\n\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t<a href=\"http://hl7.org/fhir/R4/code:in.html#search\">code:in</a></td><td>string+string+string+token+token\n\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t</td><td><code class=\"highlighter-rouge\">GET [base]/Measure?_text=[string]&amp;_content=[string]&amp;definition-text=[definition-text]&amp;code=[system]|[code]&amp;code:in=[system]|[code]</code></td></tr><tr><td>\n\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t</td><td><a href=\"http://hl7.org/fhir/R4/search.html#content\">_content</a>+\n\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t<a href=\"http://hl7.org/fhir/R4/definition-text.html#search\">definition-text</a>+\n\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t<a href=\"http://hl7.org/fhir/R4/code.html#search\">code</a>+\n\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t<a href=\"http://hl7.org/fhir/R4/code:in.html#search\">code:in</a></td><td>string+string+token+token\n\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t</td><td><code class=\"highlighter-rouge\">GET [base]/Measure?_content=[string]&amp;definition-text=[definition-text]&amp;code=[system]|[code]&amp;code:in=[system]|[code]</code></td></tr><tr><td>\n\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t</td><td><a href=\"http://hl7.org/fhir/R4/definition-text.html#search\">definition-text</a>+\n\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t<a href=\"http://hl7.org/fhir/R4/code.html#search\">code</a>+\n\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t<a href=\"http://hl7.org/fhir/R4/code:in.html#search\">code:in</a></td><td>string+token+token\n\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t</td><td><code class=\"highlighter-rouge\">GET [base]/Measure?definition-text=[definition-text]&amp;code=[system]|[code]&amp;code:in=[system]|[code]</code></td></tr><tr><td>\n\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t</td><td><a href=\"http://hl7.org/fhir/R4/code.html#search\">code</a>+\n\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t<a href=\"http://hl7.org/fhir/R4/code:in.html#search\">code:in</a></td><td>token+token\n\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t</td><td><code class=\"highlighter-rouge\">GET [base]/Measure?code=[system]|[code]&amp;code:in=[system]|[code]</code></td></tr><tr><td>\n\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t</td><td><a href=\"http://hl7.org/fhir/R4/code:in.html#search\">code:in</a></td><td>token\n\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t</td><td><code class=\"highlighter-rouge\">GET [base]/Measure?code:in=[system]|[code]</code></td></tr></tbody></table><h4 class=\"no_toc\" id=\"library\">Library</h4><p>Conformance Expectation:\t<strong>None</strong></p><p>Profile Interaction Summary:</p><ul><li><strong>SHALL</strong> support \n\t\t\t\t\t\t\t\t\t\t\t<code>read</code>.</li><li><strong>SHOULD</strong> support \n\t\t\t\t\t\t\t\t\t\t\t<code>search-type</code>.</li></ul><p>Fetch and Search Criteria:</p><ul><li>\n\t\t\t\t\t\t\t\t\t\t\t\tA Client <strong>SHALL</strong> be capable of fetching a Library resource using:\n\t\t\t\t\t\t\t\t\t\t\t\t<code class=\"highlighter-rouge\">GET [base]/Library/[id]</code>\n\t\t\t\t\t\t\t\t\t\t\t\t\n\t\t\t\t\t\t\t\t\t\t\t</li><li>\n\t\t\t\t\t\t\t\t\t\t\t\tA Client <strong>SHOULD</strong> be capable of fetching resources matching a search query using:\n\t\t\t\t\t\t\t\t\t\t\t\t<code class=\"highlighter-rouge\">GET [base]/Library/[id]{?[parameters]{&amp;_format=[mime-type]}}</code>\n\t\t\t\t\t\t\t\t\t\t\t</li><li>\n\t\t\t\t\t\t\t\t\t\t\t\tA Client <strong>MAY </strong> be capable of supporting the following _includes:\n\t\t\t\t\t\t\t\t\t\t\t\t<ul><li>* - <code class=\"highlighter-rouge\">GET [base]/Library?[parameter=value]&amp;_include=*</code></li></ul>\n\t\t\t\t\t\t\t\t\t\t\t</li></ul><!-- Only included search parameters that are not MAY or there is no conformance requirement included --><p>Search Parameter Summary:</p><table class=\"grid\"><thead><tr><th>Conformance</th><th>Parameter</th><th>Type</th><th>Example</th></tr></thead><tbody><tr><td><strong>SHALL</strong></td><td><a href=\"http://hl7.org/fhir/R4/search.html#id\">\n\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t_id</a></td><td>\n\t\t\t\t\t\t\t\t\t\t\t\t\t\t\ttoken\n\t\t\t\t\t\t\t\t\t\t\t\t\t\t</td><td><code class=\"highlighter-rouge\">GET [base]/Library?_id=[id]</code></td></tr><tr><td><strong>SHALL</strong></td><td><a href=\"http://hl7.org/fhir/R4/library.html#search\">\n\t\t\t\t\t\t\t\t\t\t\t\t\t\t\turl</a></td><td>\n\t\t\t\t\t\t\t\t\t\t\t\t\t\t\turi\n\t\t\t\t\t\t\t\t\t\t\t\t\t\t</td><td><code class=\"highlighter-rouge\">GET [base]/Library?url=[uri]</code></td></tr></tbody></table><p>Search Parameter Combination Summary:</p><table class=\"grid\"><thead><tr><th>Conformance</th><th>Parameter Combination</th><th>Types</th><th>Example</th></tr></thead><tbody><tr><td>\n\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t</td><td><a href=\"http://hl7.org/fhir/R4/search.html#id\">_id</a></td><td>token\n\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t</td><td><code class=\"highlighter-rouge\">GET [base]/Library?_id=[id]</code></td></tr><tr><td>\n\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t</td><td><a href=\"http://hl7.org/fhir/R4/url.html#search\">url</a></td><td>uri\n\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t</td><td><code class=\"highlighter-rouge\">GET [base]/Library?url=[uri]</code></td></tr></tbody></table><h4 class=\"no_toc\" id=\"valueset\">ValueSet</h4><p>Conformance Expectation:\t<strong>None</strong></p><p>Profile Interaction Summary:</p><ul><li><strong>SHALL</strong> support \n\t\t\t\t\t\t\t\t\t\t\t<code>read</code>.</li><li><strong>SHOULD</strong> support \n\t\t\t\t\t\t\t\t\t\t\t<code>search-type</code>.</li></ul><p>Fetch and Search Criteria:</p><ul><li>\n\t\t\t\t\t\t\t\t\t\t\t\tA Client <strong>SHALL</strong> be capable of fetching a ValueSet resource using:\n\t\t\t\t\t\t\t\t\t\t\t\t<code class=\"highlighter-rouge\">GET [base]/ValueSet/[id]</code>\n\t\t\t\t\t\t\t\t\t\t\t\t\n\t\t\t\t\t\t\t\t\t\t\t</li><li>\n\t\t\t\t\t\t\t\t\t\t\t\tA Client <strong>SHOULD</strong> be capable of fetching resources matching a search query using:\n\t\t\t\t\t\t\t\t\t\t\t\t<code class=\"highlighter-rouge\">GET [base]/ValueSet/[id]{?[parameters]{&amp;_format=[mime-type]}}</code>\n\t\t\t\t\t\t\t\t\t\t\t</li><li>\n\t\t\t\t\t\t\t\t\t\t\t\tA Client <strong>MAY </strong> be capable of supporting the following _includes:\n\t\t\t\t\t\t\t\t\t\t\t\t<ul><li>* - <code class=\"highlighter-rouge\">GET [base]/ValueSet?[parameter=value]&amp;_include=*</code></li></ul>\n\t\t\t\t\t\t\t\t\t\t\t</li></ul><!-- Only included search parameters that are not MAY or there is no conformance requirement included --><p>Search Parameter Summary:</p><table class=\"grid\"><thead><tr><th>Conformance</th><th>Parameter</th><th>Type</th><th>Example</th></tr></thead><tbody><tr><td><strong>SHALL</strong></td><td><a href=\"http://hl7.org/fhir/R4/search.html#id\">\n\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t_id</a></td><td>\n\t\t\t\t\t\t\t\t\t\t\t\t\t\t\ttoken\n\t\t\t\t\t\t\t\t\t\t\t\t\t\t</td><td><code class=\"highlighter-rouge\">GET [base]/ValueSet?_id=[id]</code></td></tr><tr><td><strong>SHALL</strong></td><td><a href=\"http://hl7.org/fhir/R4/valueset.html#search\">\n\t\t\t\t\t\t\t\t\t\t\t\t\t\t\turl</a></td><td>\n\t\t\t\t\t\t\t\t\t\t\t\t\t\t\turi\n\t\t\t\t\t\t\t\t\t\t\t\t\t\t</td><td><code class=\"highlighter-rouge\">GET [base]/ValueSet?url=[uri]</code></td></tr></tbody></table><p>Search Parameter Combination Summary:</p><table class=\"grid\"><thead><tr><th>Conformance</th><th>Parameter Combination</th><th>Types</th><th>Example</th></tr></thead><tbody><tr><td>\n\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t</td><td><a href=\"http://hl7.org/fhir/R4/search.html#id\">_id</a></td><td>token\n\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t</td><td><code class=\"highlighter-rouge\">GET [base]/ValueSet?_id=[id]</code></td></tr><tr><td>\n\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t</td><td><a href=\"http://hl7.org/fhir/R4/url.html#search\">url</a></td><td>uri\n\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t</td><td><code class=\"highlighter-rouge\">GET [base]/ValueSet?url=[uri]</code></td></tr></tbody></table><h4 class=\"no_toc\" id=\"codesystem\">CodeSystem</h4><p>Conformance Expectation:\t<strong>None</strong></p><p>Profile Interaction Summary:</p><ul><li><strong>SHALL</strong> support \n\t\t\t\t\t\t\t\t\t\t\t<code>read</code>.</li><li><strong>SHOULD</strong> support \n\t\t\t\t\t\t\t\t\t\t\t<code>search-type</code>.</li></ul><p>Fetch and Search Criteria:</p><ul><li>\n\t\t\t\t\t\t\t\t\t\t\t\tA Client <strong>SHALL</strong> be capable of fetching a CodeSystem resource using:\n\t\t\t\t\t\t\t\t\t\t\t\t<code class=\"highlighter-rouge\">GET [base]/CodeSystem/[id]</code>\n\t\t\t\t\t\t\t\t\t\t\t\t\n\t\t\t\t\t\t\t\t\t\t\t</li><li>\n\t\t\t\t\t\t\t\t\t\t\t\tA Client <strong>SHOULD</strong> be capable of fetching resources matching a search query using:\n\t\t\t\t\t\t\t\t\t\t\t\t<code class=\"highlighter-rouge\">GET [base]/CodeSystem/[id]{?[parameters]{&amp;_format=[mime-type]}}</code>\n\t\t\t\t\t\t\t\t\t\t\t</li><li>\n\t\t\t\t\t\t\t\t\t\t\t\tA Client <strong>MAY </strong> be capable of supporting the following _includes:\n\t\t\t\t\t\t\t\t\t\t\t\t<ul><li>* - <code class=\"highlighter-rouge\">GET [base]/CodeSystem?[parameter=value]&amp;_include=*</code></li></ul>\n\t\t\t\t\t\t\t\t\t\t\t</li></ul><!-- Only included search parameters that are not MAY or there is no conformance requirement included --><p>Search Parameter Summary:</p><table class=\"grid\"><thead><tr><th>Conformance</th><th>Parameter</th><th>Type</th><th>Example</th></tr></thead><tbody><tr><td><strong>SHALL</strong></td><td><a href=\"http://hl7.org/fhir/R4/search.html#id\">\n\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t_id</a></td><td>\n\t\t\t\t\t\t\t\t\t\t\t\t\t\t\ttoken\n\t\t\t\t\t\t\t\t\t\t\t\t\t\t</td><td><code class=\"highlighter-rouge\">GET [base]/CodeSystem?_id=[id]</code></td></tr><tr><td><strong>SHALL</strong></td><td><a href=\"http://hl7.org/fhir/R4/codesystem.html#search\">\n\t\t\t\t\t\t\t\t\t\t\t\t\t\t\turl</a></td><td>\n\t\t\t\t\t\t\t\t\t\t\t\t\t\t\turi\n\t\t\t\t\t\t\t\t\t\t\t\t\t\t</td><td><code class=\"highlighter-rouge\">GET [base]/CodeSystem?url=[uri]</code></td></tr></tbody></table><p>Search Parameter Combination Summary:</p><table class=\"grid\"><thead><tr><th>Conformance</th><th>Parameter Combination</th><th>Types</th><th>Example</th></tr></thead><tbody><tr><td>\n\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t</td><td><a href=\"http://hl7.org/fhir/R4/search.html#id\">_id</a></td><td>token\n\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t</td><td><code class=\"highlighter-rouge\">GET [base]/CodeSystem?_id=[id]</code></td></tr><tr><td>\n\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t</td><td><a href=\"http://hl7.org/fhir/R4/url.html#search\">url</a></td><td>uri\n\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t</td><td><code class=\"highlighter-rouge\">GET [base]/CodeSystem?url=[uri]</code></td></tr></tbody></table><h4 class=\"no_toc\" id=\"conceptmap\">ConceptMap</h4><p>Conformance Expectation:\t<strong>None</strong></p><p>Profile Interaction Summary:</p><ul><li><strong>SHALL</strong> support \n\t\t\t\t\t\t\t\t\t\t\t<code>read</code>.</li><li><strong>SHOULD</strong> support \n\t\t\t\t\t\t\t\t\t\t\t<code>search-type</code>.</li></ul><p>Fetch and Search Criteria:</p><ul><li>\n\t\t\t\t\t\t\t\t\t\t\t\tA Client <strong>SHALL</strong> be capable of fetching a ConceptMap resource using:\n\t\t\t\t\t\t\t\t\t\t\t\t<code class=\"highlighter-rouge\">GET [base]/ConceptMap/[id]</code>\n\t\t\t\t\t\t\t\t\t\t\t\t\n\t\t\t\t\t\t\t\t\t\t\t</li><li>\n\t\t\t\t\t\t\t\t\t\t\t\tA Client <strong>SHOULD</strong> be capable of fetching resources matching a search query using:\n\t\t\t\t\t\t\t\t\t\t\t\t<code class=\"highlighter-rouge\">GET [base]/ConceptMap/[id]{?[parameters]{&amp;_format=[mime-type]}}</code>\n\t\t\t\t\t\t\t\t\t\t\t</li><li>\n\t\t\t\t\t\t\t\t\t\t\t\tA Client <strong>MAY </strong> be capable of supporting the following _includes:\n\t\t\t\t\t\t\t\t\t\t\t\t<ul><li>* - <code class=\"highlighter-rouge\">GET [base]/ConceptMap?[parameter=value]&amp;_include=*</code></li></ul>\n\t\t\t\t\t\t\t\t\t\t\t</li></ul><!-- Only included search parameters that are not MAY or there is no conformance requirement included --><p>Search Parameter Summary:</p><table class=\"grid\"><thead><tr><th>Conformance</th><th>Parameter</th><th>Type</th><th>Example</th></tr></thead><tbody><tr><td><strong>SHALL</strong></td><td><a href=\"http://hl7.org/fhir/R4/search.html#id\">\n\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t_id</a></td><td>\n\t\t\t\t\t\t\t\t\t\t\t\t\t\t\ttoken\n\t\t\t\t\t\t\t\t\t\t\t\t\t\t</td><td><code class=\"highlighter-rouge\">GET [base]/ConceptMap?_id=[id]</code></td></tr><tr><td><strong>SHALL</strong></td><td><a href=\"http://hl7.org/fhir/R4/conceptmap.html#search\">\n\t\t\t\t\t\t\t\t\t\t\t\t\t\t\turl</a></td><td>\n\t\t\t\t\t\t\t\t\t\t\t\t\t\t\turi\n\t\t\t\t\t\t\t\t\t\t\t\t\t\t</td><td><code class=\"highlighter-rouge\">GET [base]/ConceptMap?url=[uri]</code></td></tr></tbody></table><p>Search Parameter Combination Summary:</p><table class=\"grid\"><thead><tr><th>Conformance</th><th>Parameter Combination</th><th>Types</th><th>Example</th></tr></thead><tbody><tr><td>\n\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t</td><td><a href=\"http://hl7.org/fhir/R4/search.html#id\">_id</a></td><td>token\n\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t</td><td><code class=\"highlighter-rouge\">GET [base]/ConceptMap?_id=[id]</code></td></tr><tr><td>\n\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t</td><td><a href=\"http://hl7.org/fhir/R4/url.html#search\">url</a></td><td>uri\n\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t</td><td><code class=\"highlighter-rouge\">GET [base]/ConceptMap?url=[uri]</code></td></tr></tbody></table></div>"
* text.status = #generated
