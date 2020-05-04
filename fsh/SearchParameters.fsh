Instance: SearchParmeter-definition-text
InstanceOf: SearchParameter
Title: "Search by Text in Definitions"
Mixins: SanerDefinitionContent
 * url = "http://hl7.org/fhir/us/saner/SearchParameter/definition-text"
 * description = "This SearchParameter enables definition resources used in The SANER Project to be discovered from text used in the resource definition."
 * name = "definition-text"
 * code = #definition-text
 * base[0] = #Measure
 * base[1] = #Questionnaire
 * base[2] = #ValueSet
 * base[3] = #CodeSystem
 * base[4] = #ConceptMap
 * base[5] = #SearchParameter
 * base[6] = #OperationDefinition
 * base[7] = #StructureDefinition
 * base[8] = #CapabilityStatement
 * type = #string
 * expression = """
 Measure.title | Measure.subtitle | Measure.publisher | Measure.description | Measure.purpose | Measure.usage |
 Measure.riskAdjustment | Measure.rateAggregation | Measure.clinicalRecommendationStatement | Measure.definition | Measure.guideance |
 Questionnaire.title | Questionnaire.publisher | Questionnaire.description | Questionnaire.purpose |
 ValueSet.title | ValueSet.publisher | ValueSet.description | ValueSet.purpose |
 CodeSystem.title | CodeSystem.publisher | CodeSystem.description | CodeSystem.purpose |
 ConceptMap.title | ConceptMap.publisher | ConceptMap.description | ConceptMap.purpose |
 SearchParameter.title | SearchParameter.publisher | SearchParameter.description | SearchParameter.purpose |
 OperationDefinition.title | OperationDefinition.publisher | OperationDefinition.description | OperationDefinition.purpose |
 StructureDefinition.title | StructureDefinition.publisher | StructureDefinition.description | StructureDefinition.purpose |
 CapabilityStatement.title | CapabilityStatement.publisher | CapabilityStatement.description | CapabilityStatement.purpose
 """
* xpath = """
 f:Measure/f:title | f:Measure/f:subtitle | f:Measure/f:publisher | f:Measure/f:description | f:Measure/f:purpose | f:Measure/f:usage |
 f:Measure/f:riskAdjustment | f:Measure/f:rateAggregation | f:Measure/f:clinicalRecommendationStatement | f:Measure/f:definition | f:Measure/f:guideance |
 f:Questionnaire/f:title | f:Questionnaire/f:publisher | f:Questionnaire/f:description | f:Questionnaire/f:purpose |
 f:ValueSet/f:title | f:ValueSet/f:publisher | f:ValueSet/f:description | f:ValueSet/f:purpose |
 f:CodeSystem/f:title | f:CodeSystem/f:publisher | f:CodeSystem/f:description | f:CodeSystem/f:purpose |
 f:ConceptMap/f:title | f:ConceptMap/f:publisher | f:ConceptMap/f:description | f:ConceptMap/f:purpose |
 f:SearchParameter/f:title | f:SearchParameter/f:publisher | f:SearchParameter/f:description | f:SearchParameter/f:purpose |
 f:OperationDefinition/f:title | f:OperationDefinition/f:publisher | f:OperationDefinition/f:description | f:OperationDefinition/f:purpose |
 f:StructureDefinition/f:title | f:StructureDefinition/f:publisher | f:StructureDefinition/f:description | f:StructureDefinition/f:purpose |
 f:CapabilityStatement/f:title | f:CapabilityStatement/f:publisher | f:CapabilityStatement/f:description | f:CapabilityStatement/f:purpose
 """
* xpathUsage = #normal
* multipleOr = true
* multipleAnd = true
* modifier[0] = #missing
* modifier[1] = #exact
* modifier[2] = #contains

Instance: SearchParmeter-code
InstanceOf: SearchParameter
Title: "Search by Code in Definitions and Instances"
Mixins: SanerDefinitionContent
 * url = "http://hl7.org/fhir/us/saner/SearchParameter/code"
 * description = "This SearchParameter enables resources used in The SANER Project to be discovered by codes or valueSets used in the resource including those in any extensions."
 * name = "code"
 * purpose = """
 """
 * code = #code
 * base[0] = #Measure
 * base[1] = #MeasureReport
 * base[2] = #Questionnaire
 * base[3] = #QuestionnaireResponse
 * type = #token
 * expression = """
 Measure.topic | Measure.group.code | Measure.group.population.code |
 Measure.group.stratifier.code | Measure.group.stratifier.component.code | Measure.supplementalData.code |
 MeasureReport.group.code | MeasureReport.group.population.code |
 MeasureReport.group.stratifier.code | MeasureReport.group.stratifier.stratum.component.code |  MeasureReport.group.stratifier.stratum.population.code |
 Questionnaire.subjectType | Questionnaire.descendant().item.code | Questionnaire.item.answerOption.valueCoding | Questionnaire.item.descendant().item.code | Questionnaire.item.descendant().answerOption.valueCoding |
 QuestionnaireResponse.item.answer.valueCoding | QuestionnaireResponse.item.descendant().item.answer.valueCoding |
 descendant().extension.valueCodeableConcept | descendant().extension.valueCoding
"""

 * xpath = """
 f:Measure/f:topic | f:Measure/f:group/f:code | f:Measure/f:group/f:population/f:code |
 f:Measure/f:group/f:stratifier/f:code | f:Measure/f:group/f:stratifier/f:component/f:code | f:Measure/f:supplementalData/f:code |
 f:MeasureReport/f:group/f:code | f:MeasureReport/f:group/f:population/f:code |
 f:MeasureReport/f:group/f:stratifier/f:code | f:MeasureReport/f:group/f:stratifier/f:stratum/f:component/f:code | f: MeasureReport/f:group/f:stratifier/f:stratum/f:population/f:code |
 f:Questionnaire/f:subjectType | f:Questionnaire/descendant::f:item/f:code | f:Questionnaire/descendant::f:item/f:answerOption/f:valueCoding
 f:QuestionnaireResponse/descendant::f:item/f:answer/f:valueCoding |
 f:*/descendant::f:extension/f:valueCodeableConcept | f:*/descendant::f:extension/f:valueCoding
"""
* xpathUsage = #normal
* multipleOr = true
* multipleAnd = true
* modifier[0] = #missing
* modifier[1] = #text
* modifier[2] = #not
* modifier[3] = #in
* modifier[4] = #not-in
* modifier[5] = #below
* modifier[6] = #above
* modifier[7] = #ofType