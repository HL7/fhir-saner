
The Situational Awareness for Novel Epidemic Response Implementation Guide enables transmission
of high level situational awareness information from inpatient facilities to centralized data repositories
to support the treatment of novel influenza-like illness.


### About This Guide
This is a draft implementation guide to promote discussion with leaders in the Health
IT industry, and very much a work in progress.  All content in this guide is subject
to discussion and change.

The goal of publishing this guide is to encourage the creation of a community interested
in extremely rapid development of interfaces that can support communication Bed and other
resourcees to Public Health in this time of crisis.

This implementation guide provides the FHIR Implementation materials associated with
the SANER project.

### Organization of This Guide
This guide is organized into five main sections:

<details><summary>

Volume I: [Overview](overview.html) - Provides an overview of the challenges this effort is trying to address.
</summary>
   1. [Technology Environment](technology_environment.html) - Describes the technology environment for uninitiated.
   2. [Architecture](architecture.html) - Illustrates the Microservice Architecture
   3. [Security Considerations](security_considerations.html) - Documents security concerns and mitigations
   4. [Use Cases](use_cases.html) - Illustrates key use cases
   5. [Actors and Transactions](actors_and_transactions.html) - Provides an overview of technical components
   6. [Measures used for Reporting](measures.html) - Defines measures used by CDC and FEMA as FHIR Measure resources
</details>

<details><summary>

Volume II: [Transactions](transactions.html) - Describes the interactions supported
by this guide.
</summary>
   1. [Query Measure [PULL-TX]](transaction-1.html)
   2. [Produce Measure [PUSH-TX]](transaction-2.html)
   3. [Communicate Results [REPORT-TX]](transaction-3.html)

</details>
<details><summary>

Volume III: [Profiles and Extensions](profiles.html) - Describes the purpose of the resource profiles and
extensions defined by this guide.
</summary>
<ol>
    <li>Profiles
        <ol>
           {% include list-simple-profiles.xhtml %}
        </ol></li>
    <li>Extensions
        <ol>
           {% include list-simple-extensions.xhtml %}
        </ol>
    </li>
</ol>

</details>

<details><summary>

Volume IV: [Vocabulary](vocabulary.html)
</summary>
<ol>
    <li>Value Sets
        <ol>
           {% include list-simple-valuesets.xhtml %}
        </ol>
    </li>
    <li>Code Systems
        <ol>
           {% include list-simple-codesystems.xhtml %}
        </ol>
    </li>
    <li>Concept Maps
        <ol>
           {% include list-simple-conceptmaps.xhtml %}
        </ol>
    </li>
</ol>
</details>
<details><summary>

Volume V: [Examples](examples.html)
</summary>
<ol>
    <li>Measures
        <ol>
           {% include list-simple-measures.xhtml %}
        </ol>
    </li>
    <li>Locations
        <ol>
           {% include list-simple-locations.xhtml %}
        </ol>
    </li>
    <li>Organizations
        <ol>
             {% include list-simple-organizations.xhtml %}
        </ol>
    </li>
    <li>Measure Reports
        <ol>
           {% include list-simple-measurereports.xhtml %}
        </ol>
    </li>
</ol>
</details>

Click on any of the links above, head on over the [table of contents](toc.html), or
if you are looking for a specific artifact, check out the [index](artifacts.html).

You can also download:

* [this entire guide](full-ig.zip),
* the definition resources in [json](definitions.json.zip), [xml](definitions.xml.zip), [ttl](definitions.ttl.zip), or [csv](csvs.zip) format, or
* the example resources in [json](examples.json.zip), [xml](examples.xml.zip) or [ttl](examples.ttl.zip) format.

The source code for this Implementation Guide can be found on
[https://github.com/AudaciousInquiry/saner-ig](https://github.com/AudaciousInquiry/saner-ig).


![The SANER Project Logo](SANERLogo.png)
<div style='float: clear'/>
**Fighting COVID-19 with FHIR®**
