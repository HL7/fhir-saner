This section describes the PUSH-TX of this guide. This transaction is used by the Availability Source and Availability Collector actors.

### Scope

The Update Availability transaction allows an Availability Source to
periodically update the availability of resources to an Availability Collector.


### Actors Roles

![Figure 2.2-1: Update Availability Use Case Diagram](transaction-2-uc.svg "Figure 2.2-1: Update Availability Use Case Diagram")

<div style="clear: left"/>

**Figure 2.2-1: Update Availability Use Case Diagram**

<table border='1' borderspacing='0'>
<caption><b>Table 2.2-1: Actor Roles</b></caption>
<thead><tr><th>Actor</th><th>Role</th></tr></thead>
<tbody><tr><td><a href="actors_and_transactions.html#availability-source">Availability Source</a></td>
<td>Periodically pushes selected data to an Availability Collector.</td>
</tr>
        <tr><td><a href="actors_and_transactions.html#availability-collector">Availability Collector</a></td>
<td>Receives availability data on a periodic basis</td>
</tr>
        
</tbody>
</table>

### Referenced Standards

<table border='1' borderspacing='0'>
<caption><b>Table 3.71.3-1: Referenced Standards</b></caption>
<thead><tr><th>Standard</th><th>Name</th></tr></thead>
<tbody>
            <tr><td>FHIR-R4</td><td><a href='http://www.hl7.org/FHIR/R4'>HL7 FHIR Release 4.0</a></td></tr>
        
            <tr><td>RFC-7230</td><td><a href='https://ietf.org/rfc/rfc7230.html'>Hypertext Transfer Protocol - HTTP/1.1</a></td></tr>
        
</tbody>
</table>

### Interactions
        
![Figure 2.2-2: Update Availability Interactions](transaction-2-seq.svg "Figure 2.2-2: Update Availability Interactions")

<div style="clear: left"/>

**Figure 2.2-2: Update Availability Interactions**


#### Push Availability Bundle





##### Trigger Event - Periodic Reporting Interval elapsed

##### Message Semantics

##### Expected Actions

###### Availability Source reports a Bundle

The Availability Source posts a Bundle of matching Group resources to the Availability Collector.


If there are no matching resources, the Availability Source reports with an empty bundle. If errors occur during
producing the report, the Availability Source makes a best effort to send what it
can and may include an OperationOutcome resource in the bundle indicating more
details about what might be missing.
                


###### The Availability Collector responds with Success

The Availability Collector reports success using 200 OK, 201 Created, or 204 No Content to indicate a successful update.


If an error occured during the update, the Availability collector should report it using a 4XX or 5XX error depending on the cause.

