ValueSet: BedLocationOperationalStatus
Title: "Bed Location Operational Status"
Description: "This Value Set is used to indicate whether a bed is in use (O), available for use (U), or not available (C) for use."
* ^experimental = true
* http://terminology.hl7.org/CodeSystem/v2-0116#C
* http://terminology.hl7.org/CodeSystem/v2-0116#O
* http://terminology.hl7.org/CodeSystem/v2-0116#U

ValueSet: PatientsOnVentilator
Title: "Observations for Patients on a Ventilator"
Description: "This Value Set identifies patients currently on a ventilator"
* ^experimental = true
* ^copyright = "This material contains content from LOINC (http://loinc.org). LOINC is copyright © 1995-2020, Regenstrief Institute, Inc. and the Logical Observation Identifiers Names and Codes (LOINC) Committee and is available at no cost under the license at http://loinc.org/license. LOINC® is a registered United States trademark of Regenstrief Institute, Inc"
* LOINC#19835-8 // Breath rate setting Ventilator synchronized intermittent mandatory
* LOINC#19994-3 // Oxygen/Inspired gas setting [Volume Fraction] Ventilator
* LOINC#20077-4 // Positive end expiratory pressure setting Ventilator
* LOINC#20079-0 // Pressure support setting Ventilator
* LOINC#20103-8 // Tidal volume expired/Plateau pressure --post 1.5-2.0 seconds inspiratory hold on ventilator
* LOINC#20112-9 // Tidal volume setting Ventilator
* LOINC#20115-2 // Tidal volume.spontaneous/Body weight [Volume/mass] --on ventilator
* LOINC#33438-3 // Breath rate mechanical --on ventilator
* LOINC#57655-3 // Tidal volume.exhaled maximum setting Ventilator alarm
* LOINC#76530-5 // Mean pressure Respiratory system airway --on ventilator
* LOINC#19839-0 // Breath rate spontaneous --on ventilator

ValueSet: Remdesivir
Title: "Remdesivir"
Description: "This Value Set identifies Remdesivir"
* ^experimental = true
* ^copyright = """
This value set includes content from SNOMED CT, which is copyright © 2002+ International Health Terminology Standards
Development Organisation (IHTSDO), and distributed by agreement between IHTSDO and HL7. Implementer use of SNOMED CT
is not covered by this agreement.

This value set includes source materials developed by the US National Library of Medicine: Reference to specific
commercial products, manufacturers, companies, or trademarks does not constitute its endorsement or recommendation
by the U.S. Government, Department of Health and Human Services, or NLM. Source materials are available from the
NLM Website at no charge at https://www.nlm.nih.gov/research/umls/rxnorm/index.html
"""

* RXNORM#2284718 // remdesivir
* RXNORM#2284957 // remdesivir 100 MG
* RXNORM#2284958 // remdesivir Injectable Product
* RXNORM#2284959 // remdesivir Injection
* RXNORM#2284960 // remdesivir 100 MG Injection
* RXNORM#2367757 // remdesivir 5 MG/ML
* SCT#870592005 // Remdesivir
* SCT#870519002 // Remdesivir only product
* SCT#870600003 // Administration of remdesivir
* SCT#870518005 // Product containing remdesivir
* SCT#870521007 // Product containing only remdesivir in parenteral dose form
* SCT#870520008 // Product containing remdesivir in parenteral dose form
* SCT#870522000 // Product containing precisely remdesivir 100 milligram/1 vial powder for conventional release solution for injection

// The following value sets are expansions from VSAC
ValueSet: COVID19Organism
Title: "COVID-19 Organism"
Description: "This Value Set identifies codes describing SARS COV2 Related Substances detected during testing"
* ^copyright = "This value set includes content from SNOMED CT, which is copyright © 2002+ International Health Terminology Standards Development Organisation (IHTSDO), and distributed by agreement between IHTSDO and HL7. Implementer use of SNOMED CT is not covered by this agreement."
* ^version = "20200716"
//* ^url = "http://cts.nlm.nih.gov/fhir/ValueSet/2.16.840.1.113762.1.4.1146.1143"
* ^status = #active
* ^date = "2020-07-16T01:00:25-04:00"
* ^publisher = "CSTE Steward"
* ^experimental = true
* SCT#840533007 "Severe acute respiratory syndrome coronavirus 2 (organism)"
* SCT#840536004 "Antigen of severe acute respiratory syndrome coronavirus 2 (substance)"

ValueSet: COVID19Antibody
Title: "COVID-19 Antibody"
Description: "This Value Set includes codes describing SARS COV-2 antibodies detected during testing"
* ^experimental = true
* ^copyright = "This value set includes content from SNOMED CT, which is copyright © 2002+ International Health Terminology Standards Development Organisation (IHTSDO), and distributed by agreement between IHTSDO and HL7. Implementer use of SNOMED CT is not covered by this agreement."
* ^version = "20200430"
//* ^url = "http://cts.nlm.nih.gov/fhir/ValueSet/2.16.840.1.113762.1.4.1146.1155"
* ^status = #active
* ^date = "2020-04-30T01:00:18-04:00"
* ^publisher = "CSTE Steward"
* SCT#840535000 "Antibody to severe acute respiratory syndrome coronavirus 2 (substance)"

ValueSet: COVID19DXICD10
Title: "COVID-19 ICD-10"
Description: "This Value Set includes codes describing COVID-19 illness from ICD-10-CM"
* ^experimental = true
* ^version = "20200516"
//* ^url = "http://cts.nlm.nih.gov/fhir/ValueSet/2.16.840.1.113762.1.4.1146.1123"
* ^status = #active
* ^date = "2020-05-16T01:00:22-04:00"
* ^publisher = "CSTE Steward"
* ICD10CM#B34.2 "Coronavirus infection, unspecified"
* ICD10CM#B97.2 "Coronavirus as the cause of diseases classified elsewhere"
* ICD10CM#B97.29 "Other coronavirus as the cause of diseases classified elsewhere"
* ICD10CM#U07.1 "COVID-19"

ValueSet: COVID19DXSNOMED
Title: "COVID-19 SNOMED"
Description: "This Value Set includes codes describing COVID-19 illness from SNOMED-CT"
* ^experimental = true
* ^version = "Draft"
//* ^url = "http://cts.nlm.nih.gov/fhir/ValueSet/2.16.840.1.113762.1.4.1146.1124"
* ^status = #draft
* ^date = "2020-08-12T17:36:54-04:00"
* ^publisher = "CSTE Steward"
* ^copyright = "This value set includes content from SNOMED CT, which is copyright © 2002+ International Health Terminology Standards Development Organisation (IHTSDO), and distributed by agreement between IHTSDO and HL7. Implementer use of SNOMED CT is not covered by this agreement."
* SCT#186747009 "Coronavirus infection (disorder)"
* SCT#713084008 "Pneumonia caused by Human coronavirus (disorder)"
* SCT#840539006 "Disease caused by severe acute respiratory syndrome coronavirus 2 (disorder)"
* SCT#840544004 "Suspected disease caused by severe acute respiratory coronavirus 2 (situation)"

ValueSet: COVID19Exposures
Title: "COVID-19 Exposures"
Description: "This Value Set includes codes describing COVID-19 exposure from SNOMED-CT"
* ^experimental = true
* ^copyright = "This value set includes content from SNOMED CT, which is copyright © 2002+ International Health Terminology Standards Development Organisation (IHTSDO), and distributed by agreement between IHTSDO and HL7. Implementer use of SNOMED CT is not covered by this agreement."
* ^version = "20200604"
//* ^url = "http://cts.nlm.nih.gov/fhir/ValueSet/2.16.840.1.113762.1.4.1146.1203"
* ^status = #active
* ^date = "2020-06-04T01:00:20-04:00"
* ^publisher = "CSTE Steward"
* SCT#840546002 "Exposure to severe acute respiratory syndrome coronavirus 2 (event)"

ValueSet: HealthcareServiceLocation
Title: "Healthcare Service Location"
Description: "This Value Set includes codes describing Service Locations in a healthcare facility"
* ^experimental = true
* ^version = "20200604"
//* ^url = "http://cts.nlm.nih.gov/fhir/ValueSet/2.16.840.1.113883.1.11.20275"
* ^status = #active
* ^date = "2019-08-30T01:00:18-04:00"
* ^publisher = "HL7 Terminology"
* ^copyright = """Materials developed by CDC: Reference to specific commercial products, manufacturers, companies, or trademarks does not
 constitute its endorsement or recommendation by the U.S. Government, Department of Health and Human Services, or Centers for Disease Control
 and Prevention. Source materials are available from the CDC Website at no charge at
 https://www.cdc.gov/nhsn/cdaportal/terminology/codesystem/hsloc.html"""

* HSLOC#1005-8 "Cardiac Catheterization Room/Suite"
* HSLOC#1007-4 "Endoscopy Suite"
* HSLOC#1008-2 "Radiology"
* HSLOC#1009-0 "Pulmonary Function Testing"
* HSLOC#1010-8 "General Laboratory"
* HSLOC#1011-6 "Clinical Chemistry Laboratory"
* HSLOC#1012-4 "Hematology Laboratory"
* HSLOC#1013-2 "Histology-Surgical Pathology Laboratory"
* HSLOC#1014-0 "Microbiology Laboratory"
* HSLOC#1015-7 "Serology Laboratory"
* HSLOC#1016-5 "Virology Laboratory"
* HSLOC#1017-3 "Hyperbaric Oxygen Center"
* HSLOC#1018-1 "Infusion Center"
* HSLOC#1019-9 "Specimen Collection Area (Healthcare)"
* HSLOC#1020-7 "Sleep Study Unit"
* HSLOC#1025-6 "Trauma Critical Care"
* HSLOC#1026-4 "Burn Critical Care"
* HSLOC#1027-2 "Medical Critical Care"
* HSLOC#1028-0 "Medical Cardiac Critical Care"
* HSLOC#1029-8 "Medical-Surgical Critical Care"
* HSLOC#1030-6 "Surgical Critical Care"
* HSLOC#1031-4 "Neurosurgical Critical Care"
* HSLOC#1032-2 "Surgical Cardiothoracic Critical Care"
* HSLOC#1033-0 "Respiratory Critical Care"
* HSLOC#1034-8 "Prenatal Critical Care"
* HSLOC#1035-5 "Neurologic Critical Care"
* HSLOC#1038-9 "Well Baby Nursery (Level I)"
* HSLOC#1039-7 "Neonatal Critical Care(Level II/III)"
* HSLOC#1040-5 "Neonatal Critical Care (Level III)"
* HSLOC#1041-3 "Step down Neonatal Nursery (Level II)"
* HSLOC#1042-1 "Pediatric Burn Critical Care"
* HSLOC#1043-9 "Pediatric Cardiothoracic Critical Care"
* HSLOC#1044-7 "Pediatric Medical Critical Care"
* HSLOC#1045-4 "Pediatric Medical-Surgical Critical Care"
* HSLOC#1046-2 "Pediatric Neurosurgical Critical Care"
* HSLOC#1047-0 "Pediatric Respiratory Critical Care"
* HSLOC#1048-8 "Pediatric Surgical Critical Care"
* HSLOC#1049-6 "Pediatric Trauma Critical Care"
* HSLOC#1051-2 "Behavioral Health/Psych Ward"
* HSLOC#1052-0 "Burn Ward"
* HSLOC#1053-8 "Ear, Nose, Throat Ward"
* HSLOC#1054-6 "Gastrointestinal Ward"
* HSLOC#1055-3 "Genitourinary Ward"
* HSLOC#1056-1 "Gerontology Ward"
* HSLOC#1057-9 "Gynecology Ward"
* HSLOC#1058-7 "Labor and Delivery Ward"
* HSLOC#1059-5 "Labor, Delivery, Recovery, Postpartum Suite"
* HSLOC#1060-3 "Medical Ward"
* HSLOC#1061-1 "Medical-Surgical Ward"
* HSLOC#1062-9 "Neurology Ward"
* HSLOC#1063-7 "Neurosurgical Ward"
* HSLOC#1064-5 "Ophthalmology Ward"
* HSLOC#1065-2 "Orthopedic Ward"
* HSLOC#1066-0 "Orthopedic Trauma Ward"
* HSLOC#1067-8 "Plastic Surgery Ward"
* HSLOC#1068-6 "Postpartum Ward"
* HSLOC#1069-4 "Pulmonary Ward"
* HSLOC#1070-2 "Rehabilitation Ward (within Acute Care Hospital)"
* HSLOC#1071-0 "Stroke (Acute) Ward"
* HSLOC#1072-8 "Surgical Ward"
* HSLOC#1073-6 "Vascular Surgery Ward"
* HSLOC#1075-1 "Adolescent Behavioral Hefalth Ward"
* HSLOC#1076-9 "Pediatric Medical Ward"
* HSLOC#1077-7 "Pediatric Behavioral Health Ward"
* HSLOC#1078-5 "Pediatric Burn Ward"
* HSLOC#1079-3 "Pediatric Ear, Nose, Throat Ward"
* HSLOC#1080-1 "Pediatric Genitourinary Ward"
* HSLOC#1081-9 "Pediatric Medical-Surgical Ward"
* HSLOC#1082-7 "Pediatric Neurology Ward"
* HSLOC#1083-5 "Pediatric Neurosurgical Ward"
* HSLOC#1084-3 "Pediatric Orthopedic Ward"
* HSLOC#1085-0 "Pediatric Rehabilitation Ward (within Acute Care Hospital)"
* HSLOC#1086-8 "Pediatric Surgical Ward"
* HSLOC#1091-8 "Pediatric Dialysis Specialty Care Area"
* HSLOC#1092-6 "Solid Organ Transplant Specialty Care Area"
* HSLOC#1093-4 "Pediatric Solid Organ Transplant Specialty Care Area"
* HSLOC#1095-9 "Cesarean Section Room/Suite"
* HSLOC#1096-7 "Operating Room/Suite"
* HSLOC#1097-5 "Post-Anesthesia Care Unit/Recovery Room"
* HSLOC#1099-1 "Adult Step Down Unit"
* HSLOC#1100-7 "Pediatric Step Down Unit"
* HSLOC#1102-3 "Chronic Care Unit"
* HSLOC#1103-1 "Chronic Alzheimer's Unit"
* HSLOC#1104-9 "Chronic Behavioral Health/Psych Unit"
* HSLOC#1105-6 "Chronic Rehabilitation Unit"
* HSLOC#1106-4 "Assisted Living Area"
* HSLOC#1108-0 "Emergency Department"
* HSLOC#1109-8 "Pediatric Emergency Department"
* HSLOC#1110-6 "Allergy Clinic"
* HSLOC#1112-2 "Cardiac Rehabilitation Center"
* HSLOC#1113-0 "Cardiology Clinic"
* HSLOC#1115-5 "Dermatology Clinic"
* HSLOC#1116-3 "Diabetes-Endocrinology Clinic"
* HSLOC#1117-1 "Family Medicine Clinic"
* HSLOC#1118-9 "Gastrointestinal Clinic"
* HSLOC#1119-7 "Pediatric Gastrointestinal Clinic"
* HSLOC#1120-5 "Medical Clinic"
* HSLOC#1121-3 "Gynecology Clinic"
* HSLOC#1122-1 "Genetics Clinic"
* HSLOC#1123-9 "Neurology Clinic"
* HSLOC#1124-7 "Ophthalmology Clinic"
* HSLOC#1125-4 "Orthopedic Clinic"
* HSLOC#1126-2 "Ear, Nose, Throat Clinic"
* HSLOC#1127-0 "Pain Clinic"
* HSLOC#1128-8 "Pediatric Clinic"
* HSLOC#1129-6 "Pediatric Cardiology Center"
* HSLOC#1130-4 "Pediatric Dental Clinic"
* HSLOC#1131-2 "Pediatric Dermatology Clinic"
* HSLOC#1132-0 "Pediatric Diabetes-Endocrinology Clinic"
* HSLOC#1133-8 "Pediatric Orthopedic Clinic"
* HSLOC#1134-6 "Pediatric Scoliosis Clinic"
* HSLOC#1136-1 "Pediatric Hematology-Oncology Clinic"
* HSLOC#1137-9 "Pediatric Nephrology Clinic"
* HSLOC#1138-7 "Pediatric Rheumatology Clinic"
* HSLOC#1139-5 "Well Baby Clinic"
* HSLOC#1140-3 "Podiatry Clinic"
* HSLOC#1141-1 "Physician's Office"
* HSLOC#1142-9 "Rheumatology Clinic"
* HSLOC#1143-7 "Surgical Services Clinic"
* HSLOC#1144-5 "Wound Center"
* HSLOC#1145-2 "Behavioral Health Clinic"
* HSLOC#1146-0 "Pediatric Behavioral Health Clinic"
* HSLOC#1147-8 "Blood Collection Center"
* HSLOC#1148-6 "Continence Clinic"
* HSLOC#1149-4 "Ostomy Clinic"
* HSLOC#1150-2 "Dental Clinic"
* HSLOC#1151-0 "Occupational Health Clinic"
* HSLOC#1152-8 "Occupational Therapy Clinic"
* HSLOC#1153-6 "Outpatient Hemodialysis Clinic"
* HSLOC#1154-4 "HIV Clinic"
* HSLOC#1155-1 "Rehabilitation Clinic"
* HSLOC#1156-9 "Prenatal Clinic"
* HSLOC#1157-7 "Pulmonary Clinic"
* HSLOC#1158-5 "Speech Therapy Clinic"
* HSLOC#1159-3 "Wound Ostomy Continence Clinic"
* HSLOC#1160-1 "Urgent Care Center"
* HSLOC#1161-9 "Holistic Medicine Center"
* HSLOC#1162-7 "24-Hour Observation Area"
* HSLOC#1164-3 "Ventilator Dependent Unit"
* HSLOC#1165-0 "Inpatient Hospice"
* HSLOC#1169-2 "Post-Anesthesia Care Unit"
* HSLOC#1170-0 "School or Prison Infirmary"
* HSLOC#1171-8 "Jail Unit"
* HSLOC#1172-6 "School Infirmary"
* HSLOC#1174-2 "Mobile Emergency Services/EMS"
* HSLOC#1175-9 "Mobile MRI/CT"
* HSLOC#1176-7 "Mobile Blood Collection center"
* HSLOC#1178-3 "Transport Service"
* HSLOC#1179-1 "Pharmacy"
* HSLOC#1180-9 "Public Area in Facility"
* HSLOC#1181-7 "Physical Plant Operations Center"
* HSLOC#1182-5 "Housekeeping/Environmental Services"
* HSLOC#1183-3 "Laundry Room"
* HSLOC#1184-1 "Administrative Areas"
* HSLOC#1185-8 "Blood Bank"
* HSLOC#1186-6 "Central Sterile Supply"
* HSLOC#1187-4 "Central Trash Area"
* HSLOC#1188-2 "Facility Grounds"
* HSLOC#1189-0 "Morgue/Autopsy Room"
* HSLOC#1190-8 "Soiled Utility Area"
* HSLOC#1192-4 "Home Care"
* HSLOC#1194-0 "Home-based Hospice"
* HSLOC#1195-7 "Blood Collection (Blood Drive Campaign)"
* HSLOC#1196-5 "Specimen Collection Area (Community)"
* HSLOC#1198-1 "Dialysis Specialty Care Area"
* HSLOC#1200-5 "Hematology-Oncology Clinic"
* HSLOC#1202-1 "Physical Therapy Clinic"
* HSLOC#1203-9 "Interventional Radiology"
* HSLOC#1204-7 "Location outside facility"
* HSLOC#1205-4 "Antenatal Care Ward"
* HSLOC#1207-0 "Therapeutic Apheresis Clinic"
* HSLOC#1208-8 "Telemetry Ward"
* HSLOC#1209-6 "Treatment Room"
* HSLOC#1210-4 "Adult Mixed Acuity Unit"
* HSLOC#1211-2 "Pediatric Mixed Acuity Unit"
* HSLOC#1212-0 "Mixed Age Mixed Acuity Unit"
* HSLOC#1214-6 "Long Term Acute Care Pediatric Ward"
* HSLOC#1217-9 "Rehabilitation Ward (freestanding Inpatient Rehabilitation Facility)"
* HSLOC#1218-7 "Rehabilitation Pediatric Ward (freestanding Inpatient Rehabilitation Facility)"
* HSLOC#1220-3 "Long Term Acute Care Intensive Care Unit"
* HSLOC#1221-1 "Long Term Acute Care Ward"
* HSLOC#1222-9 "Long Term Acute Care Pediatric Intensive Care Unit"
* HSLOC#1223-7 "Oncology Medical Critical Care"
* HSLOC#1224-5 "Oncology Surgical Critical Care"
* HSLOC#1225-2 "Oncology Medical-Surgical Critical Care"
* HSLOC#1226-0 "Oncology Leukemia Ward"
* HSLOC#1227-8 "Oncology Step Down Unit"
* HSLOC#1228-6 "Oncology Lymphoma Ward"
* HSLOC#1229-4 "Oncology Leukemia-Lymphoma Ward"
* HSLOC#1230-2 "Oncology Solid Tumor Ward"
* HSLOC#1231-0 "Oncology Hematopoietic Stem Cell Transplant Ward"
* HSLOC#1232-8 "Oncology General Hematology-Oncology Ward"
* HSLOC#1233-6 "Oncology Pediatric Critical Care"
* HSLOC#1234-4 "Oncology Pediatric Hematopoietic Stem Cell Transplant Ward"
* HSLOC#1235-1 "Oncology Pediatric General Hematology-Oncology Ward"
* HSLOC#1236-9 "Oncology Mixed Acuity Unit (all ages)"
* HSLOC#1242-7 "Outpatient Operating Room/Suite (Attached)"
* HSLOC#1243-5 "Ambulatory Surgery Center"
* HSLOC#1244-3 "Outpatient Operating Room/Suite (Detached)"
* HSLOC#1245-0 "Ambulatory Surgery Recovery Room"
* HSLOC#1246-8 "Outpatient Ambulatory Pediatric Surgery Center"
* HSLOC#1247-6 "Outpatient Ambulatory Plastic Surgery Center"
* HSLOC#1248-4 "Pediatric Outpatient Operating Room/Suite (Attached)"
* HSLOC#1249-2 "Pediatric Outpatient Operating Room/Suite (Detached)"
* HSLOC#1254-2 "Long Term Care Facility Inpatient Hospice Unit"
* HSLOC#1255-9 "Long Term Care Facility Dementia Unit"
* HSLOC#1256-7 "Long Term Care Facility Psychiatric Unit"
* HSLOC#1257-5 "Long Term Care Facility Skilled Nursing-Short Term Rehabilitation Unit"
* HSLOC#1258-3 "Long Term Care Facility General Nursing Unit"
* HSLOC#1259-1 "Long Term Care Facility Ventilator Dependent Unit"
* HSLOC#1260-9 "Long Term Care Facility Bariatric Unit"
* HSLOC#1261-7 "Centralized Transfusion Service"
* HSLOC#1262-1 "Home Hemodialysis"
* HSLOC#1268-2 "Outpatient Hemodialysis Clinic - Acute Kidney Injury"

ValueSet: SARSCoV2Labs
Title: "SARS CoV2 Labs"
Description: "This Value Set identifies Lab tests related to detection of current or prior COVID-19 infection."
* ^experimental = true
* ^version = "20200417"
//* ^url = "http://cts.nlm.nih.gov/fhir/ValueSet/2.16.840.1.113762.1.4.1032.109"
* ^status = #active
* ^date = "2020-04-17T01:00:20-04:00"
* ^publisher = "MITRE Steward"
* ^copyright = "This material contains content from LOINC (http://loinc.org). LOINC is copyright © 1995-2020, Regenstrief Institute, Inc. and the Logical Observation Identifiers Names and Codes (LOINC) Committee and is available at no cost under the license at http://loinc.org/license. LOINC® is a registered United States trademark of Regenstrief Institute, Inc"
* LOINC#94307-6 "SARS-CoV-2 (COVID-19) N gene [Presence] in Unspecified specimen by Nucleic acid amplification using CDC primer-probe set N1"
* LOINC#94308-4 "SARS-CoV-2 (COVID-19) N gene [Presence] in Unspecified specimen by Nucleic acid amplification using CDC primer-probe set N2"
* LOINC#94309-2 "SARS-CoV-2 (COVID-19) RNA [Presence] in Unspecified specimen by NAA with probe detection"
* LOINC#94310-0 "SARS-like coronavirus N gene [Presence] in Unspecified specimen by NAA with probe detection"
* LOINC#94314-2 "SARS-CoV-2 (COVID-19) RdRp gene [Presence] in Unspecified specimen by NAA with probe detection"
* LOINC#94315-9 "SARS-related coronavirus E gene [Presence] in Unspecified specimen by NAA with probe detection"
* LOINC#94316-7 "SARS-CoV-2 (COVID-19) N gene [Presence] in Unspecified specimen by NAA with probe detection"
* LOINC#94500-6 "SARS-CoV-2 (COVID-19) RNA [Presence] in Respiratory specimen by NAA with probe detection"
* LOINC#94531-1 "SARS-CoV-2 (COVID-19) RNA panel - Respiratory specimen by NAA with probe detection"
* LOINC#94533-7 "SARS-CoV-2 (COVID-19) N gene [Presence] in Respiratory specimen by NAA with probe detection"
* LOINC#94534-5 "SARS-CoV-2 (COVID-19) RdRp gene [Presence] in Respiratory specimen by NAA with probe detection"
* LOINC#94558-4 "SARS-CoV-2 (COVID-19) Ag [Presence] in Respiratory specimen by Rapid immunoassay"
* LOINC#94559-2 "SARS-CoV-2 (COVID-19) ORF1ab region [Presence] in Respiratory specimen by NAA with probe detection"
* LOINC#94759-8 "SARS-CoV-2 (COVID-19) RNA [Presence] in Nasopharynx by NAA with probe detection"

ValueSet: SARSCoV2GeneticLabs
Title: "SARSCoV2 Genetic Labs"
Description: "This Value Set identifies Lab tests using gene-based testing instead of other methods (e.g., Antibody testing)"
* ^experimental = true
* ^version = "20200904"
* ^status = #draft
* ^publisher = "HL7"
* ^copyright = "This material contains content from LOINC (http://loinc.org). LOINC is copyright © 1995-2020, Regenstrief Institute, Inc. and the Logical Observation Identifiers Names and Codes (LOINC) Committee and is available at no cost under the license at http://loinc.org/license. LOINC® is a registered United States trademark of Regenstrief Institute, Inc"
* LOINC#94307-6 "SARS-CoV-2 (COVID-19) N gene [Presence] in Unspecified specimen by Nucleic acid amplification using CDC primer-probe set N1"
* LOINC#94308-4 "SARS-CoV-2 (COVID-19) N gene [Presence] in Unspecified specimen by Nucleic acid amplification using CDC primer-probe set N2"
* LOINC#94309-2 "SARS-CoV-2 (COVID-19) RNA [Presence] in Unspecified specimen by NAA with probe detection"
* LOINC#94310-0 "SARS-like coronavirus N gene [Presence] in Unspecified specimen by NAA with probe detection"
* LOINC#94314-2 "SARS-CoV-2 (COVID-19) RdRp gene [Presence] in Unspecified specimen by NAA with probe detection"
* LOINC#94315-9 "SARS-related coronavirus E gene [Presence] in Unspecified specimen by NAA with probe detection"
* LOINC#94316-7 "SARS-CoV-2 (COVID-19) N gene [Presence] in Unspecified specimen by NAA with probe detection"
* LOINC#94500-6 "SARS-CoV-2 (COVID-19) RNA [Presence] in Respiratory specimen by NAA with probe detection"
* LOINC#94533-7 "SARS-CoV-2 (COVID-19) N gene [Presence] in Respiratory specimen by NAA with probe detection"
* LOINC#94534-5 "SARS-CoV-2 (COVID-19) RdRp gene [Presence] in Respiratory specimen by NAA with probe detection"
* LOINC#94559-2 "SARS-CoV-2 (COVID-19) ORF1ab region [Presence] in Respiratory specimen by NAA with probe detection"

