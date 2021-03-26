The Situational Awareness for Novel Epidemic Response Implementation Guide enables transmission
of high level situational awareness information from inpatient facilities to centralized data repositories
to support the treatment of novel influenza-like illness.

The focus of this guide is to inform developers on how to create and use the essential FHIR
Resources necessary to support national and regional reporting efforts on COVID-19 to
public health officials.  It describes how to exchange measures supporting situation
awareness to enable appropriate response to healthcare emergencies affecting a population.  While the
immediate focus of this guide is in support of efforts to manage challenges related to the novel Coronavirus, the
guide is informed by prior efforts supporting the exchange of situation awareness data in support of other
emergencies (e.g., huricanes, wild fires, mass injury events, et cetera).

### Situational Awareness for Novel Epidemic Response
Situational Awareness has been the focus of attention in health IT circles well before the detection of potentially
pandemic flu strains in 2005.  Since then, a number of pandemics have emerged requiring some level of situational
awareness to support responses by public health agencies.

2006
: Bird Flu (H5N1)

2009
: Swine Flu (H1N1)

2012
: Middle East Respiratory Syndrome (MERS)

2013
: Another form of Bird Flu (H7N9)

2019
: COVID-19 (SARS-Cov-2)

Situational Data Needs of Public Health
Key situational data needed by public health has remained relatively consistent and well established over this time, and is to support awareness of:

1.  Local, Regional and National case rates and trends
2.  Bed availability for treatment
3.  Other resources availability for treatment
  * Staff
  * Medications
  * Immunizations
  * Medical Equipment (e.g., Respirators, N95 Masks)
  * Supplies (e.g., Cleaning Supplies, Facemasks)

### Situational Awareness
Situational awareness represents an understanding of what resources are available or needed,
where, and when, so that decisions can be made about allocating resources where needed, or moving resources
or those in need of them to the appropriate locations so that those resources can be used to support emergency
response efforts.  Resources can include just about anything that can be used to support the effort, food,
medicine, supplies, people (with appropriate skills), equipment, utilities like water, power, et cetera. The key
mechanism by which this guide supports situation awareness is through communication of measures related to
essential elements of information needed to support emergency response activities.

#### Essential Elements of Information
The purpose of situation awareness measures is to collect these essential elements of information (EEI) used to support emergency
response. Briefly, EEIs are the data elements emergency response officials need in order to critical support decision making during
an emergency.  In the US, the Office of the Assistant Secretary of Preparedness and Response
[defines EEIs](https://www.phe.gov/Preparedness/planning/hpp/reports/Documents/hpp-pmi-guidance-2017.pdf#page=54) as:

> Essential Elements of Information (EEI)
> : Essential elements of information are discrete types of reportable public health or healthcare-related incident-specific knowledge communicated or received
> concerning a particular fact or circumstance, preferably reported in a standardized manner or format, which assists in generating situational awareness for
> decision-making purposes. EEI are often coordinated and agreed upon pre-incident (and communicated to local partners) as part of information collection request
> templates and emergency response playbooks.

This is a healthcare focused definition of EEIs, rather than a more general definition of the term, but the term EEEI is also used in other domains.  A more detailed
discussion of Essential Elements of Information addressing broader domain needs (including healthcare) can be found in
[Essential Elements of Information Publication Guidance](https://www.nisconsortium.org/portal/resources/bin/NISC_EEI_Publication_1426695387.pdf)
published by the National Information Sharing Consortium.

In the ideal world:

1. EEIs will be well defined and understood before a crisis occurs, but may need to evolve as a crisis evolves and more is understood about the emerging
situation.
2. Systems that have EEIs will be able to automatically collect and report it to organizations responsible for emergency response.
Time spent manually collecting and reporting data that is not automated often suffers in quality[^1].
3. New and changed EEI criteria can be automatically deployed, and those reporting systems can be rapidly updated to respond to changing information needs.


### Measure Reporting for Situational Awareness
This implementation guide expands the uses for [MeasureReport](https://hl7.org/fhir/R4/MeasureReport)
resource to report measures of situational awareness to regional and national agencies, including regional agencies
supporting public health or emergency preparedness and response, or national agencies such as the Centers for Disease Control (CDC)
and the Federal Emergency Management Agency in the US.

Measures developed using this profile need not be confined to a health system, they might also be applied to other kinds of facilities required to report
EEIs in support of emergency response (e.g., measures about essential workforce members, or the food distribution, or even different forms of housing).
Many of the principles of measurement will still apply even though the measurement is performed outside of the healthcare domain.

#### Measurement in HL7
For more than the last decade, HL7 and its members have been deeply involved in the evolution
of measurement standards for clinical quality reporting, from early efforts in developing the
[HL7 Version 3 Health Quality Measure Format](https://www.hl7.org/implement/standards/product_brief.cfm?product_id=97)
specification, to more recent efforts in the publication of the [HL7 FHIR Quality Measure (QM)](http://hl7.org/fhir/us/cqfmeasures/),
and the [DaVinci Data Exchange For Quality Measures (DEQM)](http://hl7.org/fhir/us/davinci-deqm/)
implementation guides. These guides provide excellent reference and background materials
for those interested in learning more about the terminology used in measurement.

According to The American Heritage® Stedman's Medical Dictionary:
<blockquote>
<dl>
<dt>
measure <i>v.</i>
</dt>
<dd>
To ascertain the dimensions, quantity, or capacity of.
</dd>
<dd>
To mark, lay out, or establish dimensions for by measuring.
</dd>
</dl>
</blockquote>

At its simplest, measurement is counting in units, and then doing some math with
the resulting count or to obtain a value that lets you do something useful.  The approach
used in this guide is the counting of HL7 FHIR resources matching criteria associated
to identify **populations** (of resources), and relate these populations in various ways
to express a measurement.  These measurements describe the capacity, availablity, average
service times, et cetera.

#### Example Situational Awareness Measures used in the US
In late March of 2020, the CDC [published a form](https://www.cdc.gov/nhsn/pdfs/covid19/57.130-covid19-pimhc-blank-p.pdf)
and [instructions](https://www.cdc.gov/nhsn/pdfs/covid19/57.130-toi-508.pdf) for hospital reporting of
bed and ventilator utilization, and FEMA [provided a spreadsheet](Template for Daily Hospital COVID-19 Reporting.xlsx) it expects to be
emailed on a daily basis from in-hospital laboratory testing facilities.  Examples of these documents are provided below.

<table><caption>Samples of requested data. Show for illustration, please use
official sources for reporting.</caption>
<tbody>
<tr>
  <td><img width='80%' src='Template-for-Daily-Hospital-COVID-19-Reporting.png'/></td>
  <td><img width='80%' src='57.130-covid19-pimhc-blank-p.png'/></td>
</tr>
</tbody>
</table>


#### Conceptual Model
Each of the entries in these spreadsheets or forms is measure or count of groups
of things such as available beds, ventilators, tests ordered, et cetera.  The completed
spreadsheet or form is a Measure Report.  Accompanying instructions describe (to a human)
what to include in a group.  A conceptual model of these artifacts appears below.

![Conceptual Model](ConceptualModel.svg)

The HL7 FHIR standard has similarly named resources that perform the same functions.
A more detailed model about how these are related follows.
* [MeasureReport](https://hl7.org/fhir/R4/MeasureReport)
* [Measure](https://hl7.org/fhir/R4/Measure)

![Model](Model.svg)

### Measurement Reporting Approach
The approach of this IG to measurement is to capture all measurements reported to a single
agency in a single FHIR MeasureReport resource, using multiple groups in the report for
each kind of measurement reported.  This approach is aligned with existing workflows associated with
automated systems for **recieving** measure data. The approach very much treats the MeasureReport
as if it were a report card (as one might receive from a school) deescribing how a location is doing
on all measured criteria, with each group within the MeasureReport reflecting one of the
"subject areas" being measured.

Unlike a report card, a Measure Report is not necessarily a grade or an evaluation of
how well a location is performing its function. The number of patients in the hospital due
to pandemic is not related to how well the hospital performs, and much more due to other
factors, such as the density of the local population, or the implementation of appropriate
responses to contain the pandemic that are outside the control of the location that is
being measured. These MeasureReport resources should be viewed not as a critique of a given
facility, rather, as an evaluation of the impact the pandemic is having upon a facility.

This is unlike typical workflows for clinical quality measurement, where measures are assessed
one measure at a time, and is reflected in the current structure of the MeasureReport resource.
There is some support in the MeasureReport to support composite measures reporting results
from more than one measure.  However, combining these subject areas into a single MeasureReport
results in data loss when the separate measures in the composite use a different measure approach.
This is due to the lack of an ability to express attributes of each Measured item at the group
level within the Measure. That issue is addressed by this guide by creating an extension (see [Measure
Group Attributes](profiles_and_extensions.html#supporting-datatype-profiles)) to allow topic,
scoring and type to be shifted from Measure to Measure.group. To simplify interpretation of Measure
by consumers, Measures created in this guide always include these extensions on Measure.group, even
if they are not strictly needed.

### Measures for Situational Awareness
Just as [quality reporting](https://www.hl7.org/fhir/clinicalreasoning-quality-reporting.html) defines
several types of measures, situational awareness measures also follow several common patterns. Examing the data being captured
for Situational Awareness during the COVID-19 crisis, this guide has identified the following types
of measures:

* Capacity or Utilization
* Current and Cumulative Event Counting (Event Growth)
* Queue Length
* Service Times
* Availability

These categories describe different ways of scoring of a measure and are included in the
[Public Health Measure Scoring](CodeSystem-PublicHealthMeasureScoring.html) coding system established by this guide.

#### Capacity and Utilization
A Capacity and Utilitization measure describes the current capacity and utilization of fixed assets for treatment,
and provides scores showing used and available capacity. It is a specialization of a
[Proportion Measure](https://www.hl7.org/fhir/R4/codesystem-measure-scoring.html#measure-scoring-proportion).
The total system capacity is the denominator for the measure. There can be exclusions from the denominator to
count resources that are temporarily unavailable for care for reasons other than being used for treatment. The
utilization component is the numerator. It describes the number of units in use for treatment. The availability
component is the numerator-complement which describes thee number of units available for use. The measure score
is computed as for a proportion measure.

The difference between is Proportion Measure and a Utilization measure is that in a proportion measure available
capacity must be inferred, however, in a Utilization measure, the available capacity is directly reported in
a measurement in the numerator-complement population of the measure.  This implementation guide defines the code for
the the numerator-complement population.

In this way, the MeasureReport resource reporting utilization can be directly queried through FHIR APIs for
available capacity to find a location capable of treating or caring for some number of patients (e.g., by available beds
or ventilators at a facility or within a region).

#### Event Growth
An event growth measure reports the number of events occuring during a time period (e.g., tests performed,
positive test results, new cases) over the cumulative total of events (e.g., total tests performed, total
positive results, or total cases) from some defined starting point.  The numerator is the number events occuring
during the period, and the denominator is the cumulative total of events. It represents the point in time rate
of growth during the measure period of events of interest.

This is simply another form of Proportion measure, since what is being counted in the numerator and denominator come from the
same initial population.

NOTE: The score for this measure group **shall** always range from 0 to 1, where 1 represents the highest rate of
cumulative growth.  If there were no prior event, the growth rate will be 1 in the first reporting period because the
number of total events is the same as the number of new events.  The number of total events never exceed the number of new
events becasue they are counted at the same point in time (new events is part of total events). When the number of new events
is 0, the measure score **shall** be reported as 0. Implementations failing to account for this may generate divide by zero
exceptions, or attempt to report NaN (Not a Number) values, which can result in errors elsewhere.

The [Covid Trends](https://aatishb.com/covidtrends/) site demonstrates use of this measure in a graph to show the
trajectory of confirmed cases. When plotted over time on a log-log scale, this kind of measure illustrates significant changes
in events with exponential rates of growth. An example plot is shown below:

![Graph of Covid Trends in the World as of July 25, 2020](CovidTrends.png)

#### Queue Length
A Queue Length measure is a cohort measure which reports the number of activities awaiting completion (e.g., patients in an overflow
area waiting for a bed, tests awaiting to be resulted, patients in a hospital awaiting discharge). Queue length usually represents
a measure of an unmet need. Queue length measures can be improved to become service time measures by capturing the total time waiting
for an completion of an activity, but this time may not be readily tracked, or queue length may be a sufficient signal of a problem
that needs to be addressed. The benefit of service time measures is that they can be compared betweeen facilities, whereas queue length
is not readily comparable but may be more readily computable.

#### Service Time
A Service Time measure is a specialization of the ratio meausure which reports the total time taken to provide a service
(e.g., wait times, length of stay, time to report a lab test result) for all events in the numerator, and the total number
of events (e.g., services such as inpatient stays, tests performed) provided in the denominator. This is a ratio measure because
the units differ in the numerator and denominator, where the events being counted in the numerator are essentially clock ticks in
some unit (e.g., days, hours, minutes).  The measure score is the average service time. These are generally process measures,
describing the efficacy of the process being measured (e.g., treatment, testing).

Service time measures must report both the total number of events (the denominator) and the total time of service (the numerator)
to support aggregation over time. Consider an organization reporting measures about time taken to produce test result, where
one site results tests in 22.0 hours, and another site reports tests in 12.0 hours.  The rate across both sites together cannot be
computed if the number of tests is not reported.  If the first site performed 100 tests, and the second performed 1000 tests, then
the rate across both sites will be different if the quantities of tests performed is swapped.  This is shown in the two tables below:

<table border='1' cellspacing='0' cols='5' rows='4' border='1'>
  <caption>Case 1: Site 1 reports on 100 tests, Site 2 on 1000</caption>
  <thead>
    <tr><th>Site</th><th>Average Rate</th><th>Tests Performed</th><th>Total Time</th></tr>
  </thead>
  <tbody>
    <tr><td>1</td><td>100</td><td> 2,200 hrs</td><td>22.0 hrs/result</td></tr>
    <tr><td>2</td><td>1000</td><td>12,000 hrs</td><td>12.0 hrs/result</td></tr>
    <tr><td>All</td><td>1100</td><td>14,200 hrs</td><td>12.9 hrs/result</td></tr>
  </tbody>
</table><br/>

<table border='1' cellspacing='0' cols='5' rows='4' border='1'>
  <caption>Case 2: Site 1 reports on 1000 tests, Site 2 on 100</caption>
  <thead>
    <tr><th>Site</th><th>Tests Performed</th><th>Total Time</th><th>Average Rate</th></tr>
  </thead>
  <tbody>
    <tr><td>1</td><td>1000</td><td>22,000 hrs</td><td>22.0 hrs/result</td></tr>
    <tr><td>2</td><td>100</td><td> 1,200 hrs</td><td>12.0 hrs/result</td></tr>
    <tr><td>All</td><td>1100</td><td>23,200 hrs</td><td>21.1 hrs/result</td></tr>
  </tbody>
</table>

#### Availability
Availability measures are subtypes of cohort measures which enable tracking of availability of
critical resources, generally consumables (e.g., PPE, medications, immunizations, oxygen, blood, IV fluids),
and can also report availability of staff to support facility operations (e.g., physicans, nurses,
other licensed providers, support and maintenance staff), or other resources (e.g., electricity, water)
or available facility services (e.g., emergency department, helipad, burn unit).

Availability measures are generally "yes/no" to indicate availability where a facility record
a measure value of 1 if sufficent quantity is available to meet demand, and 0 otherwise.  These
can be further stratified based on degree of availability (e.g., by days supply remaining).

Availability measures can also report whether conservation measures have been implemented
(e.g., N95 mask reuse after sterilization), and whether equivalent resupplies are readily available
using the same mechanism for recording yes/no answers.

A measure report for a single facility **shall** always have a value of 0 or 1 as the count for
an availability measure.  When unstratified, a 1 **shall** mean available, a 0 **shall** mean unavailable.
When stratified the count for each stratum **shall** always be 1 or 0, where a 1 **shall** mean the facility
meets the criteria for a specified stratum, and a 0 **shall** mean it does not.  There **shall** be at most
one stratum whose count is 1, and **should** be one stratum whose count is 1. The sum of values for all
strata **shall** be 0 or 1.

A measure report aggregating over multiple facilities or over reporting periods may have a value greater
than one (the sum of all count values for all aggregated reports).  The number "counts" the number of
facilities or time periods for which the identified resource is available, or within strata, the number
of facilities or time periods for which the stratification criteria were met.

### Measure Populations in Situation Awareness Measures
In addition to initial population, denominator, denominator-exclusions and numerators, situational awareness measures
may report other populations or population scores.  Unlike quality measures, situational awareness measures do not
use denominator exceptions.  This implementation guide defines four additional types of populations:

* Numerator Complement
* Duration
* Duration Squared
* Supporting

These population types are defined in the [Measure Populations](CodeSystem-MeasurePopulationSystem.html) code system.

#### Numerator Complement
The numerator complement is the quantity in the denominator that match neither the numerator the numerator exclusion criteria.
Summed together, the numerator, numerator-exclusion and numerator-complement must match the value of the
denominator - denominator-exclusion value.

In a capacity and utilization measure, the numerator-complement population represents available capacity. By enabling reporting
of available capacity in a measure report, the numerator-complement enables search for locations with available capacity meeting
a specific criteria (e.g., an ICU with 10 open beds, or a hospital with 3 available ventilators).

#### Duration
Duration is a measure-observation provided with time units representing the duration of an activity or event
(e.g. length of stay, time to admission, time for service).

#### Duration Squared
Like Duration, duration-squared is a measure-observation. It represents the sum of squares duration of an activity or event. This value can be used
to support computation of variance in time of service measures. Increases in variation over time represent areas where service times are changing, and measures
of variance allow for hypotheses testing about the distribution of measured events.

#### Supporting
A supporting population represents an intermediate computation helpful in defining a measure, but not needing to be reported.  It
may be used to compute common groups of artifacts which are needed to report other populations.

Supporting populations **should not** be reported in production measures, but may be reported when testing or under other
circumstances. A Measure Consumer that recieves a report containing a supporting population **should** simply ignore or perhaps
even discard it from the stored MeasureReport resource.  These are like extra subtotals in spreadsheets, helpful for computing
a final total, but not essential.

#### Specifying Population Criteria
The table below illustrates the populations that are required for computing a situation awareness measure.
Unlike quality measures, situation awareness measures do not require that an initial population be present
for all measure types. It is permitted, and may be helpful in measure computation, but it is not essential
for scoring or reporting.

<table rows='12'>
  <thead>
    <tr><th>MeasureType</th><th>Initial Population</th><th>Suppporing Population</th>
        <th>Denominator</th><th>Denominator Exclusion</th>
        <th>Numerator</th><th>Numerator Exclusion</th><th>Numerator Complement</th>
        <th>Duration</th><th>Duration Squared</th>
    </tr>
  </thead>
  <tbody>
    <tr><td>Capacity and Utilization</td>
      <td>O</td><td>O</td>
      <td>R</td><td>O</td>
      <td>R</td><td>O</td><td>R</td>
      <td>NP</td><td>NP</td>
    </tr>
    <tr><td>Event Growth</td>
      <td>O</td><td>O</td>
      <td>R</td><td>O</td>
      <td>R</td><td>O</td><td>NP</td>
      <td>NP</td><td>NP</td>
    </tr>
    <tr><td>Queue Length</td>
      <td>R</td><td>O</td>
      <td>NP</td><td>NP</td>
      <td>NP</td><td>NP</td><td>NP</td>
      <td>NP</td><td>NP</td>
    </tr>
    <tr><td>Service Time</td>
      <td>O</td><td>O</td>
      <td>R</td><td>O</td>
      <td>NP</td><td>NP</td><td>NP</td>
      <td>R</td><td>O</td>
    </tr>
    <tr><td>Availability</td>
      <td>O</td><td>O</td>
      <td>R</td><td>O</td>
      <td>R</td><td>O</td><td>R</td>
      <td>NP</td><td>NP</td>
    </tr>
  </tbody>
</table>

### Optionality in Situation Awareness Measures
A measure may contain sections for reporting that are either not appropriate or not applicable for all settings.
In order to pass FHIR Validation, a MeasureReport that references a Measure must however, include all components
of the measure.  At the time of this publication, these constraints are hard coded into FHIR Validation tools, and
are not generally available in computable form. When reporting these elements, the
[data-absent-reason](https://www.hl7.org/fhir/extension-data-absent-reason.html) extension can be used in the
MeasureReport resource for these elements to indicate that they are not available.

To enable measure developers to specify which measure components are required, recommended or optional
this IG defines the [Measure Expectation](StructureDefinition-measure-expectation.html) extension. This
extension operates identically to the https://www.hl7.org/fhir/extension-capabilitystatement-expectation.html
extension, but can be applied to Measure resources.

The [Profiles and Extensions](profiles_and_extensions.html) page enumerates the various profiles and extensions
created for this guide.
