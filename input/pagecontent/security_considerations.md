The data access in this implementation guide is summarized metrics that are not senstive to individual patients or workers. The metrics may be percieved as sensitive to the
organization publishing them. For this reason the project assesses the
[Security and Privacy Considerations](http://hl7.org/fhir/R4/security.html#SecPrivConsiderations) as at most
[Business Sensitive](http://hl7.org/fhir/R4/security.html#Business), where the lower assessment of [Anonymous READ Access](http://hl7.org/fhir/R4/security.html#Anonymous)
may also apply.

Given this assessment, the main Security Considerations are focused on
- Assuring the data published is authentic to the organization publicating the data. That is that a consumer of the API can be given assurances that they are
  connecting to the authentic service endpoint they intended to connect to. This functionally is provided by common use of TLS with server sided authentication,
  commonly used in [HTTPS](http://hl7.org/fhir/R4/security.html#http).
- Care must be taken to validate that the server certificate validated and authenticated by the TLS / HTTPS is the server intended to connect to. This is
  important management of client side certificate trust store
- Assuring the data communicated is not modified in transit. That is that the consumer of the API can be given assurances that they are retrieving exactly the
  data that is published. This functionality is provided by common use of TLS with integrity cyphers such as SHA256.
- The Confidentiality of the communicated data is not critical, but having it encrypted may prevent unidentified risks. Given that common use of TLS includes
  common use of encryption cyphers such as AES256, this is recommended for consistency sake.
- The data served by this API may not be considered readily available to all that might request the data. That is that there may be no need for client or
  app level authentication. This is typical of data that is assesed at [Anonymous READ Access](http://hl7.org/fhir/R4/security.html#Anonymous)
- The service may choose to request a security token be obtained to provide identity of the client. When a client token is provided the server will have
  more rich information to make an access control decision or record in an audit log.
- The client and server may record an Audit Log event such as [FHIR AuditEvent](http://hl7.org/fhir/R4/security.html#audit).  See
  [Audit Records](profiles_and_extensions.html#audit-records) in the Profiles and Extensions section of this guide for profiles created in this guide for
  the HL7 FHIR [AuditEvent](http://www.hl7.org/fhir/AuditEvent.html) resource.

### Purpose Of Use restrictions
Given that the use-case for this implementation guide is to support Public Health reporting, the use of the use of client context PurposeOfUse of [PUBHLTH](http://hl7.org/fhir/R4/v3/ActReason/cs.html#v3-ActReason-PUBHLTH) is recommended. The communication of PurposeOfUse is not defined in SMART-on-FHIR, so other methods might need to be used. IHE IUA profile provides a OAuth attribute to carry this.

The use of data returned by this API **should** be limited to the Public Health use-case. Re-purposing the data for other uses, such as re-identification, **should** be considered a violation of the API intention.

The setting of the PurposeOfUse to [PUBHLTH](http://hl7.org/fhir/R4/v3/ActReason/cs.html#v3-ActReason-PUBHLTH) may be addressed through policy agreements and thus not communicated in the API communications.

### Local Access Control
The maintaince of the data on the client or server is not specified in this implementation guide. Security considerations must be applied in systems design to assure that the data is appropriately protected from inappropriate use and modification. For example only authorized services and individuals **should** be allowed to update the metrics that would be served by the API defined here.

### Security and Privacy Risks
This section includes an enumeration of some of the risks identified for the use-cases covered and justifying the security and privacy mitigations indicated above.

- Risk to re-identification when the Location (region reporting on) is small enough to identify too few individuals (e.g. k-anonymity). For example where a region is so small that the community can re-identify a death because it is the only death in that region with the other indirect identifiers (gender, etc)
- Risk to reputation of a healthcare facility that is serving a community with increased negative incidents
- Risk to community reputation -- if a community is harder hit, it may be percieved negatively on that community. People in that community may be targeted by scams and bullied (cyberbullying).

In addition to the mitigations above, careful definition of regions that would be reported upon **should** assure that the region is large enough so as to lower the risk of re-identification. Where reporting regions are too small, aggregation into larger regions may be necessary.

Combined reports within one dataset increase the risk of re-identification through the coorelation of indirect identifiers within the dataset. Independent reports can mitigate this reverse coorelation used for re-identification.

### References
* [COVID-19 & HIPAA Bulletin Limited Waiver of HIPAA Sanctions and Penalties During a Nationwide Public Health Emergency](https://www.hhs.gov/sites/default/files/hipaa-and-covid-19-limited-hipaa-waiver-bulletin-508.pdf)
* [IHE Handbook on De-Identification that includes element analysis and mitigation methods](https://wiki.ihe.net/index.php/Healthcare_De-Identification_Handbook)
* [News: Coronavirus fallout: Massachusetts won’t release town-specific COVID-19 data, citing ‘stigma’ and privacy; some towns doing it on their own](https://www.masslive.com/coronavirus/2020/04/coronavirus-fallout-massachusetts-wont-release-town-specific-covid-19-data-citing-stigma-and-privacy-some-towns-doing-it-on-their-own.html) Posted Apr 07, 2020

### Updated Content
The data accessed by this implementation guide includes:

(Use CONFORMANCE Verbs)

* Measures are generally publicly available information that is http://hl7.org/fhir/R4/security.html#Anonymous Read sensitive. There may be
cases where use or testing of a given measure may be Business Sensitive.

* Measure Reports that are generally not sensitive to individual patients or workers. The reported metrics may be percieved as sensitive to the organization publishing them. For this reason the project assesses the Security and Privacy Considerations as Business Sensitive under normal situations, however it may require higher levels of sensitivity where limited data sets exist. For example, when reporting data from a small facility in an area with a very limited population.

* Evaluated and Supplemental Data which includes patient identifiable information (when the supplemental data option is used).  This data is http://hl7.org/fhir/R4/security.html#Patient Sensitive.

* Value Sets which are generally publicly available information that is http://hl7.org/fhir/R4/security.html#Anonymous Read sensitive. There may be
cases where use or testing of a given value set may be Business Sensitive.

In some cases the use of this data may require user authentication for purposes unrelated to the sensitivity of the data.

Given this assessment, the main Security Considerations are focused on:
* Assuring the data published is authentic to the organization publicating the data. That is that a consumer of the API can be given assurances that they are connecting to the authentic service endpoint they intended to connect to. This functionally is provided by common use of TLS with server sided authentication, commonly used in HTTPS.

* Taking care to validate that the server certificate validated and authenticated by the TLS / HTTPS is the server intended to connect to. This is important management of client side certificate trust store.

* Assuring the data communicated is not modified in transit. The consumer of the API can be given assurances that they are retrieving exactly the data that is published. This functionality is provided by common use of TLS with integrity cyphers such as SHA256.

* Encrypting the data. When evaluated or supplemental data is not used, the Confidentiality of the communicated data is not critical, but having it encrypted may prevent unidentified risks. Given that common use of TLS includes common use of encryption cyphers such as AES256, encryption is strongly recommended for consistency sake.

* The service may choose to request a security token be obtained to provide identity of the client. When a client token is provided the server will have more rich information to make an access control decision or record in an audit log.

* The client and server **should** record an Audit Log event such as FHIR AuditEvent. See Audit Records in the Profiles and Extensions section of this guide for profiles created in this guide for the HL7 FHIR AuditEvent resource.

Add to Security and Privacy Risks
Add text for PHI Risk
Where evaluated or supplemental data is used, the following risks **must** also be recognized:
* Direct identification of a patient within a facility, or indirect identification outside the facility. (cite: https://www.ihe.net/uploadedFiles/Documents/ITI/IHE_ITI_Handbook_De-Identification_Rev1.1_2014-06-06.pdf#page=9)
* Direct identification of a patient to an attacker with access to commonly available data sources. (ibid)