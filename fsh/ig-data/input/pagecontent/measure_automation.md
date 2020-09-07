Several studies have shown that automation and standardization for electronic reporting improves
data quality, timeliness, and the quantity of available data in public health reporting [^1][^2].
Developers of a system focusing on reporting for pandemic management in British Columbia note the challenges
of one-off reporting solutions, including operational disruptions to address changing needs[^3].

Among institutions, barriers to reporting include having available systems to report to,
and challenges in interfacing to facility Health IT infrastructure and extracting data from EHR systems[^4].

Thus, measures **should** be automatable where feasible, and integratee with existing Health IT system capabilities.
Automation of measurement is possible when:
1. There is a common information model:
   1. A commonly understood information model and terminology that enables data collection requirements to be
      specified consistently across disparate systems, or <br/>
   2. A general information model which can be eaily adapted via local translations.<br/>
2. There are common workflows that will not significantly impact the interpretation of data.  For example, the workflow
for reporting that a patient is on a ventilator could rely on orders for ventilation, or on flowsheet observations
related to ventilator reported measurements.

3. There are mechanisms to query for information from systems.

### Common Information Model
This IG requires adoption of a national model or implementation guide to ensure that there is a common model for a region.
An incomplete list of national models is provided below:

* [Australian Base](http://hl7.org.au/fhir/aubase1.1/profiles.html)
* [Belgium Core](https://ehealthplatformstandards.github.io/artifacts.html#core-profiles)
* [Canadian Core](https://build.fhir.org/ig/scratch-fhir-profiles/CA-Core/artifacts.html)
* [Denmark Core](http://build.fhir.org/ig/hl7dk/dk-core-r4/artifacts.html)
* [India National Digital Health Mission](https://simplifier.net/NDHM/~resources?fhirVersion=R4&sortBy=DisplayName)
* [Swiss Core](http://build.fhir.org/ig/hl7ch/ch-core/artifacts.html)
* [UK Core](https://simplifier.net/guide/UKCoreDevelopment/Profiles)
* [US Core](https://www.hl7.org/fhir/us/core/#us-core-profiles)

Use of these models ensures consistent use of terminology and approach for recording data within a country that
enables broad use of the same Measure across the states, provinces, territories, or other regional divisions.

#### Localizing Value Sets for Implementation
The mechanisms chosen for automation in this guide use value sets for critical vocabulary used to identify relevant
resources for computing measures.  This use of value sets enables an implementation to replace a value set defined
based on the national implementation model for a region with translations to local codes to simplify localization.

The value sets used to automate the computation of a measure must be available to systems that are computing the measure.
These **shall** be recorded in [Library.relatedArtifact](https://www.hl7.org/fhir/library-definitions.html#Library.relatedArtifact)
in at least one of the [library](https://www.hl7.org/fhir/measure-definitions.html#Measure.library)
components referenced by the Measure.

### Data Access for Computation
Data access is encouraged through one of three mechanisms, all of which rely eventually on FHIR core search capabilities.  These mechanisms
are described in order from lowest to highest implementation complexity.
1. [FHIR Search](http://hl7.org/fhir/R4/search.html) is the basic capability supporing automation. Applications can support counting by using
FHIR queries to select appropriate data elements for evaluation, and then compute measures based on the responses.  This is the most limited
and "chatty" of mechanisms supporting integration, as many servers to not provide search capabilities supporting query across resource
boundaries using different kinds of joins (e.g., chaining and _has search capabilities). Combining FHIR queries with other FHIR capabilities
such as [Bulk Data Access](https://hl7.org/fhir/uv/bulkdata/) or [R5 Subscriptions](https://build.fhir.org/subscription.html) can make this
a more efficient process, but integrating with these specifications is beyond the scope of this implementation guide.

2. [FHIRPath](http://hl7.org/fhirpath) is a standalone specification that works with hierarchical models in structured representations (e.g.,
JSON) originally designed for use with FHIR.  It is similar in form and capability to [XPath](https://www.w3.org/TR/xpath-31/), but has application
to more general models than those represented by an XML document. When [FHIRPath is used within a FHIR Server](https://www.hl7.org/fhir/fhirpath.html)
context, the language includes capabilities which support automation of queries, and resolution of resources matching the specified path.

3. [Clinical Quality Language] (https://cql.hl7.org/) is an language designed to automate the computation of measures from FHIR and other data models. It enables
localization of models to support variations in organizational workflows and data models.  Several open source implementations of CQL interpreters
are available, but this technology has not yet reached the maturity of other sorts of systems, and it is not always widely available for users
of systems supporting FHIR.

#### Measure Definition Criteria
A Measure is defined by the computable criteria contained in definitions for the Measure
[population](https://www.hl7.org/fhir/measure-definitions.html#Measure.group.population.criteria),
[stratifier](https://www.hl7.org/fhir/measure-definitions.html#Measure.group.stratifier.criteria) and other criteria components within the measure.
These criteria elements are defined using the [Expression](https://www.hl7.org/fhir/metadatatypes.html#Expression) datatype.  This datatype
requires the language used for the criteria to be defined using one of the following values (cooresponding to mechanisms listed in the
list above):

1. application/x-fhir-query<br/>
   Expressions defined using FHIR Search are defined by the URLs allowed by FHIR [Search](https://www.hl7.org/fhir/search.html). The URLs provided
   in the [Expression.expression](https://www.hl7.org/fhir/metadatatypes-definitions.html#Expression.expression) field **shall** be provided as
   relative to the _base_ address of the server that would be queried, and **shall** be expressed in URL syntax according to
   [RFC 3986](https://tools.ietf.org/html/rfc3986) with appropriate %-encoding of the URL components.<br/>
   Conforming systems may, at their own discretion apply [Postel's law](https://en.wikipedia.org/wiki/Robustness_principle) in regard
   to the formatting of URLs. Such expressions **should** use search capabilities defined by national models. Extended search parameters
   are permitted, but these must be defined in a [SearchParameter](https://www.hl7.org/fhir/SearchParameter) available in one of the
   [libraries](https://www.hl7.org/fhir/measure-definitions.html#Measure.library) referenced by the measure.

2. text/fhirpath<br/>
   Expressions defined in FHIRPath **shall** conform to [FHIRPath](http://hl7.org/fhirpath) and are permitted to use the
   [FHIRPath functions and syntax elements](https://www.hl7.org/fhir/fhirpath.html) defined specifically for FHIR.

3. text/cql<br/>
   Expressions defines in CQL **shall** conform to the [Clinical Quality Language](https://cql.hl7.org/), and are permitteed to
   use CQL modules referenced by one of the [libraries](https://www.hl7.org/fhir/measure-definitions.html#Measure.library)
   referenced by the measure.

### Other Measure Definition Content
A computable public health measure may reference [ValueSet](https://www.hl7.org/fhir/ValueSet), [ConceptMap](https://www.hl7.org/fhir/), [CQL definitions](https://cql.hl7.org/), [SearchParameter](https://www.hl7.org/fhir/SearchParameter) and
other FHIR conformance resources to support automation. The [PublicHealthMeasureLibrary](StructureDefinition-PublicHealthMeasureLibrary.html) defines
the constraints relevant to referencing the FHIR resources needed to automate measure computation.

### Automated Measure Computation

The process for measure computation relies on several preconditions:

1. The measure establishes the initial context for evaluation by
   defining libraries, value sets, code systems or other resources
   necessary for automating the computation. These can be found in the
   Library resources defined by the measure.
2. A measure is broken up into groups, populations and strata which
   facilitate evaluation.
3. A group evaluates a measurement associated with a specific kind of
   resource or event, e.g., a patient, an admission or patient encounter,
   a lab result, et cetera. This is defined in the groups of the measure as described
   in the [Measure Group Attributes](StructureDefinition-MeasureGroupAttributes.html)
   extension.
4. Populations are evaluated based on queries of resources associated with
   the group, and may depend on other resources defined within the context
   of the measure.  Populations may be defined by refining other
   populations within the group or measure, but at least one population
   (normally the initial population) does not have any unresolved context
   references.
5. Once a population has been evaluated, it establishes a element within
   the measure context that uses the population code as it's
   computable name.  This element may enable the evaluation of other
   populations with the measure.
6. Having evaluated a population, the strata within the population should
   now be computable without evaluation of other populations. Evaluation
   of strata follow a similar pattern to evaluation of populations.

The general algorithm is:

Given a Measure, find a population within a group of the measure that does
not reference an unresolved contextual element. Evaluate that population
and update the context. If the population has strata, evaluate its strata.

If there are no more unevaluated populations, then evaluation is complete.
There should not be a population that cannot be resolved because of a missing dependency.

#### Resolving Parameters and Computed Content
Named parameters are essential to support automated measure evaluation. They are used to constrain queries using FHIR Search, FHIRPath
or CQL in order to limit the data retrieved to that which is relevant for measure computation.  The names of parameters used in Measure resources
conforming to this guide **shall** start with an upper case letter, and may contain lowercase letters and numbers, and may contain a perdiod to must match the
regular expression [A-Z][A-Za-z0-9.]+.  They **should** be in _PascalCase_.

FHIRPath and CQL provide mechanisms to provide named parameters (e.g., reporting period) and collections
of FHIR resources during their evaluation.

* FHIR Search<br/>
  To support named parameters in FHIR Queries, this guide uses the notation @_Name_ to indicate a named parameter in a FHIR Query.
  NOTE: @ is general only found in e-mail addresses, which are not relevant for queries used in this guide.

* FHIRPath<br/>
  Parameters in FHIRPath are supported via FHIRPath [Environment Variables](https://www.hl7.org/fhir/fhirpath.html#vars).
  This will be shown as %_Name_ in this guide.

* CQL<br/>
  CQL provides for [named parameters](https://cql.hl7.org/02-authorsguide.html#parameters).  This guide uses the notation
  _Name_ to indicate a named parameter in a CQL Expression.

#### Parameter Types
Parameters have a data type, either a FHIR Primitive type such as date, dateTime, or string, or complex types such as Coding, Quantity, Period or Resource and
any of its subtypes (e.g., Patient, Encounter).  The fields of the parameter are accessible via dot notation.

For example:
```
Encounters?status=in-progress,finished&date=gt@ReportingPeriod.start&date=lt@ReportingPeriod.end
```
Will produce a query that selects those encounters which are either active or which finished during the reporting period.

#### Parameters Defined in this Guide
The following parameters are predefined by this guide:

##### Date Parameters
Date parameters are essential to support appropriate filters for queries.  This enables essential dates such as the date of evaluation and the
reporting period to be communicated correctly when evaluating the measure.

ReportingPeriod
: The ReportingPeriod parameter is of the FHIR Period data type and contains the starting (inclusive) and ending time (exclusive) of
the reporting period.

Today
: This parameter is the current date and is of the FHIR Date data type.

Tomorrow
: This parameter is the day after today and is of the FHIR Date data type.

Yesterday
: This parameter is the day before today and is of the FHIR Date data type.

##### Library Resources
Attachments in Library resources referenced by a Measure (through Measure.library) are also available as parameters using the name given
to the Attachment in the Attachment.id element (see [Element.id](https://www.hl7.org/fhir/element-definitions.html#Element.id) in FHIR).

NOTE: The use of Attachment.id to provide a computable name for the component referenced by the measure addresses the issue that while
ValueSet and other definition resources include a "computable name" intended to support automation.  This name is not appropriate for 
several reasons:

1. Value Set developers and publishers do not follow the recommendations for computable names, which results in value sets (and other definition resources)
having names that include spaces and other special characters (e.g. 
"[COVID_19 (Organism or Substance in Lab Results)](https://vsac.nlm.nih.gov/valueset/2.16.840.1.113762.1.4.1146.1203/expansion/Latest)").
2. Measure developers may rely on value sets from multiple sources, which can result in value set names which conflict. However
measure developers can control the names used in the Library resources they use to support a measure. 

This guide chosee to use a name specified in the id element of the resource because these names 

For a give Measure resource, if Measure.library[0].content references a ValueSet resource, Measure.library[0].content.id is
"ReferencedValueSet", then @_ReferencedValueSet_ is a parameter that can be used in a FHIR Query string.  It is available in
a FHIRPath expression as %_ReferencedValueSet_, and in CQL simply as _ReferencedValueSet_.  These parameters are of the type of
the referenced resource.

If "VentPatients" is the id given for an attachment referencing the [Observations for Patients on a Ventilator](ValueSet-PatientsOnVentilator.html)
value set, then @_VentPatients_ may be used in a FHIR Query as follows:

```
Observation?date=gt@ReportingPeriod.start&date=lt@ReportingPeriod.end&code:in=@VentPatients.url&status:not=cancelled&status:not=entered-in-error
```

This query will select all observations whose code in the Value Set referenced by the Attachment whose id is "VentPatients".

The use of value sets in writing measures for automation is critical to avoid mistakes in entering long lists of codes, but pragmatically,
many FHIR implementations will not support the :in or :not-in modifiers.  A MeasureComputer implementing queries **shall** translate these into the
appropriate notation using the FHIR notation for [combining query parameters](https://www.hl7.org/fhir/search.html#combining) for servers which
do not understand :in and :not-in.

Servers can declare support for :in and :not-in by fully defining the search capabilities in referenced
[SearchParameter](https://www.hl7.org/fhir/searchparameter.html) resources, but in practice, few do.  A MeasureComputer should either verify that
:in and :not-in modifiers are supported (e.g., by executing test queries), or simply translate for all cases.

##### Population Parameters
Measure Populations are often computed iteratively.  For example, it's common to first identify the initial population via a search, and then
the compute the denominator by filtering results from the initial population matching a given criteria, and finally, the numerator by
filtering results from the denominator.


### Implementation Strategies
The MeasureComputer actor is free to use whichever search strategies best fit.  Implementers should remember the constraints on Measure
Populations to ensure correct evaluation (e.g., an item in the denominator must be present in the initial population).

**Footnotes**

[^1]: Effler P, Ching-Lee M, Bogard A, Ieong MC, Nekomoto T, Jernigan D. Statewide system of electronic notifiable disease reporting from clinical laboratories: comparing automated reporting with conventional methods. JAMA. 1999 Nov 17;282(19):1845-50. doi: 10.1001/jama.282.19.1845. Erratum in: JAMA 2000 Jun 14;283(22):2937. PMID: 10573276. Available on the web at https://pubmed.ncbi.nlm.nih.gov/10573276/

[^2]: Overhage JM, Grannis S, McDonald CJ. A comparison of the completeness and timeliness of automated electronic laboratory reporting and spontaneous reporting of notifiable conditions. Am J Public Health. 2008 Feb;98(2):344-50. doi: 10.2105/AJPH.2006.092700. Epub 2008 Jan 2. PMID: 18172157; PMCID: PMC2376898. Available on the web at https://pubmed.ncbi.nlm.nih.gov/18172157/

[^3]: Rizi SA, Roudsari A. Development of a public health reporting data warehouse: lessons learned. Stud Health Technol Inform. 2013;192:861-5. PMID: 23920680. Available on the web at http://ebooks.iospress.nl/volumearticle/34122

[^4]: Holmgren AJ, Apathy NC, Adler-Milstein J. Barriers to Hospital Electronic Public Health Reporting and Implications for the COVID-19 Pandemic. J Am Med Inform Assoc. 2020 May 22:ocaa112. doi: 10.1093/jamia/ocaa112. Epub ahead of print. PMID: 32442266. Available on the web at https://pubmed.ncbi.nlm.nih.gov/32442266/

