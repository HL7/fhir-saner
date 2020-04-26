##
This Implementation Guide defines a profile for Measure.

### Stratifiers
Stratifiers partition a measure so that it counts subsets of the measure population
within the numerator or other measure population by some attribute that classifies the population.
Common stratifications often used in healthcare settings include age, sex at birth[^1] and race and ethnicity.
Constraints on the [Measure.group.stratifier](https://hl7.org/fhir/measure-definitions.html#Measure.group.stratifier)
component of a Measure and further describes the elements of that component to support strata.

[^1]: Also commonly referred to as gender, but is then confused with self-reported gender identity, so this guide uses the term sex at birth.

Each stratifier has the following features:

<dl>
<dt>name</dt>
<dd>

The human readable name for the stratifier.
This can be found in `stratifier.code.coding.display`
</dd>
<dt>identifier</dt>
<dd>

An identifier that uniquely identifies the stratifier.
This can be found in `stratifier.code.coding.code` and `stratifier.code.coding.system`
</dd>
<dt>description</dt>
<dd>

A description of the purpose of the stratifier, explaining what function it serves.
This can be found in `stratifier.code.text`
</dd>
<dt>value set</dt>
<dd>

A list of values that describe the different categories into which counted elements are classified for stratification.
Individual values in this value set can be found in `stratifier.component.code` and an explaination of their function
appears in `stratifier.component.description`.
</dd>


