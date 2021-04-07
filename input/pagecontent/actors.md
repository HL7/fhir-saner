
This section defines the actors in this implementation guide.

Figure 1.1-1 below shows the actors directly
involved in the SANER
Profile and the relevant transactions between them.



![Figure 3-1: SANER Actor Diagram](ActorsAndTransactions.svg "Figure 3-1: SANER Actor Diagram")

**Figure 3-1: SANER Actor Diagram**

Table 3-1 lists the transactions for each actor directly involved in the SANER Implementation Guide. To claim compliance with this guide, an actor shall
support all required transactions (labeled "R") and may support the
optional transactions (labeled "O").


<table border="1" borderspacing="0" style='border: 1px solid black; border-collapse: collapse'>
<caption>
<b>
Table 3-1: SANER Implementation Guide - Actors and Transactions
</b>
</caption>
<thead>
<tr class="odd" style='background: gray;'>
<th>Actors</th>
<th>Transactions</th>
<th>Optionality</th>
</tr>
</thead>
<tbody>
                
<tr>
                        
<td rowspan="2">
<a href="#measure-source">Measure Source</a>
</td>
                        
<td>
<a href='transaction-1.html'>
                        Query Measure [PULL-TX]</a>
</td>
<td align='center'>
                        C

                                <sup> 1</sup>
                            
</td>
</tr>
                    
<tr>
                        
<td>
<a href='transaction-2.html'>
                        Produce Measure [PUSH-TX]</a>
</td>
<td align='center'>
                        C

                                <sup> 2</sup>
                            
</td>
</tr>
                    
<tr>
                        
<td rowspan="3">
<a href="#measure-consumer">Measure Consumer</a>
</td>
                        
<td>
<a href='transaction-5.html'>
                        Communicate Results [REPORT-TX]</a>
</td>
<td align='center'>
                        R
</td>
</tr>
                    
<tr>
                        
<td>
<a href='transaction-1.html'>
                        Query Measure [PULL-TX]</a>
</td>
<td align='center'>
                        C

                                <sup> 3</sup>
                            
</td>
</tr>
                    
<tr>
                        
<td>
<a href='transaction-2.html'>
                        Produce Measure [PUSH-TX]</a>
</td>
<td align='center'>
                        C

                                <sup> 4</sup>
                            
</td>
</tr>
                    
<tr>
                        
<td rowspan="9">
<a href="#measure-intermediary">Measure Intermediary</a>
</td>
                        
<td>
<a href='transaction-1.html'>
                        Query Measure [PULL-TX]</a><br/><i>As Measure Source</i>
</td>
<td align='center'>
                        C

                                <sup> 1</sup>
                            
</td>
</tr>
                    
<tr>
                        
<td>
<a href='transaction-2.html'>
                        Produce Measure [PUSH-TX]</a><br/><i>As Measure Source</i>
</td>
<td align='center'>
                        C

                                <sup> 2</sup>
                            
</td>
</tr>
                    
<tr>
                        
<td>
<a href='transaction-5.html'>
                        Communicate Results [REPORT-TX]</a><br/><i>As Measure Consumer</i>
</td>
<td align='center'>
                        R
</td>
</tr>
                    
<tr>
                        
<td>
<a href='transaction-1.html'>
                        Query Measure [PULL-TX]</a><br/><i>As Measure Consumer</i>
</td>
<td align='center'>
                        C

                                <sup> 3</sup>
                            
</td>
</tr>
                    
<tr>
                        
<td>
<a href='transaction-2.html'>
                        Produce Measure [PUSH-TX]</a><br/><i>As Measure Consumer</i>
</td>
<td align='center'>
                        C

                                <sup> 4</sup>
                            
</td>
</tr>
                    
<tr>
                        
<td>
<a href='transaction-1.html'>
                        Query Measure [PULL-TX]</a><br/><i>As Measure Intermediary</i>
</td>
<td align='center'>
                        C

                                <sup> 5</sup>
                            
</td>
</tr>
                    
<tr>
                        
<td>
<a href='transaction-2.html'>
                        Produce Measure [PUSH-TX]</a><br/><i>As Measure Intermediary</i>
</td>
<td align='center'>
                        C

                                <sup> 6</sup>
                            
</td>
</tr>
                    
<tr>
                        
<td>
<a href='transaction-1.html'>
                        Query Measure [PULL-TX]</a><br/><i>As Measure Intermediary</i>
</td>
<td align='center'>
                        C

                                <sup> 7</sup>
                            
</td>
</tr>
                    
<tr>
                        
<td>
<a href='transaction-2.html'>
                        Produce Measure [PUSH-TX]</a><br/><i>As Measure Intermediary</i>
</td>
<td align='center'>
                        C

                                <sup> 8</sup>
                            
</td>
</tr>
                    
<tr>
                        
<td rowspan="1">
<a href="#measure-definition-source">Measure Definition Source</a>
</td>
                        
<td>
<a href='transaction-3.html'>
                        Query Measure Definition [PULL-MX]</a>
</td>
<td align='center'>
                        R
</td>
</tr>
                    
<tr>
                        
<td rowspan="1">
<a href="#measure-definition-consumer">Measure Definition Consumer</a>
</td>
                        
<td>
<a href='transaction-3.html'>
                        Query Measure Definition [PULL-MX]</a>
</td>
<td align='center'>
                        R
</td>
</tr>
                    
<tr>
                        
<td rowspan="7">
<a href="#measure-computer">Measure Computer</a>
</td>
                        
<td>
<a href='transaction-1.html'>
                        Query Measure [PULL-TX]</a><br/><i>As Measure Source</i>
</td>
<td align='center'>
                        C

                                <sup> 1</sup>
                            
</td>
</tr>
                    
<tr>
                        
<td>
<a href='transaction-2.html'>
                        Produce Measure [PUSH-TX]</a><br/><i>As Measure Source</i>
</td>
<td align='center'>
                        C

                                <sup> 2</sup>
                            
</td>
</tr>
                    
<tr>
                        
<td>
<a href='transaction-3.html'>
                        Query Measure Definition [PULL-MX]</a><br/><i>As Measure Definition Consumer</i>
</td>
<td align='center'>
                        R
</td>
</tr>
                    
<tr>
                        
<td>
<a href='transaction-3.html'>
                        Query Measure Definition [PULL-MX]</a><br/><i>As Measure Computer</i>
</td>
<td align='center'>
                        R
</td>
</tr>
                    
<tr>
                        
<td>
<a href='transaction-4.html'>
                        Compute Measure [COMPUTE-MX]</a><br/><i>As Measure Computer</i>
</td>
<td align='center'>
                        R
</td>
</tr>
                    
<tr>
                        
<td>
<a href='transaction-1.html'>
                        Query Measure [PULL-TX]</a><br/><i>As Measure Computer</i>
</td>
<td align='center'>
                        C

                                <sup> 9</sup>
                            
</td>
</tr>
                    
<tr>
                        
<td>
<a href='transaction-2.html'>
                        Produce Measure [PUSH-TX]</a><br/><i>As Measure Computer</i>
</td>
<td align='center'>
                        C

                                <sup> 10</sup>
                            
</td>
</tr>
                    
<tr>
                        
<td rowspan="1">
<a href="#data-source">Data Source</a>
</td>
                        
<td>
<a href='transaction-4.html'>
                        Compute Measure [COMPUTE-MX]</a>
</td>
<td align='center'>
                        R
</td>
</tr>
                    
</tbody>
</table>
        
        
**Notes:**

1. This transaction is required when the Measure Source implements the [Pull Option](#pull-option).

2. This transaction is required when the Measure Source implements the [Push Option](#push-option), or [Supplemental Data Option](#supplemental-data-option).

3. This transaction is required when the Measure Consumer implements the [Pull Option](#pull-option).

4. This transaction is required when the Measure Consumer implements the [Push Option](#push-option), or [Supplemental Data Option](#supplemental-data-option).

5. This transaction is required when the Measure Intermediary implements the [Pull Option](#pull-option).

6. This transaction is required when the Measure Intermediary implements the [Push Option](#push-option).

7. This transaction is required when the Measure Intermediary implements the [Pull Option](#pull-option).

8. This transaction is required when the Measure Intermediary implements the [Push Option](#push-option).

9. This transaction is required when the Measure Computer implements the [Pull Option](#pull-option).

10. This transaction is required when the Measure Computer implements the [Push Option](#push-option).

### Actors
The actors in this profile are described in more detail in the sections below.

#### Measure Source

The Measure Source Actor reports results Measures for a single facility, collection of facilities or aggregated
data for a region.


In a single facility, or organization, the Measure Source Actor will compile data directly from the facility
or organization source systems.

A Measure Source may also exist in an Aggregator, Intermediary or Bridging role. In this guide we will use the term Intermediary
to describe these roles.

A Measure Source provides the FHIR data that is used by a Measure Consumer.


##### Measure Source Requirements

1. The Measure Source **shall** implement either the Pull Option or the Push Option.
2. A Measure Source that implements the Pull Option **shall** provide a CapabilityStatement when queried via
[base]/metadata.
3. A Measure Source that implements the Supplemental Data Option **shall** support creation of MeasureReport and Supplemental Data
            resources through the [HTTP Batch](https://www.hl7.org/fhir/http.html#transaction) operation and endpoint.
4. A Measure Source that implements the Supplemental Data option must also implement the Push Option

##### Measure Source Conformance

See the following CapabilityStatement resources for conformance requirements:
* [CapabilityStatement-MeasureSource-Aggregate](CapabilityStatement-MeasureSource-Aggregate.html) Defines the additional requirements for the Measure Source implementing the Aggregate Option.
* [CapabilityStatement-MeasureSource-CSV-Pull](CapabilityStatement-MeasureSource-CSV-Pull.html) Defines the additional requirements for the Measure Source implementing the CSV Option and the Pull Option.
* [CapabilityStatement-MeasureSource-CSV-Push](CapabilityStatement-MeasureSource-CSV-Push.html) Defines the additional requirements for the Measure Source implementing the CSV Option and the Push Option.
* [CapabilityStatement-MeasureSource-Pull](CapabilityStatement-MeasureSource-Pull.html) Defines the additional requirements for the Measure Source implementing the Pull Option.
* [CapabilityStatement-MeasureSource-Pull-Questionnaire](CapabilityStatement-MeasureSource-Pull-Questionnaire.html) Defines the additional requirements for the Measure Source implementing the Pull Option and the Questionnaire Option.
* [CapabilityStatement-MeasureSource-Push](CapabilityStatement-MeasureSource-Push.html) Defines the additional requirements for the Measure Source implementing the Push Option.
* [CapabilityStatement-MeasureSource-SupplementalData](CapabilityStatement-MeasureSource-SupplementalData.html) Defines the additional requirements for the Measure Source implementing the Supplemental Data Option.
#### Measure Consumer

The Measure Consumer provides access to aggregated or fine-grained
data gathered from one or more Measure Sources.


The Measure Consumer provides the ability to report on data from one or more Measure Sources.

In the case of a single facility or organization the Measure Consumer is reporting the data at aggregated
or varying levels of granularity using data extracted from a Measure Source.


##### Measure Consumer Requirements

1. The Measure Consumer **shall** implement either the Pull Option or the Push Option.
2. A Measure Consumer that implements the Push Option **shall** provide a CapabilityStatement when queried via
				[base]/metadata.
3. A Measure Consumer that implements the Supplemental Data Option **shall** support creation of MeasureReport and Supplemental Data
            resources through the [HTTP Batch](https://www.hl7.org/fhir/http.html#transaction) operation and endpoint.
4. A Measure Consumer that implements the Supplemental Data option must also implement the Push Option

##### Measure Consumer Conformance

See the following CapabilityStatement resources for conformance requirements:
* [CapabilityStatement-MeasureConsumer-Aggregate](CapabilityStatement-MeasureConsumer-Aggregate.html) Defines the additional requirements for the Measure Consumer implementing the Aggregate Option.
* [CapabilityStatement-MeasureConsumer-CSV-Pull](CapabilityStatement-MeasureConsumer-CSV-Pull.html) Defines the additional requirements for the Measure Consumer implementing the CSV Option and the Pull Option.
* [CapabilityStatement-MeasureConsumer-CSV-Push](CapabilityStatement-MeasureConsumer-CSV-Push.html) Defines the additional requirements for the Measure Consumer implementing the CSV Option and the Push Option.
* [CapabilityStatement-MeasureConsumer-Pull](CapabilityStatement-MeasureConsumer-Pull.html) Defines the additional requirements for the Measure Consumer implementing the Pull Option.
* [CapabilityStatement-MeasureConsumer-Pull-Questionnaire](CapabilityStatement-MeasureConsumer-Pull-Questionnaire.html) Defines the additional requirements for the Measure Consumer implementing the Pull Option and the Questionnaire Option.
* [CapabilityStatement-MeasureConsumer-Push](CapabilityStatement-MeasureConsumer-Push.html) Defines the additional requirements for the Measure Consumer implementing the Push Option.
* [CapabilityStatement-MeasureConsumer-SupplementalData](CapabilityStatement-MeasureConsumer-SupplementalData.html) Defines the additional requirements for the Measure Consumer implementing the Supplemental Data Option.
#### Measure Intermediary

The Measure Intermediary is a grouping of a Measure Source with a Measure Consumer.


This actor represents the composition of a [Measure Source](actors.html#measure-source) with a [Measure Source](actors.html#measure-source).

The Measure Intermediary role can aggregate data from multiple Measure Sources. Data from Measure Sources may
be pulled in by the Intermediary, or pushed to the Intermediary by the Measure Source.

The Measure Intermediary may also provide the capabilities of a Measure Consumer to enable data to be
reported at an aggregated level.

The Measure Intermediary role may aggregate data from other Measure Intermediaries. Since the Intermediary
is exposing a Measure Source capability this method allows data to be aggregated in a hierarchy such as:

- Supporting multiple data inputs within a single facility to create a complete measure from multiple partial reports,
- Enabling aggregation of data for Groups of hospitals in a health system, a hospital service area, or referral region,
- Aggregating to county or state levels for local and regional Public Health agencies
- Communicating aggregated data to National / Federal Agencies such as CDC or FEMA.


#### Bridging between Incompatible Options
In networking parlance, a Bridge is a system that connects between different protocols. The different options in this
Implementation Guide
can create incompatibilities, but these can be bridged by an Intermediary.

For example, a Measure Intermediary that implements the Push Option in the Measure Consumer, that groups with a Measure Source
implementing the Push Option can bridge between a Measure Source implementing the Pull option to enable
communication with a Measure Consumer implementing the Pull option.

In this example, the Bridge is simply a FHIR Server. A FHIR Server that supports CRUD operations on MeasureReport and Measure
effectively implements both the Measure Consumer with the Push Option
and the Measure Source actor implementing the Pull Option.

![FHIR Server](FHIRServer.svg)


##### Measure Intermediary Requirements

1. A Measure Intermediary whose Consumer implements the Push Option **shall** provide a CapabilityStatement when
				queried via [base]/metadata.
2. A Measure Intermediary whose Source implements the Pull Option **shall** provide a CapabilityStatement when
				queried via [base]/metadata.

##### Measure Intermediary Conformance

See the following CapabilityStatement resources for conformance requirements:
#### Measure Definition Source

The Measure Definition Source Actor provides access to Measures defined by public health and emergency response
authorities.


The Measure Definition Source actor is responsible for maintaining measures for systems that are using this
implementation guide to automate measure reporting.


##### Measure Definition Source Requirements

1. A Measure Definition Source **shall** provide a CapabilityStatement when queried via [base]/metadata.

##### Measure Definition Source Conformance

See the following CapabilityStatement resources for conformance requirements:
* [CapabilityStatement-MeasureDefinitionSource](CapabilityStatement-MeasureDefinitionSource.html) Defines the requirements for the Measure Definition Source.
#### Measure Definition Consumer

The Measure Definition Consumer Actor accesses Measures defined by public health and emergency response
authorities.


The Measure Definition Consumer actor is responsible for retrieving measures from publishing systems to automate
measure reporting.



##### Measure Definition Consumer Conformance

See the following CapabilityStatement resources for conformance requirements:
* [CapabilityStatement-MeasureDefinitionConsumer](CapabilityStatement-MeasureDefinitionConsumer.html) Defines the requirements for the Measure Definition Consumer.
#### Measure Computer

The Measure Computer Actor is responsible for computing measures from definitions provided through its grouping
with a Measure Definition Consumer actor,
and reporting these measures through its grouping with the Measure Source actor.


##### Measure Computer Requirements

1. The Measure Computer **shall** implement either the Pull Option or the Push Option.
2. A Measure Computer that implements the Pull Option **shall** provide a CapabilityStatement when queried via
				[base]/metadata.

##### Measure Computer Conformance

See the following CapabilityStatement resources for conformance requirements:
* [CapabilityStatement-MeasureComputer](CapabilityStatement-MeasureComputer.html) Defines the requirements for the Measure Computer.
#### Data Source

The Data Source actor is responsible for supplying data to a MeasureComputer.


The Data Source supplies data via FHIR Queries supported by national standards.


##### Data Source Requirements

1. A Data Source **shall** provide a CapabilityStatement when queried via [base]/metadata.

##### Data Source Conformance

See the following CapabilityStatement resources for conformance requirements:
* [CapabilityStatement-DataSource](CapabilityStatement-DataSource.html) Defines the requirements for the Data Source.
### Actor Options

Options that may be selected for each actor in this guide, are listed in Table 3.2-1 below. Dependencies
between options when applicable are specified in notes.

<table border="1" style="border: 1px solid black; border-collapse: collapse">
    <caption><b>Table 3.2-1 Actor Options</b></caption>
    <thead>
        <tr style="background: gray;" class="odd">
            <td>Actor</td>
            <td>Option Name</td>
        </tr>
    </thead>
    <tbody>
        
                <tr>
                
                    <td rowspan='5'>Measure Source</td>
                
                <td><a href="#csv-option">CSV Option</a></td>
                </tr>
            
                <tr>
                
                <td><a href="#push-option">Push Option</a></td>
                </tr>
            
                <tr>
                
                <td><a href="#pull-option">Pull Option</a></td>
                </tr>
            
                <tr>
                
                <td><a href="#supplemental-data-option">Supplemental Data Option</a></td>
                </tr>
            
                <tr>
                
                <td><a href="#questionnaire-option">Questionnaire Option</a></td>
                </tr>
            
                <tr>
                
                    <td rowspan='5'>Measure Consumer</td>
                
                <td><a href="#csv-option">CSV Option</a></td>
                </tr>
            
                <tr>
                
                <td><a href="#push-option">Push Option</a></td>
                </tr>
            
                <tr>
                
                <td><a href="#pull-option">Pull Option</a></td>
                </tr>
            
                <tr>
                
                <td><a href="#supplemental-data-option">Supplemental Data Option</a></td>
                </tr>
            
                <tr>
                
                <td><a href="#questionnaire-option">Questionnaire Option</a></td>
                </tr>
            
                <tr><td>Measure Intermediary</td>
                <td><i>No Options Defined</i></td></tr>
            
                <tr><td>Measure Definition Source</td>
                <td><i>No Options Defined</i></td></tr>
            
                <tr><td>Measure Definition Consumer</td>
                <td><i>No Options Defined</i></td></tr>
            
                <tr><td>Measure Computer</td>
                <td><i>No Options Defined</i></td></tr>
            
                <tr><td>Data Source</td>
                <td><i>No Options Defined</i></td></tr>
            
    </tbody>
</table>

        
The options in this guide are describe in more detail the sections below.

#### CSV Option

An actor implementing the CSV Option supports the ability to exchange
MeasureReport resources in CSV format using FHIR Operations

This option applies to the actors as described below.

##### Measure Source


A
[Measure Source](actors.html#measure-source)
actor implementing the CSV option supports a FHIR Operation to provide data in CSV format.


##### Measure Consumer


A
[Measure Consumer](actors.html#measure-consumer)
actor implementing the CSV option supports a FHIR Operation to consume data in CSV format.


#### Push Option

An actor implementing the Push Option supports the periodic push of resources
describing the current status of health delivery resources to a centralized collection point.



This option applies to the actors as described below.

##### Measure Source


A Measure Source implementing the Push Option periodically sends updates to a
[Measure Consumer](actors.html#measure-consumer)
using the
[Produce Measure](transactions.html#produce-measure)
transaction.


##### Measure Consumer


An Measure Consumer implementing the Push Option periodically recieves updates from the
[Measure Source](actors.html#measure-source)
using the
[Produce Measure](transactions.html#produce-measure)
transaction.


#### Pull Option

An actor implementing the Pull Option supports the periodic pull resources
describing the current status of selected health delivery resources.



This option applies to the actors as described below.

##### Measure Source


A Measure Source implementing the Pull Option is periodically queried by an
[Measure Consumer](actors.html#measure-consumer)
using the
[Query Measure](transactions.html#query-measure)
transaction to enable collection of the current status.


##### Measure Consumer


An Measure Consumer implementing the Pull Option periodically queries a
[Measure Source](actors.html#measure-source)
using the
[Query Measure](transactions.html#query-measure)
transaction to enable collection of the current status.


#### Supplemental Data Option

An actor implementing the Supplemental Data Option supports the use of Bundle in Push transactions
used with the MeasureReport resource. Actors implementing the Supplemental Data Option must also implement
the Push Option.

This option applies to the actors as described below.

##### Measure Source

A MeasureSource implementing the Supplemental Data Option will send measures containing Supplemental Data using
the HTTP Batch operation with a FHIR Collection bundle to the Bundle endpoint for the receiving
Measure Consumer. The MeasureReport resource will be the first resource in this bundle, and all following resources
in the Bundle will be the resources representing the supplemental data referenced by that MeasureReport.


##### Measure Consumer

A MeasureConsumer implementing the Supplemental Data Option can receive measures containing
supplemental data at its Bundle endpoint, and will store the resources following the requirements of
the HTTP Batch operation.


#### Questionnaire Option

An actor implementing the Questionnaire Option supports the use of Questionnaire
and QuestionnaireResponse resources to determine the current status of selected
health delivery resources.



This option applies to the actors as described below.

##### Measure Source

A Measure Source implementing the Questionnaire Option will interact
using Questionnaire and QuestionnaireResponse resources to report on the current status
of health delivery resources.


##### Measure Consumer

A Measure Consumer implementing the Questionnaire Option will interact
using Questionnaire and QuestionnaireResponse resources to access the current status
of health delivery resources.


#### Aggregate Option

An actor implementing the Aggregate option enables aggregation of multiple MeasureReport resources into a
consolidated
MeasureReport.


This option enables multiple reports to be aggregated:
* From multiple systems reporting partial results within a facility into a singular consolidated report.
* From multiple reports over a period of time from a given location, e.g., to aggregate daily measure reports into a weekly
report.
* From multiple subjects within a geographic region into a MeasureReport describing that region.

This option applies to the actors as described below.
