This operation enables multiple reports to be aggregated:
* From multiple systems reporting partial results within a facility into a singular consolidated report which can be reported to local, regional and national agencies.
* From multiple reports over a period of time from a given location, e.g., to aggregate daily measure reports into a weekly report.
* From multiple subjects within a geographic region into a MeasureReport describing that region.


### Aggregating MeasureReport Resources
The process for aggregating MeasureReport resources up to a geographic region or time period
follows the steps below:

1. Collect all MeasureReport resources to be aggregated.
   Note: All MeasureReport resources being aggregated must refererence a common Measure in MeasureReport.measure.
2. Determine the subject of the report (the larger location)
3. Compute the start of the time period for the aggregate as the minimum of MeasureReport.period.start for all MeasureReport resources being aggregated.
4. Compute the end of the time period for the aggregate as the maximum of MeasureReport.period.end for all MeasureReport resources being aggregated.
5. Compute the population.count values found in group.population and group.stratifier.stratum.population from the matching population.count values in
the MeasureReport
6. Compute the group.measureScore and group.stratifier.stratum.measure score for each group and stratum from the computed counts.

### Aggregating Population count values
Measures aggregate values according to the [Measure Rate Aggregation Values](ValueSet-MeasureRateAggregationValues.html) value set.
Across facilities, population counts are always summed. Within a facility the different population types are aggregated differently when
aggregating over a larger time period.

* count<br/>
  All population count values are summed.
* point-in-time<br/>
  The most recent population count value is the "aggregated" value, representing the final point-in-time
  measure.
* cumulative<br/>
  The initial population and numerator are summed, being a count of individual events.
  The denominator population takes on the value of the report at the end of the time period (the most recent value), beeing a cumulative count.

Measure scores are recomputed based on measure populations after aggregation following the usual rules for measure scoring.
