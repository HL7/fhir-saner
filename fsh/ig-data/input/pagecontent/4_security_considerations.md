The data access in this implementation guide is summarized metrics that are not senstive to individual patients or workers. The metrics may be percieved as sensitive to the organization publishing them. For this reason the project assesses the [Security and Privacy Considerations] (http://build.fhir.org/security.html#SecPrivConsiderations) as at most [Business Sensitive](http://build.fhir.org/security.html#Business), where the lower assessment of [Anonymous READ Access](http://build.fhir.org/security.html#Anonymous) may also apply.

Given this assessment, the main Security Considerations are focused on 
* Assuring the data published is authentic to the organization publicating the data. That is that a consumer of the API can be given assurances that they are connecting to the authentic service endpoint they intended to connect to. This functionally is provided by common use of TLS with server sided authentication, commonly used in [HTTPS](http://build.fhir.org/security.html#http).
* Assuring the data communicated is not modified in transit. That is that the consumer of the API can be given assurances that they are retrieving exactly the data that is published. This functionality is provided by common use of TLS with integrity cyphers such as SHA256.
* The Confidentiality of the communicated data is not critical, but having it encrypted may prevent unidentified risks. Given that common use of TLS includes common use of encryption cyphers such as AES256, this is recommended for consistency sake.
* The data served by this API may not be considered readily available to all that might request the data. That is that there may be no need for client or app level authentication. This is typical of data that is assesed at [Anonymous READ Access](http://build.fhir.org/security.html#Anonymous) 
* The service may choose to request a security token be obtained to provide identity of the client. This identity may simply be recorded in an Audit Log such as [FHIR AuditEvent](http://build.fhir.org/security.html#audit)

### Purpose Of Use restrictions
Given that the use-case for this implementation guide is to support Public Health reporting, the use of the use of client context PurposeOfUse of [PUBHLTH](http://build.fhir.org/v3/ActReason/cs.html#v3-ActReason-PUBHLTH) is recommended.

Specifically the use of data returned by this API should be limited to the Public Health use-case. Re-purposing the data for other uses, such as re-identification, should be considered a violation of the API intention.

### Local Access Control
The maintaince of the data on the client or server is not specified in this implementation guide. Security considerations must be applied in systems design to assure that the data is appropriately protected from inappropriate use and modification. For example only authorized services and individuals should be allowed to update the metrics that would be served by the API defined here.
