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
the resulting count or to obtain a value that lets you do something useful.

The focus of this guide is to inform developers on how to create and use the essential FHIR
Resources necessary to support national and regional reporting efforts on COVID-19 to
public health officials in the United States.

Over the last decade, HL7 and its members have been deeply involved in the evolution
of quality measurement, from early efforts in developing the [HL7 Version 3 Health Quality Measure Format](https://www.hl7.org/implement/standards/product_brief.cfm?product_id=97)
specification, to more recent efforts in the publication of the [HL7 FHIR Quality Measure (QM)](http://hl7.org/fhir/us/cqfmeasures/),
and the [DaVinci Data Exchange For Quality Measures (DEQM)](http://hl7.org/fhir/us/davinci-deqm/)
implementation guides. These guides provide excellent reference and background materials
for those interested in learning more about the terminology used in measurement.

This implementation guide uses the [MeasureReport](https://hl7.org/fhir/R4/MeasureReport)
resource to report measures to regional and federal agencies, including state departments
of public health, the Centers for Disease Control (CDC) and the Federal Emergency Management
Agency.  In late March of this year, the CDC [published a form](https://www.cdc.gov/nhsn/pdfs/covid19/57.130-covid19-pimhc-blank-p.pdf)
and [instructions](https://www.cdc.gov/nhsn/pdfs/covid19/57.130-toi-508.pdf) for hospital reporting of
bed and ventilator utilization, and FEMA [provided a spreadsheet](Template for Daily Hospital COVID-19 Reporting.xlsx) it expects to be
emailed on a daily basis from in-hospital laboratory testing facilities.  Examples of
these documents are provided below.

<table><caption>Samples of requested data. Show for illustration, please use
official sources for reporting.</caption>
<tbody>
<tr>
  <td><img width='80%' src='Template-for-Daily-Hospital-COVID-19-Reporting.png'/></td>
  <td><img width='80%' src='57.130-covid19-pimhc-blank-p.png'/></td>
</tr>
</tbody>
</table>

Each of the entries in these spreadsheets or forms is measure or count of groups
of things such as available beds, ventilators, tests ordered, et cetera.  The completed
spreadsheet or form is a Measure Report.  Accompanying instructions describe (to a human)
what to include in a group.  A conceptual model of these artifacts appears below.

![Conceptual Model](ConceptualModel.svg)

The HL7 FHIR standard has similarly named resources that perform the same functions.
A more detailed model about how these are related follows.
[MeasureReport](https://hl7.org/fhir/R4/MeasureReport)
[Measure](https://hl7.org/fhir/R4/Measure)
[Group](https://hl7.org/fhir/R4/Group)

![Model](Model.svg)

## Measurement Reporting Approach
The approach of The SANER IG to measure collection is to capture all measures reported to a single
agency in a single Measure, with multiple groups in the measure. This simplifies reporting, but
can cause data loss as a single report might combine a ratio, continuous-variable and
other measures, losing the ability to accurately describe the type of measure being reported.

That issue is addressed by creating an extension to allow topic, scoring and type to
be shifted from Measure to Measure.group. To simplify interpretation of Measure by consumers
the Measure will always include these extensions on Measure.group, even if they are
not strictly needed.  A tracker will be created (#TODO: Create Tracker) to suggest moving
these classifiers to group.

### Measures
* [All CDC/NHSN Reporting Measures](Measure-CDCReporting.json.html)
* [All FEMA Reporting Measures](Measure-FEMAReporting.json.html)

