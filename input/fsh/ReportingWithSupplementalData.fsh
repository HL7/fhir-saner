Instance: PatientsByRiskFactorWithSupplementalData
InstanceOf: PublicHealthMeasure
Title: "Patients By Risk Factor"
Description: "This measure demonstrates automated reporting of patients with COVID-19 stratified by condition, and reporting supplemental data"
Usage: #example
* insert SanerDefinitionContent
* useContext.code = http://terminology.hl7.org/CodeSystem/usage-context-type#focus
* useContext.valueCodeableConcept = http://snomed.info/sct#840539006 "COVID-19"
* author.name = "Centers for Disease Control/National Healthcare Safety Network (CDC/NHSN)"  // Fully spelled out name (Acronym)
* author.telecom.system = #email
* author.telecom.value = "mailto:nhsn@cdc.gov"  // adding the url schema so that tooling won't be annoyed.
* insert DailyReporting
* name = "PatientsByRiskFactor"
* url = "http://hl7.org/fhir/uv/saner/Measure/PatientsByRiskFactorWithSupplementalData"
* title = "COVID-19 Patients By Risk Factor"  // Official name of measure being represented as given by the author
* insert NHSNArtifacts
* library = Canonical(ComputableNHSNMeasureLibrary)

// COVID-19 Patients
* group[0].code.coding = MeasureGroupSystem#Encounters
* group[0].code.coding.display = "Encounters"
* group[0].code.text = "Hospital COVID-19 Patient Encounters Reporting"
 //* with group[0].extension[groupAtts] do
* group[0].extension[groupAtts].extension[scoring].valueCodeableConcept = http://hl7.org/fhir/uv/saner/CodeSystem/PublicHealthMeasureScoring#queue-length
* group[0].extension[groupAtts].extension[type].valueCodeableConcept = http://terminology.hl7.org/CodeSystem/measure-type#structure
* group[0].extension[groupAtts].extension[improvementNotation].valueCodeableConcept = http://terminology.hl7.org/CodeSystem/measure-improvement-notation#decrease
 //** with extension[subject] do
* group[0].extension[groupAtts].extension[subject].valueCodeableConcept.coding[ResourceType] = http://hl7.org/fhir/resource-types#Encounter
* group[0].extension[groupAtts].extension[subject].valueCodeableConcept.coding[Snomed] = http://snomed.info/sct#398284004
* group[0].extension[groupAtts].extension[subject].valueCodeableConcept.coding[Snomed].display = "Patient in room"
* group[0].extension[groupAtts].extension[subject].valueCodeableConcept.text = "Patient in room"
* group[0].extension[groupAtts].extension[rateAggregation].valueString = "point-in-time"
 //* with group[0].population[0] do
 //** with code do
* group[0].population[0].code.coding = http://hl7.org/fhir/uv/saner/CodeSystem/MeasuredValues#confirmedC19Pats
* group[0].population[0].code.coding.display = "All Confirmed COVID-19 Patients"
* group[0].population[0].code.coding[1] = http://terminology.hl7.org/CodeSystem/measure-population#initial-population
* group[0].population[0].code.text = "Patients with confirmed COVID-19 in any location."
* group[0].population[0].description = """
Active encounters where the encounter diagnosis is suspected or confirmed COVID-19,
or a Condition of confirmed COVID-19 was created during that encounter.  This includes the patients with laboratory-confirmed
or clinically diagnosed COVID-19.
"""

* group[0].population[0].criteria.name = "ConfirmedC19Pats"
* group[0].population[0].criteria.description = """
This expression finds encounters that were active or finished in the reporting period, and their referenced Patient, Condition
and Observation resources. It filters these based on cases where Encounter reports a reason or condition in the
ConfirmedCOVID19Diagnoses value set, or where a positive lab test from the Covid19Labs valueset, or where the patient
has any such associated Condition or Observation resources in the prior two weeks.
"""
* group[0].population[0].criteria.language = #text/fhirpath
* group[0].population[0].criteria.expression = """
    findAll('Encounter',
        including('subject','condition','reasonReference'),
        with('status').equalTo('in-progress,finished'),
        with('date').within(%ReportingPeriod)
     ).onServers(%Base).
     where(
       iif(
         (Encounter.reasonCode | Condition.code).member0f(%ConfirmedCOVID19Diagnoses.url) |
         Observation.where(code.member0f(%Covid19Labs.url) and value.member0f(%PositiveResults.url)),
         true,
         iif(
           Patient.distinct()
              .whereExists('Observation',
                for('patient', $this.id),
                with('status').equalTo(
                    'registered,preliminary,final,amended,corrected'),
                with('date').greaterThan(%ReportingPeriod.start - 1 'year'),
                with('code').in(%Covid19Labs),
                with('value-concept').in(%PositiveResults)
           ).onServers(%Base),
           true,
           Patient.distinct()
              .whereExists('Condition',
                for('patient', $this.id),
                with('verification-status').notEqualTo('refuted,entered-in-error').
                with('date').greaterThan(%ReportingPeriod.start - 1 'year'),
                with('code').in(%ConfirmedCOVID19Diagnoses.url)
           ).onServers(%Base)
         )
      )
    )
    .ofType(Encounter)
    .distinct()
    .aggregate(
      iif($total.subject contains $this.subject, $total, $total | $this )
    )"""

* group[0].stratifier[0].code.text = "By Risk Factor"
* group[0].stratifier[0].description = "Stratifies the population by Condition/RiskFactor"
* group[0].stratifier[0].criteria.language = #text/fhirpath
* group[0].stratifier[0].criteria.description = """
   Final all conditions for each patient in the AllCOVID19RiskFactors ValueSet
   and stratify by membership in subsets of that value set.  NOTE: A patient
   can belong to multiple strata in this example.
 """

* group[0].stratifier[0].criteria.expression = """
	findAll('Condition',
		for('patient', $this.subject),
		with('code').in(%AllCOVID19RiskFactors.url),
        with('onset-date').greaterThan(%ReportingPeriod.start - 1 'year')
    ).onServers(%Base).select(
    	iif(code.member0f(%NeoplasticCOVID19RiskFactors.url), 'Neoplastic Disease', {}) |
    	iif(code.member0f(%COPDCOVID19RiskFactors.url), 'COPD', {}) |
    	iif(code.member0f(%TobaccoCOVID19RiskFactors.url), 'Tobacco User', {}) |
    	iif(code.member0f(%HypertensionCOVID19RiskFactors.url), 'Hypertension', {}) |	// Calling out Hypertension separately for reasons
    	iif(code.member0f(%CardiovascularCOVID19RiskFactors.url), 'Cardiovascular Disease', {}) |	// Even though it isa Cardiovascular disease
    	iif(code.member0f(%ObesityCOVID19RiskFactors.url), 'Obesity', {}) |
    	iif(code.member0f(%SickleCellCOVID19RiskFactors.url), 'Sickle cell Disease', {}) |
    	iif(code.member0f(%KidneyDiseaseCOVID19RiskFactors.url), 'Chronic Kidney Disease', {}) |
    	iif(code.member0f(%PregnancyCOVID19RiskFactors.url), 'Pregnant', {}) |
    	iif(code.member0f(%DiabetesCOVID19RiskFactors.url), 'Diabetes', {})
    )
 """

* supplementalData[0].code.coding = http://hl7.org/fhir/resource-types#Encounter
// Consider adding an extension to support filtering resource elements as per _elements in search.
* supplementalData[0].usage = http://terminology.hl7.org/CodeSystem/measure-data-usage#supplemental-data
* supplementalData[0].description = "The patient encounter"
* supplementalData[0].criteria.description = "Encounter dates, reason (e.g., Chief Complaint), discharge disposition"
* supplementalData[0].criteria.name = "Encounter"
* supplementalData[0].criteria.language = #text/fhirpath
* supplementalData[0].criteria.expression = "Encounter"

* supplementalData[1].code.coding = http://hl7.org/fhir/resource-types#Patient
* supplementalData[1].usage = http://terminology.hl7.org/CodeSystem/measure-data-usage#supplemental-data
* supplementalData[1].description = "The patient"
* supplementalData[1].criteria.description = "The Patient, including sex, dob, race and ethnicity"
* supplementalData[1].criteria.name = "Patient"
* supplementalData[1].criteria.language = #text/fhirpath
* supplementalData[1].criteria.expression = "Encounter.subject.resolve()"

* supplementalData[2].code.coding = http://hl7.org/fhir/resource-types#Location
* supplementalData[2].usage = http://terminology.hl7.org/CodeSystem/measure-data-usage#supplemental-data
* supplementalData[2].description = "The patient location"
* supplementalData[2].criteria.description = "The Patient Location"
* supplementalData[2].criteria.name = "PatientLocation"
* supplementalData[2].criteria.language = #text/fhirpath
* supplementalData[2].criteria.expression = "Encounter.location.location.resolve()"

* supplementalData[3].code.coding = http://hl7.org/fhir/resource-types#Condition
* supplementalData[3].usage = http://terminology.hl7.org/CodeSystem/measure-data-usage#supplemental-data
* supplementalData[3].description = "The encounter and other diagnosis"
* supplementalData[3].criteria.description = "Retrieves all conditions associated with the encounter"
* supplementalData[3].criteria.name = "EncounterDiagnosis"
* supplementalData[3].criteria.language = #text/fhirpath
* supplementalData[3].criteria.expression = """
	(Encounter.reasonReference|Encounter.diagnosis.condition).resolve() |
	findAll('Condition',
		for('patient', $this.subject),
		with('encounter').equalTo($this.id)
	).onServers(%Base)"""

* supplementalData[4].code.coding[0] = http://hl7.org/fhir/resource-types#MedicationRequest
* supplementalData[4].code.coding[1] = http://hl7.org/fhir/resource-types#MedicationAdministration
* supplementalData[4].code.coding[2] = http://hl7.org/fhir/resource-types#Immunization
* supplementalData[4].usage = http://terminology.hl7.org/CodeSystem/measure-data-usage#supplemental-data
* supplementalData[4].description = "Medications/Immunizations given during the encounter"
* supplementalData[4].criteria.description = "Retrieves all medications/immunizations associated with the encounter"
* supplementalData[4].criteria.name = "EncounterMeds"
* supplementalData[4].criteria.language = #text/fhirpath
* supplementalData[4].criteria.expression = """
	findAll('MedicationRequest',
		for('patient', $this.subject),
		with('encounter').equalTo($this.id)  // alternately, this could be within encounter dates
	).onServers(%Base) |
	findAll('MedicationAdministration',
		for('patient', $this.subject),
		with('effective-time').within(%ReportingPeriod)
	).onServers(%Base) |
	findAll('Immunization',
		for('patient', $this.subject),
		with('date').within(%ReportingPeriod)
	).onServers(%Base)"""

* supplementalData[5].code.coding = http://hl7.org/fhir/resource-types#Observation
* supplementalData[5].usage = http://terminology.hl7.org/CodeSystem/measure-data-usage#supplemental-data
* supplementalData[5].description = "COVID-19 Lab Results"
* supplementalData[5].criteria.description = "Retrieves all Observations associated with COVID-19 Labs"
* supplementalData[5].criteria.name = "COVID19Labs"
* supplementalData[5].criteria.language = #text/fhirpath
* supplementalData[5].criteria.expression = """
	findAll('Observation',
		for('patient', $this.subject),
		with('code').in(%Covid19Labs.url),
		with('date').greaterThan(%ReportingPeriod.start - 1 'year')
	).onServers(%Base)"""


* supplementalData[6].code.coding[0] = http://hl7.org/fhir/resource-types#DiagnosticReport
* supplementalData[6].code.coding[1] = http://hl7.org/fhir/resource-types#DocumentReference
* supplementalData[6].code.coding[2] = http://hl7.org/fhir/resource-types#Observation
* supplementalData[6].code.coding[3] = http://hl7.org/fhir/resource-types#ServiceRequest
* supplementalData[6].usage = http://terminology.hl7.org/CodeSystem/measure-data-usage#supplemental-data
* supplementalData[6].description = "VTE Diagnostic Results"
* supplementalData[6].criteria.description = "Retrieves diagnostics associated with VTE"
* supplementalData[6].criteria.name = "VTEDiagnostics"
* supplementalData[6].criteria.language = #text/fhirpath
* supplementalData[6].criteria.expression = """
	findAll('DiagnosticReport',
		for('patient', $this.subject),
		including('result', 'media'), // what else?
		with('date').greaterThan(%ReportingPeriod.start - 1 'year'),
		with('code').in(%VTEReports.url)
	).onServers(%Base) |
	findAll('DocumentReference',
		for('patient', $this.subject),
		including('related'), // what else?
		with('date').greaterThan(%ReportingPeriod.start - 1 'year'),
		with('type').in(%VTEReports.url)
	).onServers(%Base) |
	findAll('Observation',
		for('patient', $this.subject),
		including('based-on'), // what else?
		with('date').greaterThan(%ReportingPeriod.start - 1 'year'),
		with('code').in(%VTEReports.url)
	).onServers(%Base) |
	findAll('ServiceRequest',
		for('patient', $this.subject),
		including('based-on'), // what else?
		with('date').greaterThan(%ReportingPeriod.start - 1 'year'),
		with('code').in(%VTEReports.url)
	).onServers(%Base)
	"""

* supplementalData[7].code.coding[0] = http://hl7.org/fhir/resource-types#Procedure
* supplementalData[7].code.coding[1] = http://hl7.org/fhir/resource-types#ServiceRequest
* supplementalData[7].usage = http://terminology.hl7.org/CodeSystem/measure-data-usage#supplemental-data
* supplementalData[7].description = "Isolation Precautions"
* supplementalData[7].criteria.description = "Retrieves orders or procedures associated with Isolation Precautions"
* supplementalData[7].criteria.name = "IsolationOrders"
* supplementalData[7].criteria.language = #text/fhirpath
* supplementalData[7].criteria.expression = """
	findAll('ServiceRequest',
		for('patient', $this.subject),
		for('encounter', $this.id),
		with('code').in(%IsolationPrecautions.url)
	).onServers(%Base) |
	findAll('Procedure',
		for('patient', $this.subject),
		for('encounter', $this.id),
		with('code').in(%IsolationPrecautions.url)
	).onServers(%Base)"""


ValueSet:    VTEReports
Title:       "Codes for reports about VTE Diagnosics"
Description: "Codes identifying Diagnostics tests or results for VTE"
* ^copyright = "This material contains content from LOINC (http://loinc.org). LOINC is copyright © 1995-2020, Regenstrief Institute, Inc. and the Logical Observation Identifiers Names and Codes (LOINC) Committee and is available at no cost under the license at http://loinc.org/license. LOINC® is a registered United States trademark of Regenstrief Institute, Inc"
* LOINC#36850-6 "MRA Lower extremity veins - right WO and W contrast IV"
* LOINC#36416-6 "MRA Lower extremity veins WO and W contrast IV"
* LOINC#69162-6 "MRA Pulmonary artery - bilateral W contrast IA"
* LOINC#36803-5 "MRA Pulmonary vessels"
* LOINC#81596-9 "NM Lung Quantitative Views Ventilation and Perfusion"
* LOINC#39942-8 "NM Lung Ventilation and Perfusion"
* LOINC#39946-9 "NM Lung Ventilation and Perfusion and Differential"
* LOINC#30697-7 "NM Pulmonary system Ventilation and Perfusion"
* LOINC#24888-0 "NM Pulmonary system Ventilation and Perfusion W Xe-133 IH and W Tc-99m MAA IV"
* LOINC#39838-8 "SPECT Lung ventilation and perfusion"
* LOINC#69399-4 "US Femoral vein and Popliteal vein"
* LOINC#38134-3 "US Femoral vessels"
* LOINC#38128-5 "US Femoral vessels - bilateral"
* LOINC#38037-8 "US Femur - left"
* LOINC#38048-5 "US Femur - right"
* LOINC#43566-9 "US Hip and Thigh"
* LOINC#30709-0 "US Lower extremity"
* LOINC#38013-9 "US Lower extremity - bilateral"
* LOINC#38040-2 "US Lower extremity - left"
* LOINC#38039-4 "US Lower extremity - left limited"
* LOINC#38051-9 "US Lower extremity - right"
* LOINC#38050-1 "US Lower extremity - right limited"
* LOINC#46363-8 "US Lower extremity vein"
* LOINC#46364-6 "US Lower extremity vein - bilateral"
* LOINC#48692-8 "US Lower extremity vein - left"
* LOINC#48691-0 "US Lower extremity vein - right"
* LOINC#69385-3 "US Lower extremity veins - bilateral"
* LOINC#69392-9 "US Lower extremity veins - left"
* LOINC#80860-0 "US Lower extremity veins - unilateral limited"
* LOINC#24881-5 "US Popliteal space"
* LOINC#26262-6 "US Popliteal space - bilateral"
* LOINC#26263-4 "US Popliteal space - left"
* LOINC#26264-2 "US Popliteal space - right"
* LOINC#39498-1 "US.doppler Femoral vessels - left"
* LOINC#39504-6 "US.doppler Femoral vessels - right"
* LOINC#93604-7 "US.doppler Lower extremity arteries+veins - bilateral"
* LOINC#30881-7 "US.doppler Lower extremity vein"
* LOINC#39420-5 "US.doppler Lower extremity vein - bilateral"
* LOINC#39432-0 "US.doppler Lower extremity vein - left"
* LOINC#39443-7 "US.doppler Lower extremity vein - right"
* LOINC#42461-4 "US.doppler Lower extremity vessel - left for graft"
* LOINC#42462-2 "US.doppler Lower extremity vessel - right for graft"
* LOINC#44174-1 "US.doppler Lower extremity vessels"
* LOINC#39422-1 "US.doppler Lower extremity vessels - bilateral"
* LOINC#39431-2 "US.doppler Lower extremity vessels - left"
* LOINC#39430-4 "US.doppler Lower extremity vessels - left limited"
* LOINC#39442-9 "US.doppler Lower extremity vessels - right"
* LOINC#39441-1 "US.doppler Lower extremity vessels - right limited"

ValueSet:    AllCOVID19RiskFactors
Title:       "All COVID-19 Risk Factors"
Description: "Codes identifying COVID-19 Risk Factors/Comorbidities of Concern"
* ^copyright = "This value set includes content from SNOMED CT, which is copyright © 2002+ International Health Terminology Standards Development Organisation (IHTSDO), and distributed by agreement between IHTSDO and HL7. Implementer use of SNOMED CT is not covered by this agreement."
// I don't exactly recall why these are commented out elsewhere
// but we'll need to figure that out during publication.
// * codes from NeoplasticCOVID19RiskFactors
// * codes from COPDCOVID19RiskFactors
// * codes from TobaccoCOVID19RiskFactors
// * codes from HypertensionCOVID19RiskFactors
// * codes from CardiovascularCOVID19RiskFactors
// * codes from ObesityCOVID19RiskFactors
// * codes from SickleCellCOVID19RiskFactors
// * codes from KidneyDiseaseCOVID19RiskFactors
// * codes from PregnancyCOVID19RiskFactors
// * codes from DiabetesCOVID19RiskFactors
* SCT#109841003	"Liver cell carcinoma (disorder)"
* SCT#109989006	"Multiple myeloma (disorder)"
* SCT#118600007	"Malignant lymphoma (disorder)"
* SCT#13645005	"Chronic obstructive lung disease (disorder)"
* SCT#363507003	"Malignant neoplasm of pharynx (disorder)"
* SCT#365981007	"Finding of tobacco smoking behavior (finding)"
* SCT#365982000	"Finding of tobacco smoking consumption (finding)"
* SCT#38341003	"Hypertensive disorder, systemic arterial (disorder)"
* SCT#414916001	"Obesity (disorder)"
* SCT#417357006	"Sickling disorder due to hemoglobin S (disorder)"
* SCT#42343007	"Congestive heart failure (disorder)"
* SCT#428281000	"Malignant neoplasm of bone (disorder)"
* SCT#44054006	"Diabetes mellitus type 2 (disorder)"
* SCT#46177005	"End-stage renal disease (disorder)"
* SCT#49601007	"Disorder of cardiovascular system (disorder)"
* SCT#53741008	"Coronary arteriosclerosis (disorder)"
* SCT#709044004	"Chronic kidney disease (disorder)"
* SCT#77176002	"Smoker (finding)"
* SCT#77386006	"Pregnant (finding)"
* SCT#85898001	"Cardiomyopathy (disorder)"
* SCT#93143009	"Leukemia, disease (disorder)"

ValueSet:    NeoplasticCOVID19RiskFactors
Title:       "Neoplastic COVID-19 Risk Factors"
Description: "Codes identifying COVID-19 Risk Factors/Comorbidities of Concern related to Neoplastic Diseases"
* ^copyright = "This value set includes content from SNOMED CT, which is copyright © 2002+ International Health Terminology Standards Development Organisation (IHTSDO), and distributed by agreement between IHTSDO and HL7. Implementer use of SNOMED CT is not covered by this agreement."
* SCT#109841003	"Liver cell carcinoma (disorder)"
* SCT#109989006	"Multiple myeloma (disorder)"
* SCT#118600007	"Malignant lymphoma (disorder)"
* SCT#363507003	"Malignant neoplasm of pharynx (disorder)"
* SCT#428281000	"Malignant neoplasm of bone (disorder)"
* SCT#93143009	"Leukemia, disease (disorder)"

ValueSet:    COPDCOVID19RiskFactors
Title:       "COPD COVID-19 Risk Factors"
Description: "Codes identifying COVID-19 Risk Factors/Comorbidities of Concern related to COPD"
* ^copyright = "This value set includes content from SNOMED CT, which is copyright © 2002+ International Health Terminology Standards Development Organisation (IHTSDO), and distributed by agreement between IHTSDO and HL7. Implementer use of SNOMED CT is not covered by this agreement."
* SCT#13645005	"Chronic obstructive lung disease (disorder)"

ValueSet:    TobaccoCOVID19RiskFactors
Title:       "Tobacco COVID-19 Risk Factors"
Description: "Codes identifying COVID-19 Risk Factors/Comorbidities of Concern related to Tobacco Use"
* ^copyright = "This value set includes content from SNOMED CT, which is copyright © 2002+ International Health Terminology Standards Development Organisation (IHTSDO), and distributed by agreement between IHTSDO and HL7. Implementer use of SNOMED CT is not covered by this agreement."
* SCT#77176002	"Smoker (finding)"
* SCT#365981007	"Finding of tobacco smoking behavior (finding)"
* SCT#365982000	"Finding of tobacco smoking consumption (finding)"

ValueSet:    HypertensionCOVID19RiskFactors
Title:       "Hypertension COVID-19 Risk Factors"
Description: "Codes identifying COVID-19 Risk Factors/Comorbidities of Concern related to Hypertension"
* ^copyright = "This value set includes content from SNOMED CT, which is copyright © 2002+ International Health Terminology Standards Development Organisation (IHTSDO), and distributed by agreement between IHTSDO and HL7. Implementer use of SNOMED CT is not covered by this agreement."
* SCT#38341003	"Hypertensive disorder, systemic arterial (disorder)"

ValueSet:    CardiovascularCOVID19RiskFactors
Title:       "Cardiovascular COVID-19 Risk Factors"
Description: "Codes identifying COVID-19 Risk Factors/Comorbidities of Concern related to Cardiovascular disease"
* ^copyright = "This value set includes content from SNOMED CT, which is copyright © 2002+ International Health Terminology Standards Development Organisation (IHTSDO), and distributed by agreement between IHTSDO and HL7. Implementer use of SNOMED CT is not covered by this agreement."
* SCT#49601007	"Disorder of cardiovascular system (disorder)"
* SCT#42343007	"Congestive heart failure (disorder)"
* SCT#53741008	"Coronary arteriosclerosis (disorder)"
* SCT#85898001	"Cardiomyopathy (disorder)"

ValueSet:    ObesityCOVID19RiskFactors
Title:       "Obesity COVID-19 Risk Factors"
Description: "Codes identifying COVID-19 Risk Factors/Comorbidities of Concern related to Obesity"
* ^copyright = "This value set includes content from SNOMED CT, which is copyright © 2002+ International Health Terminology Standards Development Organisation (IHTSDO), and distributed by agreement between IHTSDO and HL7. Implementer use of SNOMED CT is not covered by this agreement."
* SCT#414916001	"Obesity (disorder)"

ValueSet:    SickleCellCOVID19RiskFactors
Title:       "Sickle Cell COVID-19 Risk Factors"
Description: "Codes identifying COVID-19 Risk Factors/Comorbidities of Concern related to Sickle Cell Disease"
* ^copyright = "This value set includes content from SNOMED CT, which is copyright © 2002+ International Health Terminology Standards Development Organisation (IHTSDO), and distributed by agreement between IHTSDO and HL7. Implementer use of SNOMED CT is not covered by this agreement."
* SCT#417357006	"Sickling disorder due to hemoglobin S (disorder)"

ValueSet:    KidneyDiseaseCOVID19RiskFactors
Title:       "Kidney Disease COVID-19 Risk Factors"
Description: "Codes identifying COVID-19 Risk Factors/Comorbidities of Concern related to Chronic Kidney Disease"
* ^copyright = "This value set includes content from SNOMED CT, which is copyright © 2002+ International Health Terminology Standards Development Organisation (IHTSDO), and distributed by agreement between IHTSDO and HL7. Implementer use of SNOMED CT is not covered by this agreement."
* SCT#709044004	"Chronic kidney disease (disorder)"
* SCT#46177005	"End-stage renal disease (disorder)"

ValueSet:    PregnancyCOVID19RiskFactors
Title:       "Pregnancy COVID-19 Risk Factors"
Description: "Codes identifying COVID-19 Risk Factors/Comorbidities of Concern related to Pregnancy"
* ^copyright = "This value set includes content from SNOMED CT, which is copyright © 2002+ International Health Terminology Standards Development Organisation (IHTSDO), and distributed by agreement between IHTSDO and HL7. Implementer use of SNOMED CT is not covered by this agreement."
* SCT#77386006	"Pregnant (finding)"

ValueSet:    DiabetesCOVID19RiskFactors
Title:       "Diabetes COVID-19 Risk Factors"
Description: "Codes identifying COVID-19 Risk Factors/Comorbidities of Concern related to Diabetes"
* ^copyright = "This value set includes content from SNOMED CT, which is copyright © 2002+ International Health Terminology Standards Development Organisation (IHTSDO), and distributed by agreement between IHTSDO and HL7. Implementer use of SNOMED CT is not covered by this agreement."
* SCT#44054006	"Diabetes mellitus type 2 (disorder)"

ValueSet:    IsolationPrecautions
Title:       "COVID-19 Isolation Precautions"
Description: "Codes identifying Isolation Precaution Orders or Procedures"
* ^copyright = "This value set includes content from SNOMED CT, which is copyright © 2002+ International Health Terminology Standards Development Organisation (IHTSDO), and distributed by agreement between IHTSDO and HL7. Implementer use of SNOMED CT is not covered by this agreement."
* SCT#409524006	"Airborne precautions (procedure)"
* SCT#409525007	"Respiratory secretion precautions (procedure)"
* SCT#409529001	"Contact precautions (procedure)"
* SCT#409583003	"Transmission-based precautions (procedure)"

ValueSet:    COVID19Complications
Title:       "COVID-19 Complications"
Description: "Codes identifying Complications associated with COVID-19"
* ^copyright = "This value set includes content from SNOMED CT, which is copyright © 2002+ International Health Terminology Standards Development Organisation (IHTSDO), and distributed by agreement between IHTSDO and HL7. Implementer use of SNOMED CT is not covered by this agreement."
* SCT#119731000146105	"Cardiomyopathy due to disease caused by Severe acute respiratory syndrome coronavirus 2 (disorder)"
* SCT#1240531000000103	"Myocarditis due to disease caused by Severe acute respiratory syndrome coronavirus 2 (disorder)"
* SCT#1240541000000107	"Infection of upper respiratory tract caused by Severe acute respiratory syndrome coronavirus 2 (disorder)"
* SCT#1240561000000108	"Encephalopathy due to disease caused by Severe acute respiratory syndrome coronavirus 2 (disorder)"
* SCT#138389411000119105	"Acute bronchitis caused by Severe acute respiratory syndrome coronavirus 2 (disorder)"
* SCT#674814021000119106	"Acute respiratory distress syndrome due to disease caused by Severe acute respiratory syndrome coronavirus 2 (disorder)"
* SCT#840539006	"Disease caused by Severe acute respiratory syndrome coronavirus 2 (disorder)"
* SCT#866151004	"Lymphocytopenia due to Severe acute respiratory syndrome coronavirus 2 (disorder)"
* SCT#866152006	"Thrombocytopenia due to Severe acute respiratory syndrome coronavirus 2 (disorder)"
* SCT#870588003	"Sepsis due to disease caused by Severe acute respiratory syndrome coronavirus 2 (disorder)"
* SCT#870589006	"Acute kidney injury due to disease caused by Severe acute respiratory syndrome coronavirus 2 (disorder)"
* SCT#870590002	"Acute hypoxemic respiratory failure due to disease caused by Severe acute respiratory syndrome coronavirus 2 (disorder)"
* SCT#870591003	"Rhabdomyolysis due to disease caused by Severe acute respiratory syndrome coronavirus 2 (disorder)"
* SCT#880529761000119102	"Lower respiratory infection caused by Severe acute respiratory syndrome coronavirus 2 (disorder)"
* SCT#882784691000119100	"Pneumonia caused by Severe acute respiratory syndrome coronavirus 2 (disorder)"

