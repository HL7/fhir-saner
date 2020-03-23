This section describes the PULL-TX of this guide. This transaction is used by the Availability Source and Availability Collector actors.

### Scope

The Query Availability transaction allows an Availability Collector to
periodically query about the availability of a resource from an Availability Source.


### Actors Roles

![Figure 2.1-1: Query Availability Use Case Diagram](transaction-1-uc.svg "Figure 2.1-1: Query Availability Use Case Diagram")

<div style="clear: left"/>

**Figure 2.1-1: Query Availability Use Case Diagram**

<table border='1' borderspacing='0'>
<caption><b>Table 2.1-1: Actor Roles</b></caption>
<thead><tr><th>Actor</th><th>Role</th></tr></thead>
<tbody><tr><td><a href="actors_and_transactions.html#availability-source">Availability Source</a></td>
<td>Responds to a query, reporting on selected data.</td>
</tr>
        <tr><td><a href="actors_and_transactions.html#availability-collector">Availability Collector</a></td>
<td>Collects availability data on a periodic basis</td>
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
        
![Figure 2.1-2: Query Availability Interactions](transaction-1-seq.svg "Figure 2.1-2: Query Availability Interactions")

<div style="clear: left"/>

**Figure 2.1-2: Query Availability Interactions**


#### Search Group Request





##### Trigger Event - Periodic Reporting Interval Elapsed

##### Message Semantics

##### Expected Actions

###### An Availability Collector sends a Query to the Availability Source

The Availability Collector sends a query.





#### Search Group Response


This transaction enables query on the availability of resources.


##### Trigger Event - A query of Group resources has been requested.

##### Message Semantics

##### Expected Actions

###### Availability Source responds with Bundle

The Availability Source will generate a Bundle of matching Group resources and return it with a 200 OK response.


If there are no matching resources, the Availability Source responds with an empty bundle and a 200 OK response.
If errors occur during retrieval, the Availability Source makes a best effort to return what it can and may include an OperationOutcome resource
in the response indicating more details about what might be missing.  If the retrieval cannot be performed, the Availability Source may return
a 4XX error or 5XX error to indicate that an error has occured.
                    

