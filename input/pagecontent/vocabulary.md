This page lists the ValueSets and CodeSystems defined in this guide and required for use by
conforming implementations.

### Value Sets <a name="valuesets"></a>
These Value Sets have been defined for this implementation guide.

1. [Event Context](ValueSet-EventContext.html)
2. [Measure Rate Aggregation Value Set](ValueSet-MeasureRateAggregationValues.html)
3. [Measure Scoring](ValueSet-MeasureScoring.html)
4. [Measure Status Values](ValueSet-MeasureStatus.html)
5. [Public Health Measure Attachment Types](ValueSet-PublicHealthMeasureAttachmentTypes.html)

### Code Systems <a name="codesystems"></a>
These Code Systems have been defined for this implementation guide.

1. [Measure Rate Aggregation Coding System](CodeSystem-MeasureRateAggregation.html)
2. [Public Health Measure Scoring](CodeSystem-PublicHealthMeasureScoring.html)
3. [Situational Awareness Measure Populations](CodeSystem-MeasurePopulationSystem.html)

### Recommendations for Coding Age Ranges <a name="ageranges"></a>
The IHE [Age Range Coding System](CodeSystem-IHE-ADX-agerange.html) is a coding system based on
interval encoding described in [ISO 8601 - Data elements and interchange formats](https://www.iso.org/standard/70907.html)
to encode age ranges used in measurement. Typical measures used for COVID-19 reporting stratify patients into age
groups by decade or score (20 years). The following two value sets are defined by this guide to support
stratification in this way.

1. [Age Brackets By Decade](ValueSet-DecadeAgeBrackets.html)
2. [Age Brackets By Score (20)](ValueSet-ScoreAgeBrackets.html)
