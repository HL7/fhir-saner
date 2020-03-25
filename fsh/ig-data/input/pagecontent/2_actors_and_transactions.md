
This section defines the actors and transactions in this implementation guide.

Figure 1.1-1 below shows the actors directly
involved in the SANER
Profile and the relevant transactions between them.



![Figure 3-1: SANER Actor Diagram](ActorsAndTransactions.svg "Figure 3-1: SANER Actor Diagram")

<div style="clear: left"/>

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
                
<tr class="even">
                        
<td rowspan="2">
<a href="actors_and_transactions.html#availability-source">Availability Source</a>
</td>
                        
<td>
<a href='transaction-1.html'>
                        Query Availability [PULL-TX]
</a>
</td>
<td align='center'>
                        C

                                        <sup>1</sup>
                            
</td>
</tr>
                    
<tr class="odd">
                        
<td>
<a href='transaction-2.html'>
                        Update Availability [PUSH-TX]
</a>
</td>
<td align='center'>
                        C

                                        <sup>2</sup>
                            
</td>
</tr>
                    
<tr class="even">
                        
<td rowspan="2">
<a href="actors_and_transactions.html#availability-collector">Availability Collector</a>
</td>
                        
<td>
<a href='transaction-1.html'>
                        Query Availability [PULL-TX]
</a>
</td>
<td align='center'>
                        R
</td>
</tr>
                    
<tr class="odd">
                        
<td>
<a href='transaction-2.html'>
                        Update Availability [PUSH-TX]
</a>
</td>
<td align='center'>
                        R
</td>
</tr>
                    
<tr class="even">
                        
<td rowspan="1">
<a href="actors_and_transactions.html#availability-reporter">Availability Reporter</a>
</td>
                        
<td>
<a href='transaction-3.html'>
                        Report Results [REPORT-TX]
</a>
</td>
<td align='center'>
                        R
</td>
</tr>
                    
</tbody>
</table>
        
        
Note 1: 
                When the Availability Source supports the Pull Option
            

Note 2: 
                When the Availability Source supports the Push Option
            

### Actors
The actors in this profile are described in more detail in the sections below.

#### Availability Source

The Availability Source Actor reports results for a single facility, collection of facilities
        or aggragated data for a region


TBD


##### Availability Source Requirements
1. An Availability Source **shall** implement at least one of the following options:
* Push Option
* Pull Option
            <br/>



#### Availability Collector

The Availability Collector gathers data on resource availablity from other systems



#### Availability Reporter

The Availability Reporter allows users to view reports on aggregated and fine-grained
data gathered from multiple Availability Sources.
        



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
                
                    <td rowspan='3'>Availability Source</td>
                
                <td><a href="#push-option">Push Option</a></td>
                </tr>
            
                <tr>
                
                <td><a href="#pull-option">Pull Option</a></td>
                </tr>
            
                <tr>
                
                <td><a href="#resource-option">Resource Option</a></td>
                </tr>
            
                <tr>
                
                    <td rowspan='1'>Availability Collector</td>
                
                <td><a href="#resource-option">Resource Option</a></td>
                </tr>
            
                <tr>
                
                    <td rowspan='1'>Availability Reporter</td>
                
                <td><a href="#resource-option">Resource Option</a></td>
                </tr>
            
    </tbody>
</table>

        
The options in this guide are describe in more detail the sections below.

#### Push Option

An actor implementing the Push Option supports the periodic push of a Bundle of records
describing the current status of health delivery resources to a centralized collection point.
	    




This option applies to the actors as described below.
##### Availability Source

An Availability Source implementing the Push Option periodically sends updates to the
Availability Collector using the [Update Availability](transaction-2.html) transaction.



#### Pull Option

An actor implementing the Pull Option supports use of the [Query Availability] transaction made from
an Availability Collector to enable reporting of the current status of selected health delivery resources .




This option applies to the actors as described below.
##### Availability Source

An Availability Source implementing the Pull Option periodically is periodically queried by an
Availability Collector using the [Query Availability](transaction-1.html) transaction to enable collection of the current status.



#### Resource Option

An actor supporting the Resource Option can describe the status of non-bed treatment
resources, such as ventilators, respirators, infusion pumps, monitoring equipment, et cetera




This option applies to the actors as described below.
##### Availability Source

An Availability Source implementing the Resource Option can send updates on other Resources
(e.g., ventilators, respirators, other medical equipment).


##### Availability Collector

An Availability Collector implementing the Resource Option can request updates on other Resources
(e.g., ventilators, respirators, other medical equipment), or aggregate data updates provided about these
resources.


##### Availability Reporter

An Availability Reporter implementing the Resource Option can reports data about other Resources
(e.g., ventilators, respirators, other medical equipment).


### Transaction Descriptions
The transactions in this profile are summarized in the sections below.

#### Query Availability

The Query Availability transaction allows an Availability Collector to
periodically query about the availability of a resource from an Availability Source.


For more details see the detailed [transaction description](transaction-1.html)

#### Update Availability

The Update Availability transaction allows an Availability Source to
periodically update the availability of resources to an Availability Collector.


For more details see the detailed [transaction description](transaction-2.html)

#### Report Results

The Report Results transaction allows users (e.g., Public Health Officials) to view current resource availability.


For more details see the detailed [transaction description](transaction-3.html)
