ValueSet: C19HCC_Suspected_COVID19_Infection
Id: 2.16.840.1.113762.1.4.1032.116
Title: "C19HCC Suspected COVID19 Infection"
Description: """
**Purpose:**

Clinical Focus:

Conditions indicative of a possible COVID-19 infection but no definitive COVID-19 diagnosis.

Data Element Scope:

Used to identify patients suspected to have COVID-19.

Inclusion Criteria:

Includes conditions indicative of a possible COVID-19 diagnosis.

Exclusion Criteria:

Conditions associated with a confirmed COVID-19 infection."""
 * ^version = "20200410"
 * ^url = "http://cts.nlm.nih.gov/fhir/ValueSet/2.16.840.1.113762.1.4.1032.116"
 * ^status = #active
 * ^date = "2020-04-10T01:00:18-04:00"
 * ^publisher = "MITRE Steward"
 * http://hl7.org/fhir/sid/icd-10-cm#A41.89 "Other specified sepsis"
 * http://hl7.org/fhir/sid/icd-10-cm#B34.2 "Coronavirus infection, unspecified"
 * http://hl7.org/fhir/sid/icd-10-cm#J12.8 "Other viral pneumonia"
 * http://hl7.org/fhir/sid/icd-10-cm#J12.89 "Other viral pneumonia"
 * http://hl7.org/fhir/sid/icd-10-cm#J20.8 "Acute bronchitis due to other specified organisms"
 * http://hl7.org/fhir/sid/icd-10-cm#J22 "Unspecified acute lower respiratory infection"
 * http://hl7.org/fhir/sid/icd-10-cm#J40 "Bronchitis, not specified as acute or chronic"
 * http://hl7.org/fhir/sid/icd-10-cm#J80 "Acute respiratory distress syndrome"
 * http://hl7.org/fhir/sid/icd-10-cm#J98.8 "Other specified respiratory disorders"
 * http://hl7.org/fhir/sid/icd-10-cm#R05 "Cough"
 * http://hl7.org/fhir/sid/icd-10-cm#R06.0 "Dyspnea"
 * http://hl7.org/fhir/sid/icd-10-cm#R06.02 "Shortness of breath"
 * http://hl7.org/fhir/sid/icd-10-cm#R50.9 "Fever, unspecified"
 * http://snomed.info/sct#840544004 "Suspected disease caused by severe acute respiratory coronavirus 2 (situation)"
ValueSet: C19HCC_Confirmed_COVID19_Infection
Id: 2.16.840.1.113762.1.4.1032.117
Title: "C19HCC Confirmed COVID19 Infection"
Description: """
**Purpose:**

Clinical Focus:

This value set contains conditions associated with a confirmed diagnosis of COVID-19.

Data Element Scope:

Used to identify patients with a confirmed COVID-19 infection.

Inclusion Criteria:

Conditions associated with confirmed COVID-19 infection, including laboratory-confirmed COVID (symptomic or asymptomatic).

Exclusion Criteria:

Suspected, possible or probable COVID-19, or possible exposure to COVID-19 without a definitive COVID-19 diagnosis."""
 * ^version = "20200410"
 * ^url = "http://cts.nlm.nih.gov/fhir/ValueSet/2.16.840.1.113762.1.4.1032.117"
 * ^status = #active
 * ^date = "2020-04-10T01:00:18-04:00"
 * ^publisher = "MITRE Steward"
 * http://hl7.org/fhir/sid/icd-10-cm#B97.29 "Other coronavirus as the cause of diseases classified elsewhere"
 * http://snomed.info/sct#840539006 "Disease caused by severe acute respiratory syndrome coronavirus 2 (disorder)"
ValueSet: C19HCC_SARSCoV2_Exposure
Id: 2.16.840.1.113762.1.4.1032.120
Title: "C19HCC SARSCoV2 Exposure"
Description: """
**Purpose:**

Clinical Focus:

This value set contains conditions indicating the patient may have been exposed to SARS-CoV-2.

Data Element Scope:

To identify patients exposed or with a suspicion of exposure to SARS-CoV-2, whether associated with a suspicion of COVID-19 infection or not.

Inclusion Criteria:

Conditions indicative of possible exposure to SARS-CoV-2.

Exclusion Criteria:

: Conditions representing suspicion or confirmation of COVID-19."""
 * ^version = "20200410"
 * ^url = "http://cts.nlm.nih.gov/fhir/ValueSet/2.16.840.1.113762.1.4.1032.120"
 * ^status = #active
 * ^date = "2020-04-10T01:00:18-04:00"
 * ^publisher = "MITRE Steward"
 * http://hl7.org/fhir/sid/icd-10-cm#Z20.828 "Contact with and (suspected) exposure to other viral communicable diseases"
 * http://snomed.info/sct#840546002 "Exposure to severe acute respiratory syndrome coronavirus 2 (event)"
ValueSet: C19HCC_Hydroxychloroquine
Id: 2.16.840.1.113762.1.4.1032.127
Title: "C19HCC Hydroxychloroquine"
Description: """**Purpose:**

Clinical Focus:

This value set contains branded and non-branded hydroxychloroquine medications.

Data Element Scope:

Used to identify patients who had hydroxychloroquine as an active medication on their medication list or who were administered hydroxychloroquine during a hospitalization.

Inclusion Criteria:

Branded and non-branded medications with hydroxychloroquine as an ingredient. RxNorm term types: SCD\/GPCK, SBD\/BPCK, SCDG, BCDG, SCDC, BCDC, IN, PIN, BN.

Exclusion Criteria:

none"""
 * ^version = "20200417"
 * ^url = "http://cts.nlm.nih.gov/fhir/ValueSet/2.16.840.1.113762.1.4.1032.127"
 * ^status = #active
 * ^date = "2020-04-17T01:00:20-04:00"
 * ^publisher = "MITRE Steward"
 * http://www.nlm.nih.gov/research/umls/rxnorm#1164627 "Hydroxychloroquine Oral Product"
 * http://www.nlm.nih.gov/research/umls/rxnorm#1164628 "Hydroxychloroquine Pill"
 * http://www.nlm.nih.gov/research/umls/rxnorm#1181266 "Plaquenil Oral Product"
 * http://www.nlm.nih.gov/research/umls/rxnorm#1181267 "Plaquenil Pill"
 * http://www.nlm.nih.gov/research/umls/rxnorm#153972 "Hydroxychloroquine Sulfate"
 * http://www.nlm.nih.gov/research/umls/rxnorm#202462 "Plaquenil"
 * http://www.nlm.nih.gov/research/umls/rxnorm#370656 "Hydroxychloroquine Oral Tablet"
 * http://www.nlm.nih.gov/research/umls/rxnorm#5521 "Hydroxychloroquine"
 * http://www.nlm.nih.gov/research/umls/rxnorm#979091 "Hydroxychloroquine Sulfate 200 MG"
 * http://www.nlm.nih.gov/research/umls/rxnorm#979092 "Hydroxychloroquine Sulfate 200 MG Oral Tablet"
 * http://www.nlm.nih.gov/research/umls/rxnorm#979093 "Hydroxychloroquine Sulfate 200 MG [Plaquenil]"
 * http://www.nlm.nih.gov/research/umls/rxnorm#979094 "Hydroxychloroquine Sulfate 200 MG Oral Tablet [Plaquenil]"