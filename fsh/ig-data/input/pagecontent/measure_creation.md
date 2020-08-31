TBD

NOTE: This should probably be the intro to the profile

Audiences:
In Public Health, who is going to be doing this?
NHSN is one example.

### Use of Measure
#### Defining a Measure
##### Quality Reporting vs Other Reporting
#### Writing a Measure to Support Automation

### General Information Requirements of a Measure

### Considerations in Creating a Measure
#### Measuring Availability of Resources or Capacity
#### Measuring Consumption of Resources
#### Measuring Rates or Periods

### Considerations for Existing (or Legacy) Systems
#### System Configuration vs Product Development
#### Timeliness of Data
#### Converting to/from CSV
#### Converting to/from Other Formats

### Types of Measures
#### Selecting the Type of Measure
##### Proportion Measure
##### Ratio Measure
##### Cohort Measure
##### Continuous Variable Measure

#### Identifying what is being Measured
##### Types of Location (including Beds)
##### Types of Service (e.g., ICU, NICU,
##### Types of Devices

#### Considerations with regard to Emergency Use
##### Counting Repurposed or "Modified" Devices
##### Temporary Locations
##### Coordination of Similar Measurements

#### Stratifying Data in a Measure
##### Stratifying for Social Determinants of Health


1. Populate the metadata.
   1. What are the pieces of information you need to gather to start building a measure
      1. Describe concepts
         1. relationship of Measure development
         1. Population
         2. How are things going to be grouped
         3. What are the things people need to dig up that might be hard.
      2. Do NOT get technical.
   2. How do we connect measures to technical pieces
      1. Making sure that the measure is something that EHR systems are going to be able to digest.
         * Ongoing support for use of data in USCDI
         * Migrating data into USCDI (changes to USCDI to accomodate emerging requirements)
         * Address cases where the measure is valid, but the measure itself is wrong.
           * All of the population and grouping where you could have something represented as separate things
             but they really ought to be grouped together?
           * We need prose that explains it, and it needs to be readily available.
             * Automation needs to be customizable to address edge cases (e.g., What is a ventilator [vs. C-PAP or BiPAP])
             * Where definitions may change based on facility specific configuration, workflows, et cetera.
      2. Address digestion of measures by other Health IT systems

   1. Establish organizational conventions.
      1. SANER says measure must have:
         name, url, status, exerimental, version, publisher, at least one contact, at least one useContext,
         author.name, author.contact, at least one relatedArtifact
         Should probably also have a title.

         Give guidance and examples using FSH

         title:

         name:  Remove all special characters, make camel CASE, and be done: Computational Definition

         url:   Provide guidance to simplify development and publication using existing tooling (e.g., FHIR IG Publisher, Sushi)

         status:  active | draft | retired Explain values and when to use them in the workflow

         experimental: true | false Explain values and when to use them in the workflow

         version:  Use semantic versioning ref: https://semver.org/
                   or date using ISO 8601 format with hyphens (no time) (if more frequency, USE semantic versioning)

         publisher: (Full names preferred vs. acronyms)

         contact:

         useContext:  How to say "Country", or region (City, State, Province ...)

         relatedArtifact:  How to describe

      2. Defining a Group
      3. Defining Populations within a Group

      4. Our Measure examples will remain examples in draft/experimental form when published so that actual publishers can
         handle the real cases.

