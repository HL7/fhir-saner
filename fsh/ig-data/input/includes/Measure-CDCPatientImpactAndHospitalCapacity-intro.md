<p>This measure demonstrates reporting on bed availability and use at a facility location based on CDC/NHSN reporting requirements.</p>

## Related artifacts
* [CDC/NHSN COVID-19 Acute Care Module Home Page](https://www.cdc.gov/nhsn/acute-care-hospital/covid19/)
* [Facility - How to Upload COVID-19 CSV Data Files](https://www.cdc.gov/nhsn/pdfs/covid19/import-covid19-data-508.pdf)
* [NHSN COVID-19 Module Analysis Reports](https://www.cdc.gov/nhsn/pdfs/covid19/fac-analysis-qrg-508.pdf)
* [Instructions for Completion of the COVID-19 Patient Impact and Hospital Capacity Pathway (CDC 57.130)](https://www.cdc.gov/nhsn/pdfs/covid19/57.130-toi-508.pdf)
* [Patient Impact and Hospital Capacity Pathway Form](https://www.cdc.gov/nhsn/pdfs/covid19/57.130-covid19-pimhc-blank-p.pdf)
* [CDC/NHSN COVID-19 Acute Care Patient Impact Reporting CSV File Template](https://www.cdc.gov/nhsn/pdfs/covid19/covid19-test-csv-import.csv)

## Definitions
* Ventilator:
Any device used to support, assist or control respiration (inclusive of the weaning period) through the application of positive
pressure to the airway when delivered via an artificial airway, specifically an oral/nasal endotracheal or tracheostomy tube.
Note: Ventilation and lung expansion devices that deliver positive pressure to the airway (for example: CPAP, BiPAP, bi-level, IPPB and
PEEP) via non-invasive means (for example: nasal prongs, nasal mask, full face mask, total mask, etc.) are not considered ventilators
unless positive pressure is delivered via an artificial airway (oral/nasal endotracheal or tracheostomy tube).
* Beds:
Baby beds in mom's room count as 1 bed, even if there are multiple baby beds
Follow-up in progress if staffed is less than licensed.
Total includes all beds, even if with surge beds it exceeds licensed beds.
* ICU beds:
Include NICU (from CDC Webinar 31-Mar-2020) (outstanding question on burn unit)

## Group Definitions
<table>
<thead>
<tr><th>Group Code</th><th>Population Code</th><th>System</th></tr>
</thead>
<tbody>
<tr><td>Beds</td><td><nobr/></td><td>http://hl7.org/fhir/us/saner/CodeSystem/MeasureGroupSystem</td></tr>
<tr><td><nobr/></td><td>numTotBeds<br/>initial-population</td><td>http://hl7.org/fhir/us/saner/CodeSystem/MeasurePopulationSystem<br/>http://terminology.hl7.org/CodeSystem/measure-population</td></tr>
<tr><td><nobr/></td><td>numbeds</td><td>http://hl7.org/fhir/us/saner/CodeSystem/MeasurePopulationSystem</td></tr>
<tr><td><nobr/></td><td>numBedsOcc</td><td>http://hl7.org/fhir/us/saner/CodeSystem/MeasurePopulationSystem</td></tr>
<tr><td><nobr/></td><td>numICUBeds</td><td>http://hl7.org/fhir/us/saner/CodeSystem/MeasurePopulationSystem</td></tr>
<tr><td><nobr/></td><td>numICUBedsOcc</td><td>http://hl7.org/fhir/us/saner/CodeSystem/MeasurePopulationSystem</td></tr>
<tr><td>Ventilators</td><td><nobr/></td><td>http://hl7.org/fhir/us/saner/CodeSystem/MeasureGroupSystem</td></tr>
<tr><td><nobr/></td><td>numVent<br/>initial-population</td><td>http://hl7.org/fhir/us/saner/CodeSystem/MeasurePopulationSystem<br/>http://terminology.hl7.org/CodeSystem/measure-population</td></tr>
<tr><td><nobr/></td><td>numVentUse</td><td>http://hl7.org/fhir/us/saner/CodeSystem/MeasurePopulationSystem</td></tr>
<tr><td>Encounters</td><td><nobr/></td><td>http://hl7.org/fhir/us/saner/CodeSystem/MeasureGroupSystem</td></tr>
<tr><td><nobr/></td><td>numC19HospPats</td><td>http://hl7.org/fhir/us/saner/CodeSystem/MeasurePopulationSystem</td></tr>
<tr><td><nobr/></td><td>numC19MechVentPats</td><td>http://hl7.org/fhir/us/saner/CodeSystem/MeasurePopulationSystem</td></tr>
<tr><td><nobr/></td><td>numC19HOPats</td><td>http://hl7.org/fhir/us/saner/CodeSystem/MeasurePopulationSystem</td></tr>
<tr><td><nobr/></td><td>numC19OverflowPats</td><td>http://hl7.org/fhir/us/saner/CodeSystem/MeasurePopulationSystem</td></tr>
<tr><td><nobr/></td><td>numC19OFMechVentPats</td><td>http://hl7.org/fhir/us/saner/CodeSystem/MeasurePopulationSystem</td></tr>
<tr><td><nobr/></td><td>numC19Died</td><td>http://hl7.org/fhir/us/saner/CodeSystem/MeasurePopulationSystem</td></tr>
<tr><td><nobr/></td><td>numc19confnewadm</td><td>http://hl7.org/fhir/us/saner/CodeSystem/MeasurePopulationSystem</td></tr>
<tr><td><nobr/></td><td>numc19suspnewadm</td><td>http://hl7.org/fhir/us/saner/CodeSystem/MeasurePopulationSystem</td></tr>
<tr><td><nobr/></td><td>numc19honewpats</td><td>http://hl7.org/fhir/us/saner/CodeSystem/MeasurePopulationSystem</td></tr>
<tr><td><nobr/></td><td>numc19prevdied</td><td>http://hl7.org/fhir/us/saner/CodeSystem/MeasurePopulationSystem</td></tr>
</tbody>
</table>

## Field Definitions
<table>
<thead>
<tr><th>Field Name</th><th>Title</th><th>Description</th></tr>
</thead>
<tbody>
<tr><td>numbeds</td><td>Hospital Inpatient Beds</td><td>Inpatient beds, including all staffed, licensed, and overflow(surge) beds used for inpatients.</td></tr>
<tr><td>numBedsOcc</td><td>Hospital Inpatient Bed Occupancy</td><td>Total number of staffed inpatient beds that are occupied.</td></tr>
<tr><td>numc19confnewadm</td><td>Previous Day’s Admissions with Confirmed COVID-19</td><td>New patients admitted to an inpatient bed who had confirmed COVID-19 at the time of admission.</td></tr>
<tr><td>numC19Died</td><td>COVID-19 Patient Deaths - Total for Calendar Dates 05/14/2020 and PRIOR</td><td>Patients with suspected or confirmed COVID-19 who died in the hospital, ED, or any overflow location on Calendar Dates 05/14/2020 and PRIOR.</td></tr>
<tr><td>numc19honewpats</td><td>New Hospital Onset</td><td>Current inpatients hospitalized for a condition other than COVID-19 with onset of suspected or confirmed COVID-19 on the previous day and the previous day is fourteen or more days since admission.</td></tr>
<tr><td>numC19HOPats</td><td>Hospital Onset COVID-19 Patients</td><td>Patients hospitalized in an NHSN inpatient care location with onset of suspected or confirmed COVID - 19 14 or more days after hospitalization.</td></tr>
<tr><td>numC19HospPats</td><td>Hospitalized COVID-19 Patients</td><td>Patients currently hospitalized in an inpatient care location who have suspected or confirmed COVID-19.</td></tr>
<tr><td>numC19MechVentPats</td><td>Hospitalized and Ventilated COVID-19 Patients</td><td>Patients hospitalized in an NHSN inpatient care location who have suspected or confirmed COVID-19 and are on a mechanical ventilator.</td></tr>
<tr><td>numC19OFMechVentPats</td><td>ED/Overflow and Ventilated COVID-19 Patients</td><td>Patients with suspected or confirmed COVID - 19 who are in the ED or any overflow location awaiting an inpatient bed and on a mechanical ventilator.</td></tr>
<tr><td>numC19OverflowPats</td><td>ED/Overflow COVID-19 Patients</td><td>Patients with suspected or confirmed COVID-19 who are in the ED or any overflow location awaiting an inpatient bed.</td></tr>
<tr><td>numc19prevdied</td><td>Previous Day's Deaths</td><td> Patients with suspected or confirmed COVID-19 who died in the hospital, ED, or any overflow location on the previous calendar day.</td></tr>
<tr><td>numc19suspnewadm</td><td>Previous Day’s Admissions with Suspected COVID-19</td><td>New patients admitted to an inpatient bed who had suspected COVID-19 at the time of admission.</td></tr>
<tr><td>numICUBeds</td><td>ICU Beds</td><td>Total number of staffed inpatient intensive care unit (ICU) beds.</td></tr>
<tr><td>numICUBedsOcc</td><td>ICU Bed Occupancy</td><td>Total number of staffed inpatient ICU beds that are occupied.</td></tr>
<tr><td>numTotBeds</td><td>All Hospital Beds</td><td>Total number of all Inpatient and outpatient beds, including all staffed, ICU, licensed, and overflow(surge) beds used for inpatients or outpatients.</td></tr>
<tr><td>numVent</td><td>Mechanical Ventilators</td><td>Total number of ventilators available.</td></tr>
<tr><td>numVentUse</td><td>Mechanical Ventilators in Use</td><td>Total number of ventilators in use.</td></tr>
</tbody>
</table>