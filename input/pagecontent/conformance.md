This chapter [Need more here](#tbd) enumerates the FHIR conformance resources used for validating implementations, provides a test
plan for evaluating actors in this guide, and test data testing implementations.

### Conforming Actors
A system can declare conformance to this implementation guide by:

<ol>
    <li id='capabilities'><details><summary>Capability Statements</summary><ol>
           {% include list-simple-capabilitystatements.xhtml %}
        </ol></details>
    </li>
    <li><details><summary>Operations</summary><ol>
           {% include list-simple-operationdefinitions.xhtml %}
        </ol></details>
    </li>
    <li><details><summary>Search Parameters</summary><ol>
           {% include list-simple-searchparameters.xhtml %}
        </ol></details>
    </li>
    <li><details><summary>Profiles</summary><ol>
           {% include list-simple-profiles.xhtml %}
        </ol></details>
    </li>
    <li><details><summary>Extensions</summary><ol>
           {% include list-simple-extensions.xhtml %}
        </ol></details>
    </li>
    <li><details><summary>Value Sets</summary><ol>
           {% include list-simple-valuesets.xhtml %}
        </ol></details>
    </li>
    <li><details><summary>Code Systems</summary><ol>
           {% include list-simple-codesystems.xhtml %}
        </ol></details>
    </li>
    <li><details><summary><a href='test_plan.html'>Test Plan</a></summary></li><ol>
      <li><a href='test_plan.html#actors'>Supported Actors</a></li>
      <li><a href='test_plan.html#scenarios'>Integration Test Scenarios</a></li>
      <li><a href='test_plan.html#csvformat'>Reporting in CSV Format</a></li>
      <li><a href='test_plan.html#genstore'>Generate and Store a MeasureReport</a></li>
      <li><a href='test_plan.html#query'>Query for MeasureReport Resources</a></li>
      <li><a href='test_plan.html#forward'>Forward a MeasureReport</a></li>
      <li><a href='test_plan.html#aggregate'>Aggregate MeasureReport Resources</a></li>
      <li><a href='test_plan.html#unittest'>Unit Test Procedures</a></li>
      </ol></details>
    <li><details><summary>Test Data Sets</summary><ol>
        <li><a href='hospital_capacity_examples.html'>Hospital Capacity Measure and Report Examples</a></li>
        <li><a href='laboratory_reporting_examples.html'>Laboratory Reporting Measure and Report Examples</a></li>
        <li><a href='automation_testing_examples.html'>Automation Testing Data</a></li>
        </ol></details>
    </li>
</ol>
