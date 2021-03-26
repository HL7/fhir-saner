This page lists ValueSets, CodeSystems and ConceptMaps used in this guide to illustrate
the creation of Measure resources.  These terminology resources are illustrative, but
not required for use of this guide.

### Value Sets
These Value Sets have been defined to illustrate creation of measures using this implementation guide.

#### Bed Locations
1. [Bed Location Operational Status](ValueSet-BedLocationOperationalStatus.html)
2. [Healthcare Service Location](ValueSet-HealthcareServiceLocation.html)
3. [ICU Locations](ValueSet-ICULocations.html)
4. [Inpatient Locations](ValueSet-InpatientLocations.html)

#### COVID-19 Diagnoses

1. [COVID-19 ICD-10-CM Diagnoses](ValueSet-COVID19DXICD10.html)
2. [COVID-19 SNOMED Diagnoses](ValueSet-COVID19DXSNOMED.html)
3. [COVID-19 Exposures](ValueSet-COVID19Exposures.html)
4. [Confirmed COVID-19 Diagnosis Values](ValueSet-ConfirmedCOVID19Diagnoses.html)
5. [Suspected COVID-19 Diagnoses](ValueSet-SuspectedCOVID19Diagnoses.html)
6. [Suspected Or Diagnosed COVID-19](ValueSet-SuspectedOrConfirmedCOVID19Diagnoses.html)

#### COVID-19 Related Medications
1. [Remdesivir](ValueSet-Remdesivir.html)

#### COVID-19 Lab Value Sets

1. [COVID-19 Antibody](ValueSet-COVID19Antibody.html)
2. [COVID-19 Organism](ValueSet-COVID19Organism.html)
3. [COVID-19 Not Detected](ValueSet-NegativeResults.html)
4. [COVID-19 Detected](ValueSet-PositiveResults.html)
5. [SARSCoV2 Genetic Labs](ValueSet-SARSCoV2GeneticLabs.html)
6. [SARSCoV2 Labs](ValueSet-SARSCoV2Labs.html)

#### Ventilator Value Sets
1. [Ventilator Devices](ValueSet-VentilatorDevices.html)
2. [Ventilator Observations](ValueSet-VentilatorObservations.html)
3. [Ventilator Procedures](ValueSet-VentilatorProcedures.html)

#### Patient Death
1. [Patient Died](ValueSet-PatientDeaths.html)

#### Example Value Sets for Measure Groups and Populations
1. [Measure Groups](ValueSet-MeasureGroups.html)
2. [Measure Populations](ValueSet-MeasurePopulations.html)

### Code Systems
These Code Systems havee been included to illustrate creation of measures using this implementation guide.

1. [Measure Group System](CodeSystem-MeasureGroupSystem.html)
2. [Situational Awareness Measure Populations](CodeSystem-MeasurePopulationSystem.html)
3. [Measured Values in Sample Measures](CodeSystem-MeasuredValues.html)

The following Code Systems are defined elsewhere and are used in this guide.
1. [Age Range Coding System](CodeSystem-IHE-ADX-agerange.html)

### Concept Maps
This Concept Map provides a mapping from Location codes identified in the HAvBED2 specification
to codes found in HL7 FHIR.
1. [HAvBED2 to FHIR](ConceptMap-HAvBED2toFHIR.html)

<span id='coding-location'> </span>

### Recommended Coding Systems and Value Sets for Location.identifer
This implementation guide requires the Location resource reference by MeasureReport.subject to have both a name and an identitifer. This raises the question of
the identifier and identifier system to use for geographic. While facility locations ofent have identifiers, larger geopolitical boundaries are identified
using codes from a [coding system](https://www.hl7.org/fhir/R4/codesystem.html), such as ISO 3166, or GIS Information standards from INCITS.

When using a Coding system value in a FHIR Identifier, the value that would normally appear in Coding.code appears in Identifier.value.
The value that would normally appear in Coding.system appears in Identifier.system.

The sections below provides a partial list of identifier systems that can be used to identify locations, with a brief description of each one.  Measure
implementers will need to select the appropriate identifier systems.

#### [ISO 3166](https://www.iso.org/iso-3166-country-codes.html) The International Standard for country codes and codes for their subdivisions
The purpose of ISO 3166 is to define internationally recognized codes of letters and/or numbers that we can use when we refer to countries and their subdivisions.  Its use
is described in [Using ISO 3166 Country Codes with FHIR](https://hl7.org/fhir/iso3166.html) in the FHIR specification.

ISO 3166-1 provides codes for countries. When this code system is used for Location.identifier, the value of Location.identifier.system
must be set to urn:iso:std:iso:3166.

ISO 3166-2 provides codes for subdivisions of countries (i.e., states, provinces, territories or similar regions). When this code system is used for
Location.identifier, the value of Location.identifier.system must be set to urn:iso:std:iso:3166:-2.

##### ISO 3166-1 Value Sets
ISO 3166-1 provides three different codes for a country, a two letter code, a three letter code, and a numeric code. The two letter code for the US is 'US', the
three letter code is USA, and the numeric code is 840.  At most one of these codes **should** be used to identify locations at a country level.  The FHIR standard identifies
three different value sets for this use:

* http://hl7.org/fhir/ValueSet/iso3166-1-2 - ISO 3166 Part 1: 2 Letter Codes
* http://hl7.org/fhir/ValueSet/iso3166-1-3 - ISO 3166 Part 1: 3 Letter Codes
* http://hl7.org/fhir/ValueSet/iso3166-1-N - ISO 3166 Part 1: Numeric Codes

Most developers are familiar with the use of ISO 3166 as it is used in [RFC 5646 Tags for Identifying Languages](https://www.ietf.org/rfc/rfc5646.html) which prefers
use of the ISO 3166 Part 1: 2 letter codes.  Measures **should** use the two letter codes when using ISO-3166 Part 1.

#### [INCITS 31-2009[R2019]](https://standards.incits.org/apps/group_public/project/details.php?project_id=2398) Codes for the Identification of Counties and Equivalent Areas of the United States, Puerto Rico, and the Insular Areas
Establishes a structure for the assignment of identifying data codes to counties and county equivalents of the United States and its insular and associated areas,
for the purpose of information interchange among data processing systems.

#### [INCITS 38-2009[R2019]](https://standards.incits.org/apps/group_public/project/details.php?project_id=2399) Codes for the Identification of the States and Equivalent Areas within the United States, Puerto Rico, and the Insular Areas

This standard establishes a structure for the assignment of identifying codes to states and state equivalents of the United States and its insular areas.

#### [FIPS 5-2](https://web.archive.org/web/20090705054444/http://www.itl.nist.gov/fipspubs/fip5-2.htm) Codes for the Identification of the States, the District of Columbia and the Outlying Areas of the United States, and Associated Areas

This standard provides a set of two-digit numeric codes and a set of two-letter alphabetic codes for representing the 50 states, the District of Columbia
and the outlying areas of the United States, and associated areas. The standard covers all land areas under the sovereignty of the United States, the freely
associated states of Federated States of Micronesia and Marshall Islands, and the trust territory of Palau. This revision supersedes FIPS PUB 5-1 in its entirety.

Note: FIPS 5-2 was withdrawn as a US Information Processing standard in 2008 to be replaced by INCITS 31-2009, but was still used for the US 2010 census. Some Geographic
Information Systems used in the US still report the FIPS 5-2 code for a region.

#### [FIPS 6-4](https://web.archive.org/web/20090713035743/http://www.itl.nist.gov/fipspubs/fip6-4.htm) Counties and Equivalent Entities of the United States, Its Possessions, and Associated Areas.

This standard provides the names and codes that represent the counties and other entities treated as the equivalents of counties for legal and/or statistical
purposes in the 50 States, the District of Columbia, and the possessions (American Samoa, Guam, Northern Mariana Islands, Palau, Puerto Rico, and Virgin
Islands of the United States) and freely associated areas (Federated States of Micronesia and Marshall Islands) of the United States. Palau is the last
remaining component of the Trust Territory of the Pacific Islands (TTPI); for presentation purposes, Palau, rather than the TTPI, is treated as the
State-equivalent entity.

Note: FIPS 6-4 was withdrawn as a US Information Processing standard in 2008 to be replaced by INCITS 38-2009, but was still used for the US 2010 census. Some Geographic
Information Systems used in the US still report the FIPS 6-4 code for a region.

<span id='dartmouth'> </span>
#### [Dartmouth Atlas](https://atlasdata.dartmouth.edu/static/supp_research_data) Geographic Boundary Files
The Dartmouth Atlas defines three different kinds of Geographic regions in the US. These regions describe service areas and referral regions with common characteristics
based on geography and population, and are used for some forms of statistical health research. These identifiers are often found in data sets provided by geographic
information systems. Cross walks and geographic boundary files for each of theese areas can be found at the link above.

##### Hospital Service Area (HSA)
An HSA is a collection of ZIP codes whose residents receive most of their hospitalizations from the hospitals in that area.
The identifier system for HSA is http://terminology.hl7.org/codesystem/dartmouthatlas/HSA.

##### Hospital Referral Region (HRR)
HRRs were defined by assigning HSAs to the region where the greatest proportion of major cardiovascular procedures were performed,
with minor modifications to achieve geographic contiguity, a minimum population size of 120,000, and a high localization index.
The identifier system for HRR is http://terminology.hl7.org/codesystem/dartmouthatlas/HRR

##### Primary Care Service Area (PCSA)
A PCSA is the smallest geographic area (identified by ZIP code) that can be considered a discrete service area for primary care.
The identifier system for PCSA is http://terminology.hl7.org/codesystem/dartmouthatlas/PCSA

#### Postal Codes
National codes used with postal systems also define geographic areas. These code systems are generally managed by national postal services.
A list of known values to use for the postal code system is provided below:

* United States [http://terminology.hl7.org/CodeSystem/USZIPCODES](https://terminology.hl7.org/1.0.0/CodeSystem-USZIPCODES.html)
* Germany [https://demis.rki.de/fhir/CodeSystem/postalCode](https://simplifier.net/Covid-19Labormeldung/postalCode)

### Identifier System Selection Guidance
For measure reporting used within a single country, systems **should** use nationally recognized standard coding systems for Location.identifier,
or if there is no such standard, ISO 3166. For measure reporting that supports reporting from multiple countries, systems **should** use ISO 3166.