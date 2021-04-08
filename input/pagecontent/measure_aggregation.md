There are four different ways to consolidate a collection of MeasureReport resources referencing a common Measure into an aggregated MeasureReport:
1. Consolidating data within a facility from multiple reporting agents.
2. Over time, e.g., consolidating daily reports into a weekly report,
3. Over a larger geographic location, e.g., consolidating reports for all hospitals in a city or county, or
4. Consolidating data over both time and geography, e.g., consolidating all daily reports for all hospitals in a county for a week.

All MeasureReport resources being consolidated must reference a common Measure in MeasureReport.measure.

The process to perform this aggregation is the same for all of the above cases, and is defined in more detail in the
[Aggregate operation](http://hl7.org/fhir/uv/saner/OperationDefinition-MeasureReport-aggregate.html). That operation
can be used by an Intermediary to consolidate MeasureReport resources into an aggregated MeasureReport for further processing.

The MeasureReport resource can be used to report on situational awareness not just for individual facilities,
but also on broader definitions of a locations. Geographic regions such as cities, towns, counties, states,
provinces, territories, and other ad hoc geographic regions. They can also be used for reporting of non-geographically
identified groups (e.g., all facilities managed by the same organization).

Group reports by aggregation region. This implementation guide does not specify how these groupings are created, but there are several mechanisms
that might be used in an implementation:

1. Aggregate within a Facility to support consolidated reporting from multiple agents (e.g., information systems) within a facility for external reporting.
2. Aggregate by geolocation - When an implementation provides geographic coordinates, aggregates can be defined by polygons defining the set of geographic regions.
3. Aggregate by address - Some geographies can be aggregated by postal address.  Postal addresses identify some geopolitical boundaries, includeing
   * [Cities](http://www.hl7.org/fhir/datatypes-definitions.html#Address.city),
   * Counties or parishes (known as the [district](http://www.hl7.org/fhir/datatypes-definitions.html#Address.district) in the FHIR Address data type),
   * (States)[http://www.hl7.org/fhir/datatypes-definitions.html#Address.state],
   * (Country)[http://www.hl7.org/fhir/datatypes-definitions.html#Address.country], and
   * (Zip Code or Postal Code)[http://www.hl7.org/fhir/datatypes-definitions.html#Address.postalCode].
   * Provider or Hospital Service Areas or Referral Regions (see [Dartmouth Atlas](supporting_vocabulary.html#dartmouth) in Supporting Vocabulary).
4. Aggregate by a (List)[http://hl7.org/fhir/list.html] - A list of Location resources can be created by enumerating every Location resource within the List resource.

While the most common use case is aggregation by geopolitical boundary (e.g., city, county, state), other useful geographic regions exist. Neighborhood or (in the
US, a Census Tract) can define regions that are smaller than a city or county. Smaller geographic regions can support additional analysis, e.g., in regard to
social determinants of health, or geographic regions addressing patterns of referral or service areas (e.g., hospital referral regions and service areas).

The [Aggregate](OperationDefinition-MeasureReport-aggregate.html) operation defines the algorithm for aggregating measure reports.

### Aggregation of Population Counts
The aggregation of population.count requires special attention.

For a given facility and time period, measures can be aggregated in different ways depending on
the [scoring of the measure](CodeSystem-PublicHealthMeasureScoring.html).
The scoring of measures implies the way that which rate aggregation can be performed:

* Capacity<br/>
  Measures **point in time** capacity or utilization
* Event Growth<br/>
  Measures **cumulative** growth by counting current and cumulative events over time
* Queue Length<br/>
  Measures the number of activities awaiting completion at a **point in time**.
* Service Time<br/>
  Measures the **aggregate** total time to complete activities / total number of activities
* Availability
  Measures the **point in time** availability of resources

Measures aggregate values according to the [Measure Rate Aggregation Values](ValueSet-MeasureRateAggregationValues.html) value set,
which draws from Each the [Measure Rate Aggregation](CodeSystem-MeasureRateAggregation.html) coding system defined by this
implementation guide. Each of these must be aggregated differently.

* count<br/>
  A count of events that happened, or changes in status, or of things consumed over that period in time (e.g., admissions, deaths, tests performed).
  Quantity measurements (e.g., those counting events such as admissions, deaths, or tests performed) represent a count.  When aggregated for the same facility over multiple time periods, the population.count values can be summed to produce a count of events or things in the total time period.
* point-in-time<br/>
  A count of things at a point in time (e.g., active cases, beds currently occupied, ventilators in use).
  Point in time measurements (e.g., bed occupancy, ventilators in use) represent a current state. When aggregated for the same facility
  over multiple (continguous) time  periods, the most recent population.count is the "aggregated" value.
* cumulative<br/>
  A cumulative measure (e.g., tests performed).
  Cumulative measures are a combination of count and point-in-time measurements.  These represent a count of the current quantity (e.g., tests performed) over the total performed over "all time" (e.g., cumulative total tests performed).  When these are aggregated over multiple time periods, the aggregate of the cumulative total (the denominator) is the most recent value, but the aggregate of the current quantity (the numerator) is summed.

Across subjects (locations or facilities), counts are always summed. This assumes that subjects are non-overlapping (one is not trying to aggregate county data
with the data for an entire state that contains the county).

### Coding Geographic Locations
See [Recommended Coding Systems and Value Sets for Location.identifer](supporting_vocabulary.html#coding-location) in Supporting Vocabulary for recommendations on how to identify geographic locations.
