
<p>This measure demonstrates reporting about Daily Laboratory Testing at a inpatient test sites capturing laboratory orders and results daily increase and cumulative counts.</p>

## Related artifacts
* [Trump Administration Engages America’s Hospitals in Unprecedented Data Sharing](https://www.cms.gov/newsroom/press-releases/trump-administration-engages-americas-hospitals-unprecedented-data-sharing)
* [Text of a Letter from the Vice President to Hospital Administrators](https://www.whitehouse.gov/briefings-statements/text-letter-vice-president-hospital-administrators/)
* [Administration Requests Hospitals Report Daily on COVID-19 Testing Results, Bed and Ventilator](https://www.aha.org/advisory/2020-03-30-coronavirus-update-administration-requests-hospitals-report-daily-covid-19)
* [Template for Daily Hospital COVID-19 Reporting.xlsx](https://images.magnetmail.net/images/clients/AHA_MCHF/attach/2020/March/0330/Template_for_Daily_Hospital_COVID19_Reporting.xlsx)

## Group Definitions
<table>
<thead>
<tr><th>Group Code</th><th>Population Code</th><th>System</th></tr>
</thead>
<tbody>
<tr><td>positiveIncreasePercent</td><td><nobr/></td><td>http://hl7.org/fhir/us/saner/CodeSystem/MeasureGroupSystem</td></tr>
<tr><td><nobr/></td><td>totalOrdersIncrease<br/>initial-population</td><td>http://hl7.org/fhir/us/saner/CodeSystem/MeasurePopulationSystem<br/>http://terminology.hl7.org/CodeSystem/measure-population</td></tr>
<tr><td><nobr/></td><td>totalTestResultsIncrease<br/>denominator</td><td>http://hl7.org/fhir/us/saner/CodeSystem/MeasurePopulationSystem<br/>http://terminology.hl7.org/CodeSystem/measure-population</td></tr>
<tr><td><nobr/></td><td>positiveIncrease<br/>numerator</td><td>http://hl7.org/fhir/us/saner/CodeSystem/MeasurePopulationSystem<br/>http://terminology.hl7.org/CodeSystem/measure-population</td></tr>
<tr><td>positivePercent</td><td><nobr/></td><td>http://hl7.org/fhir/us/saner/CodeSystem/MeasureGroupSystem</td></tr>
<tr><td><nobr/></td><td>totalOrders<br/>initial-population</td><td>http://hl7.org/fhir/us/saner/CodeSystem/MeasurePopulationSystem<br/>http://terminology.hl7.org/CodeSystem/measure-population</td></tr>
<tr><td><nobr/></td><td>totalTestResults<br/>denominator</td><td>http://hl7.org/fhir/us/saner/CodeSystem/MeasurePopulationSystem<br/>http://terminology.hl7.org/CodeSystem/measure-population</td></tr>
<tr><td><nobr/></td><td>positive<br/>numerator</td><td>http://hl7.org/fhir/us/saner/CodeSystem/MeasurePopulationSystem<br/>http://terminology.hl7.org/CodeSystem/measure-population</td></tr>
<tr><td><nobr/></td><td>rejected<br/>denominator-exclusion</td><td>http://hl7.org/fhir/us/saner/CodeSystem/MeasurePopulationSystem<br/>http://terminology.hl7.org/CodeSystem/measure-population</td></tr>
</tbody>
</table>

## Field Definitions
<table>
<thead>
<tr><th>Field Name</th><th>Title</th><th>Description</th></tr>
</thead>
<tbody>
<tr><td>positive</td><td>Cumulative Positive COVID-19 Tests</td><td>All positive test results released to date.</td></tr>
<tr><td>positiveIncrease</td><td>New Positive COVID-19 Tests</td><td>Midnight to midnight cutoff, positive test results released on the previous date queried.</td></tr>
<tr><td>rejected</td><td>Cumulative Specimens Rejected</td><td>All specimens rejected for testing to date.</td></tr>
<tr><td>totalOrders</td><td>Cumulative Diagnostic Tests Ordered/Received</td><td>All tests ordered to date.</td></tr>
<tr><td>totalOrdersIncrease</td><td>New Diagnostic Tests Ordered/Received</td><td>Midnight to midnight cutoff, tests ordered on previous date queried.</td></tr>
<tr><td>totalTestResults</td><td>Cumulative Tests Performed</td><td>All tests with results released to date.</td></tr>
<tr><td>totalTestResultsIncrease</td><td>New Tests Resulted</td><td>Midnight to midnight cutoff, test results released on previous date queried.</td></tr>
</tbody>
</table>