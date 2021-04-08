
The Situational Awareness for Novel Epidemic Response Implementation Guide enables transmission
of high level situational awareness information from inpatient facilities to centralized data repositories
to support the treatment of novel influenza-like illness.


### Organization of This Guide
This guide is organized into five main sections:

* Chapter I: Introduction and Overview
1. [Introduction](introduction.html) - Provides and Introduction to this IG
2. [Measuring Situational Awareness](situational_awareness_measures.html) - Describes situational awareness and how to measure it.
3. [Use Cases](use_cases.html) - Illustrates Key Uses Cases addressed by this guide.
* Chapter II: Technical Implementation
1. [Architecture](architecture.html) - Illustrates the Microservice Architecture.
2. [Security Considerations](security_considerations.html) - Documents security concerns and mitigations.
3. [Actors and Transactions](actors.html) - Provides an overview of technical components

* Chapter III: Integrating with Existing Systems
1. [Technology Environment](technology_environment.html) - Identifies existing information systems containing situational awareness data.
2. [Integrating via CSV Files](CSV_Conversion.html) - Describes how CSV Conversions are performed.
3. [Aggregating Data](measure_aggregation.html) - Describes how to aggregate Measure data.

* Chapter IV: Conformance and Testing
<ol>
    <li><details><summary>Capability Statements</summary><ol>

        {% include list-name-capabilitystatements.xhtml %}

        </ol></details>
    </li>
    <li><details><summary>Operations</summary><ol>
        <li><a href='OperationDefinition-Measure-evaluate-measure.html'>Measure/$evaluate-measure</a> Evaluate the Measure</li>
        <li><a href='OperationDefinition-Measure-report-csv.html'>Measure/$report-csv</a> Create or update a MeasureReport from CSV Format</li>
        <li><a href='OperationDefinition-MeasureReport-aggregate.html'>MeasureReport/$aggregate</a> Aggregate MeeasureReport resources</li>
        <li><a href='OperationDefinition-MeasureReport-read-csv.html'>MeasureReport/$read-csv</a> Read in CSV Format</li>
        <li><a href='OperationDefinition-MeasureReport-search-csv.html'>MeasureReport/$search-csv</a> Search in CSV Format</li>
        </ol></details>
    </li>
    <li><details><summary>Search Parameters</summary><ol>
        <li><a href='SearchParameter-SearchParameter-code.html'>code</a> Enables Measure, MeasureReport, Questionnaire and QuestionnaireResponse resources to be discovered by codes used in the resource</li>
        <li><a href='SearchParameter-SearchParameter-definition-text.html'>definition-text</a> Enables definition resources to be discovered from text used in the resource definition</li>
        <li><a href='SearchParameter-SearchParameter-disposition.html'>disposition</a> Enables query of encounters by discharge disposition</li>
        </ol></details>
    </li>
    <li><a href='profiles_and_extensions.html'>Profiles and Extensions</a></li>
    <li><a href='vocabulary.html'>Terminology Resources</a></li>
    <li><a href='test_plan.html'>Test Plan</a></li>
    <li><details><summary id='test-data'>Test Data Sets</summary><ol>
        <li><a href='hospital_capacity_examples.html'>Hospital Capacity Measure and Report Examples</a></li>
        <li><a href='laboratory_reporting_examples.html'>Laboratory Reporting Measure and Report Examples</a></li>
        <li id='automation-data'><a href='automation_testing_examples.html'>Automation Testing Data</a></li>
        </ol></details>
    </li>
</ol>

* Chapter V: Defining Measures from Essential Elements of Information
1. [Computing Measures](measure_automation.html) - Describes mechanisms to automate measure computation.
2. [Phrase Book](phrase_book.html) - A Phrase Book for creating automatable Measures
3. [Creating an Automated Measure](measure_creation.html) - A detailed walk through the steps for creating an automated measure.

* [Appendix A: Supporting Terminology](supporting_vocabulary.html)
* [Appendix B: Fluent Query](fluent_query.html)
* Downloads
  * [this entire guide](full-ig.zip),
  * the definition resources in [json](definitions.json.zip), [xml](definitions.xml.zip), [ttl](definitions.ttl.zip), or [csv](csvs.zip) format, or
  * the example resources in [json](examples.json.zip), [xml](examples.xml.zip) or [ttl](examples.ttl.zip) format.
  * The source code for this Implementation Guide can be found on [https://github.com/HL7/fhir-saner](https://github.com/HL7/fhir-saner).

Click on any of the links above, head on over the [table of contents](toc.html), or
if you are looking for a specific artifact, check out the [index](artifacts.html).

![The SANER Project Logo](SANERLogo.png)
<div style='float: clear'/>
**Fighting COVID-19 with FHIR®**

### Copyrights and Acknowledgements

Value Sets in this guide include:

* Vocabulary Content from SNOMED CT, which is copyright © 2002+ International Health Terminology Standards
Development Organisation (IHTSDO), and distributed by agreement between IHTSDO and HL7. Implementer use of SNOMED CT
is not covered by this agreement.

* Vocabulary Content from LOINC (http://loinc.org). LOINC is copyright © 1995-2020, Regenstrief Institute, Inc. and
the Logical Observation Identifiers Names and Codes (LOINC) Committee and is available at no cost under the license
at LOINC/license. LOINC® is a registered United States trademark of Regenstrief Institute, Inc

* Vocabulary Content developed by the US National Library of Medicine: Reference to specific
commercial products, manufacturers, companies, or trademarks does not constitute its endorsement or recommendation
by the U.S. Government, Department of Health and Human Services, or NLM. Source materials are available from the
NLM Website at no charge at https://www.nlm.nih.gov/research/umls/rxnorm/index.html

* Vocabulary Content developed by CDC: Reference to specific commercial products, manufacturers, companies, or
trademarks does not constitute its endorsement or recommendation by the U.S. Government, Department of Health and
Human Services, or Centers for Disease Control and Prevention. Source materials are available from the CDC Website
at no charge at https://www.cdc.gov/nhsn/cdaportal/terminology/codesystem/hsloc.html

* The SANER Logo was created by Adrian "Kingsley" McDermott, additional imagery by [@RoseFyreWolf](https://www.instagram.com/rosefyrewolf/)

#### Contributors


| Name | Organization | Role |
| --- | --- | --- |
| Keith Boone | Audacious Inquiry | Project Lead, Lead Devloper |
| Gino Canessa | Microsoft | Developer |
| Michael Donnelly | Epic | Developer |
| Rick Geimer | Lantana | Measure Computer |
| John Moehrke | Bylight | Security and Testing Advisor |
| Austin Kreisler | Leidos | Subject Matter Expert |
| Josh Mandel | Microsoft | Subject Matter Expert |
| Abigail Watson | Symptomatic.io |  Subject Matter Expert |
| David Pyke | Audacious Inquiry | HL7 Liason |
