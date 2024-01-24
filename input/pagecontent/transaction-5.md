This section describes the REPORT-TX of this guide. This transaction is used by the Measure Consumer actors.

### Scope

The Communicate Results transaction allows users (e.g., Public Health Officials) to view current resource
availability, or other systems to access resource availability data.


### Actors Roles
<figure>
{% include transaction-5-uc.svg%}
<figcaption>Figure 2.5-1: Communicate Results Use Case Diagram</figcaption>
</figure>


|Actor|Role|
|----|----|
|Measure Consumer |Display or transmits reports using availability data|


### Referenced Standards

<table border='1' borderspacing='0'>
**Table 3.71.3-1: Referenced Standards**
|Standard|Name|
|---|---|
|RFC-7230|[Hypertext Transfer Protocol - HTTP/1.1](https://ietf.org/rfc/rfc7230.html)|

### Interactions
<figure>
{% include transaction-5-seq.svg%}
<figcaption>Figure 2.5-2: Communicate Results Interactions</figcaption>
</figure>


#### Communicate Measure


Upon completion of this transaction, resource availability data will have been communicated to a user or system. This can be demonstrated by generation of a report, summary, or other artifact, or by transmission of resource availability data or some computation over it to another system.

This requirement can be met by a Measure Consumer that consumes and displays data in a Web Browser, consumes data and transmits it in another format to a public health agency (e.g., using the CDC CSV format), or as a Measure Intermediary that consumes data from one system and communicates it to another, or transforms it and communicates it back to the original system or to another system.

