According to The American Heritage® Stedman's Medical Dictionary:
<blockquote>
<dl>
  <dt>measure <i>v.</i></dt>
  <dd>To ascertain the dimensions, quantity, or capacity of.</dd>
  <dd>To mark, lay out, or establish dimensions for by measuring.</dd>
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
Agency.  In late March of this year, the CDC [published a form]() for hospital reporting of
bed and ventilator utilization, and FEMA [communicated the data]() it expects to be
emailed on a daily basis from in-hospital laboratory testing facilities.



