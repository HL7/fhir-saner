## Related artifacts
* [CDC/NHSN COVID-19 Acute Care Module Home Page](https://www.cdc.gov/nhsn/acute-care-hospital/covid19/)
* [Facility - How to Upload COVID-19 CSV Data Files](https://www.cdc.gov/nhsn/pdfs/covid19/import-covid19-data-508.pdf)
* [NHSN COVID-19 Module Analysis Reports](https://www.cdc.gov/nhsn/pdfs/covid19/fac-analysis-qrg-508.pdf)
* [Instructions for Completion of the COVID-19 Healthcare Supply Pathway (CDC 57.132)](https://www.cdc.gov/nhsn/pdfs/covid19/57.132-toi-508.pdf)
* [Healthcare Supply Pathway Form](https://www.cdc.gov/nhsn/pdfs/covid19/57.132-covid19-sup-blank-p.pdf)
* [CDC/NHSN COVID-19 Acute Care Healthcare Supply Reporting CSV File Template](https://www.cdc.gov/nhsn/pdfs/covid19/facility-import-supplies.csv)

## Group Definitions
<table>
<thead>
<tr><th>Group Code</th><th>Population Code</th><th>System</th></tr>
</thead>
<tbody>
<tr><td>Ventilators</td><td><nobr/></td><td>http://hl7.org/fhir/us/saner/CodeSystem/MeasureGroupSystem</td></tr>
<tr><td><nobr/></td><td>ventsupply</td><td>http://hl7.org/fhir/us/saner/CodeSystem/MeasurePopulationSystem</td></tr>
<tr><td><nobr/></td><td>ventreuse</td><td>http://hl7.org/fhir/us/saner/CodeSystem/MeasurePopulationSystem</td></tr>
<tr><td><nobr/></td><td>ventobtain</td><td>http://hl7.org/fhir/us/saner/CodeSystem/MeasurePopulationSystem</td></tr>
<tr><td>N95Masks</td><td><nobr/></td><td>http://hl7.org/fhir/us/saner/CodeSystem/MeasureGroupSystem</td></tr>
<tr><td><nobr/></td><td>n95masksupply</td><td>http://hl7.org/fhir/us/saner/CodeSystem/MeasurePopulationSystem</td></tr>
<tr><td><nobr/></td><td>n95maskreuse</td><td>http://hl7.org/fhir/us/saner/CodeSystem/MeasurePopulationSystem</td></tr>
<tr><td><nobr/></td><td>n95maskobtain</td><td>http://hl7.org/fhir/us/saner/CodeSystem/MeasurePopulationSystem</td></tr>
<tr><td>OtherRespirators</td><td><nobr/></td><td>http://hl7.org/fhir/us/saner/CodeSystem/MeasureGroupSystem</td></tr>
<tr><td><nobr/></td><td>othrespsupply</td><td>http://hl7.org/fhir/us/saner/CodeSystem/MeasurePopulationSystem</td></tr>
<tr><td><nobr/></td><td>othrespreuse</td><td>http://hl7.org/fhir/us/saner/CodeSystem/MeasurePopulationSystem</td></tr>
<tr><td><nobr/></td><td>othrespobtain</td><td>http://hl7.org/fhir/us/saner/CodeSystem/MeasurePopulationSystem</td></tr>
<tr><td>SurgicalMasks</td><td><nobr/></td><td>http://hl7.org/fhir/us/saner/CodeSystem/MeasureGroupSystem</td></tr>
<tr><td><nobr/></td><td>surgmasksupply</td><td>http://hl7.org/fhir/us/saner/CodeSystem/MeasurePopulationSystem</td></tr>
<tr><td><nobr/></td><td>surgmaskreuse</td><td>http://hl7.org/fhir/us/saner/CodeSystem/MeasurePopulationSystem</td></tr>
<tr><td><nobr/></td><td>surgmaskobtain</td><td>http://hl7.org/fhir/us/saner/CodeSystem/MeasurePopulationSystem</td></tr>
<tr><td>EyeProtection</td><td><nobr/></td><td>http://hl7.org/fhir/us/saner/CodeSystem/MeasureGroupSystem</td></tr>
<tr><td><nobr/></td><td>shieldsupply</td><td>http://hl7.org/fhir/us/saner/CodeSystem/MeasurePopulationSystem</td></tr>
<tr><td><nobr/></td><td>shieldreuse</td><td>http://hl7.org/fhir/us/saner/CodeSystem/MeasurePopulationSystem</td></tr>
<tr><td><nobr/></td><td>shieldobtain</td><td>http://hl7.org/fhir/us/saner/CodeSystem/MeasurePopulationSystem</td></tr>
<tr><td>Gown</td><td><nobr/></td><td>http://hl7.org/fhir/us/saner/CodeSystem/MeasureGroupSystem</td></tr>
<tr><td><nobr/></td><td>gownsupply</td><td>http://hl7.org/fhir/us/saner/CodeSystem/MeasurePopulationSystem</td></tr>
<tr><td><nobr/></td><td>gownreuse</td><td>http://hl7.org/fhir/us/saner/CodeSystem/MeasurePopulationSystem</td></tr>
<tr><td><nobr/></td><td>gownobtain</td><td>http://hl7.org/fhir/us/saner/CodeSystem/MeasurePopulationSystem</td></tr>
<tr><td>Glove</td><td><nobr/></td><td>http://hl7.org/fhir/us/saner/CodeSystem/MeasureGroupSystem</td></tr>
<tr><td><nobr/></td><td>glovesupply</td><td>http://hl7.org/fhir/us/saner/CodeSystem/MeasurePopulationSystem</td></tr>
<tr><td><nobr/></td><td>glovereuse</td><td>http://hl7.org/fhir/us/saner/CodeSystem/MeasurePopulationSystem</td></tr>
<tr><td><nobr/></td><td>gloveobtain</td><td>http://hl7.org/fhir/us/saner/CodeSystem/MeasurePopulationSystem</td></tr>
</tbody>
</table>

## Field Definitions
<table>
<thead>
<tr><th>Field Name</th><th>Title</th><th>Description</th></tr>
</thead>
<tbody>
<tr><td>gloveobtain</td><td>Gloves - Able to Obtain</td><td>Gloves - Are you able to obtain this item? If you have placed an order but are not able to have that order filled, please answer NO.</td></tr>
<tr><td>glovereuse</td><td>Gloves - Reusing or Extending Use</td><td>Gloves - Are you currently reusing the item or implementing extended use?</td></tr>
<tr><td>glovesupply</td><td>Gloves - On-hand Supply</td><td>Gloves - Please answer based on your organization’s best estimation for the supply of this item.</td></tr>
<tr><td>gownobtain</td><td>Gowns (single use) - Able to Obtain</td><td>Gowns (single use) - Are you able to obtain this item? If you have placed an order but are not able to have that order filled, please answer NO.</td></tr>
<tr><td>gownreuse</td><td>Gowns (single use) - Reusing or Extending Use</td><td>Gowns (single use) - Are you currently reusing the item or implementing extended use?</td></tr>
<tr><td>gownsupply</td><td>Gowns (single use) - On-hand Supply</td><td>Gowns (single use) - Please answer based on your organization’s best estimation for the supply of this item.</td></tr>
<tr><td>n95maskobtain</td><td>N95 masks - Able to Obtain</td><td>N95 masks - Are you able to obtain this item? If you have placed an order but are not able to have that order filled, please answer NO.</td></tr>
<tr><td>n95maskreuse</td><td>N95 masks - Reusing or Extending Use</td><td>N95 masks - Are you currently reusing the item or implementing extended use?</td></tr>
<tr><td>n95masksupply</td><td>N95 masks - On-hand Supply</td><td>N95 masks - Please answer based on your organization’s best estimation for the supply of this item.</td></tr>
<tr><td>othrespobtain</td><td>Other respirators including PAPRs - Able to Obtain</td><td>Other respirators such as PAPRs or elastomerics - Are you able to obtain this item? If you have placed an order but are not able to have that order filled, please answer NO.</td></tr>
<tr><td>othrespreuse</td><td>Other respirators including PAPRs - Reusing or Extending Use</td><td>Other respirators such as PAPRs or elastomerics - Are you currently reusing the item or implementing extended use?</td></tr>
<tr><td>othrespsupply</td><td>Other respirators including PAPRs - On-hand Supply</td><td>Other respirators such as PAPRs or elastomerics - Please answer based on your organization’s best estimation for the supply of this item.</td></tr>
<tr><td>shieldobtain</td><td>Eye protection including face shields or goggles - Able to Obtain</td><td>Eye protection including face shields or goggles - Are you able to obtain this item? If you have placed an order but are not able to have that order filled, please answer NO.</td></tr>
<tr><td>shieldreuse</td><td>Eye protection including face shields or goggles - Reusing or Extending Use</td><td>Eye protection including face shields or goggles - Are you currently reusing the item or implementing extended use?</td></tr>
<tr><td>shieldsupply</td><td>Eye protection including face shields or goggles - On-hand Supply</td><td>Eye protection including face shields or goggles - Please answer based on your organization’s best estimation for the supply of this item.</td></tr>
<tr><td>surgmaskobtain</td><td>Surgical masks - Able to Obtain</td><td>Surgical masks - Are you able to obtain this item? If you have placed an order but are not able to have that order filled, please answer NO.</td></tr>
<tr><td>surgmaskreuse</td><td>Surgical masks - Reusing or Extending Use</td><td>Surgical masks - Are you currently reusing the item or implementing extended use?</td></tr>
<tr><td>surgmasksupply</td><td>Surgical masks - On-hand Supply</td><td>Surgical masks - Please answer based on your organization’s best estimation for the supply of this item.</td></tr>
<tr><td>ventobtain</td><td>Ventilator supplies (any, including tubing) - Able to Obtain</td><td>Any supplies, including flow sensors, tubing, connectors, valves, filters, etc - Are you able to obtain this item? If you have placed an order but are not able to have that order filled, please answer NO.</td></tr>
<tr><td>ventreuse</td><td>Ventilator supplies (any, including tubing) - Reusing or Extending Use</td><td>Any supplies, including flow sensors, tubing, connectors, valves, filters, etc - Are you currently reusing the item or implementing extended use?</td></tr>
<tr><td>ventsupply</td><td>Ventilator supplies (any, including tubing) - On-hand Supply</td><td>Any supplies, including flow sensors, tubing, connectors, valves, filters, etc - Please answer based on your organization’s best estimation for the supply of this item.</td></tr>
</tbody>
</table>
