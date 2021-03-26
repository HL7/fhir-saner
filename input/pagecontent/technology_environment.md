Resource utilization data can be provided from a number of sources:

* **Systems Having Clinical Data**
  + Electronic Health Record (EHR) systems
  + Departmental Systems
    - Emergency Department (ED) systems
    - ICU and/or Nursing Central Monitoring systems (or stations)
    - Labor and Delivery systems
    - Laboratory Information Systems (LIS)
    - Picture Archival and Communication Systems (PACS)
    - Radiology Information Systems (RIS)
  + Clinical Data Repository (CDR)
  + Care Management Systems
  + Command and Control Systems
  + Master Patient Index
  + Security Infrastructure
  + Revenue Cycle Management/Billing Systems
* **Systems not having Clinical Data**
  + Bed Management (a.k.a., Housekeeping) systems
  + Asset Management systems
  + Surgery/Operating Room Scheduling systems
  + Workforce Management/Staff Scheduling systems
  + Inventory Control systems

   <object type="image/svg+xml" data="technology-environment.svg"></object>

## Systems Having Clinical Data
Systems in this category have access to some or all of the health records (problems,
medications, lab results, procedures, etc) for a patient, and so can often provide information
indicating COVID-19 positive or suspected patients, as well as associated problems, patient
demographics, and patient acuity (severity of illness) data.

These systems are often used to place or discontinue orders that involve medical
equipment or diagnostics (ventilators, viral tests), and so may be used to determine in use (in
the case of ventilators) or consumed (in the case of test kits) equipment or
supplies.  Some orders might also indicate use of special equipment (e.g., isolation
rooms).

### EHR Systems
Comprehensive Hospital EHR solutions may include the capabilities of the other systems
listed above, or may be integrated with other systems but not have direct access
to all data available to the other systems. Even when those capabilities are available
in the comprehensive EHR solution, other solutions may still be chosen by the facility
for a variety of reasons (features, cost, legacy, et cetera).

An EHR may have access to beds in use (because it has access to the active patient
census), but may not be able to report status of beds as known by the bed management
or housekeeping system (e.g., beds available for use, beds needing cleaning, beds
taken out of or added into service, et cetera).

An EHR may also be able to make an educated guess about number of ventilators in use
based on the number of orders for ventilation on the patients it knows about, and the
current status of the order.  But it may not ever know if the ventilator actually
showed up.

### Departmental Systems
Departmental systems are specialized "EHR" systems facilitating the operations of a
departmental setting. Several departmental systems are described in more detail in subsections
below.

#### Emergency Department Systems
Emergency department systems are simply specialized EHR systems that facilitate patient
care in an emergency room setting.  They may also support or be integrated with central
monitoring solutions enabling ED staff to monitor the status of patients on monitoring
equipment.

#### Labor and Delivery Systems
Labor and Delivery systems are another form of specialized EHR system that facilitate
treatment of mothers about to give birth in the hospital.  They generally support the
ongoing monitoring of the pregnant mother, and integrate with specialized equipment
used to support newborn delivery (e.g., fetal heart rate monitors, infusion pumps used
for anesthesia, et cetera), as well as routine charting while a mother is still in labor
but not yet ready to deliver.

#### ICU/Central Monitoring Systems
These systems bring real-time data from the EHR together with a variety of monitoring
and treatment equipment, often to provide clinical decision support for patients
needing intensive ongoing treatment and monitoring.  As a result, these systems have
awareness of the use of medical equipment (e.g., ventilators), patient acuity,
disease progression, as well as the in-use status of ICU beds, and perhaps the total
bed capacity of an ICU (but not necessarily the availability).

#### Laboratory Information Systems (LIS)
These systems are used to track and control incoming laboratory orders, to manage
laboratory automation equipment, and to manage outgoing reports on orders.  They have
some access to patient clinical and demographic data, usually enough to facilitate the
interpretation of the laboratory test, but may not have access to more data.  Some
data available in an LIS might be used to assess patient acuity, but the EHR would
be a better source of this assessment.

An LIS may also be connected to external public health reporting systems to support
biosurveillance efforts (tracking of disease in populations).  Just the placement of
certain kinds of laboratory orders may be used as a trigger to initiate alerting to
public health (e.g., highly contagious disease such as COVID-19, Ebola or Zika, or a condition
which may indicate a high risk situation in the community such as food poisoning).

Past biosurveillance efforts have not generally considered the impact of disease (such
as COVID) on available beds, but the impact of COVID on hospital bed capacity has now
made this a significant consideration.  Some organizations do use data from internal
laboratory information systems to track the prevalence, type and locations associated
healthcare acquired infections (HAI) (e.g., due to antibiotic resistant strains of
bacteria), in order to provide appropriate treatment and infection mitigation precautions.

#### Picture Archival and Communication Systems (PACS)
Within an imaging center or department, the PACS provides storage for images generated
from various imaging procedures (CT, MRI, Ultrasound, X-Ray, et cetera) and in some
solutions, the diagnostic reports (structured or unstructured) that are generated
based on those images.

These systems will generally be aware of the types of imaging studies performed, the
patients on whose behalf these studies were performed, the dates and times of the
procedure, and possibly the results (in structured reports) of the study.

#### Radiology Information Systems (RIS)
These RIS is a departmental systems used in imaging centers or departments to manage
the imaging workflow in the department.  The RIS provide a means by which imaging procedures
are scheduled and coordinated across the necessary equipment, personnel (e.g., imaging
technicians, reading radiologists), and patients, and through which orders are received, and
results transmitted back to ordering providers.

These systems will generally be aware of the procedures being requested, the results
of those procedures, the dates and times of those procedures, and the number and types
of procedures performed on behalf of different parties (e.g., ordering physicians
and organizations).
#### Care Management Systems
Care Management Systems support referral and transition between the hospital and follow-up
care environments (e.g., post-acute care, rehabilitation referrals), or referrals to other types of care
(tertiary care from ED, referral to behavioral health, etc).  These are often used to
support discharge/transfer planning, and may also involve coordination with payers to
ensure treatment will be covered at the referred to facility.

### Command and Control Systems
Command and Control Systems are used to provide a view throughout a facility of the
overall operations, including patient flow, transfers, ED, et cetera, allowing a facility
to understand its current load, forcast capacity demand, and manage logistics.  See
[Operational Command Centers](https://klasresearch.com/resources/blogs/2019/01/10/operational-command-centers)
for more details.

### Clinical Data Repository (CDR)
Hospitals (especially those affiliated with academic medical centers) utilized CDRs
for long term storage of clinical data to support analysis, research, measurement and
quality improvement efforts.

CDRs may have information about the long term impacts of disease, treatment procedures
and other factors on hospital operations might be used to aid research, but do not
generally have real-time data that could support utilization reporting.  Some of the
data in a CDR might show impacts of high utilization on hospital operations, which could
aid in identifying and addressing long term monitoring efforts.

### Revenue Cycle Management/Billing Systems
These systems maintain data used for billing, often gathered after treatment has been
completed.  This includes diagnoses, procedures, and other aspects of treatment for
which some form of payment or compensation or reporting is performed.

## Systems Not Having Clinical Data
Systems in this category do not generally have access to detailed health records for a patient,
but may have information about the status of hospital equipment and supplies, or generalized
information about a patient or group of patients.

### Security Infrastructure
Security infrastructure systems are relied upon by many software components within a
hospital, and are potentially able to deliver information about who is actively using
hospital resources (e.g., logged into the EHR or other information system), or which
patient records are currently being accessed.

### Master Patient Index
The Master Patient Index (MPI) is used by health systems to coordinate patient identities
across multiple information systems. It generally has information
Since many systems within a hospital rely on an MPI, it is often the first system to
become aware of activity for any given patient.

The MPI will generally have information about a patient including demographics, place
of residence, place of employment, insurers, and potentially other providers and/or
sources of information available that are associated with a given individual.

### Bed Management (a.k.a Housekeeping) systems
Bed Management systems are designed specifically to keep track of the status of beds
as it impacts the operations of the housekeeping in a facility.  After a patient is
discharged, the bed and room in which they resided need to be cleaned, special precautions
may be needed when rooms have been contaminated (exposed to blood, or infectious organism),
et cetera. These systems may also have operational data about ongoing bed turnaround
time (e.g., from unoccupied to available for use) which can also impact availability.

In smaller hospitals, the classic method of bed management is a bed board, which can
be as simple as a whiteboard with a table drawn on it, with room numbers, more complex
systems might use a magnetic board with pretty colored magnets. Modern bed boards get
really fancy, with ward layouts and color codes, and all sorts of bells and whistles
and reports and graphs.

### Asset Management systems
Asset management systems usually involve solutions that enable a facility to manage
equipment inventory, tags that can be attached to equipment for tracking, and sensors
that can detect nearby tags deployed in the hospital environment.  Sensors typically
need to be connected in some way to the hospital network, and the tags need to be able
to operate in a radio-frequency and sound and barrier rich environment.  This is combined
with mapping software which can plot the location of a device in a facility (in 3
dimensions).

A typical small hospital might have 10 ICU beds.  With an average ventilator utilization
ranging somewhere between 15-45% (see https://www.ncbi.nlm.nih.gov/pmc/articles/PMC3840149/),
a facility could reasonably get by with a half dozen or so ventilators for the ICU.
Under **normal** circumstances, such a small number would be reasonably managed with manual
processes, and for that reason, many facilities may not use asset management systems
to track ventilator locations.

### Surgery/Operating Room Scheduling systems
In certain crises, the availability of an open OR for a patient needing immediate emergency
surgery would be a critical piece of facility resource utilization data.  Operating
rooms use a variety of complex, expensive medical equipment and resources.  Hospitals
that want to optimize use of these spaces and equipment will use information systems designed to
ensure greater utilization of available capacity.  These systems will be aware of the
availability of operating room schedules and equipment needs.

### Workforce Management/Staff Scheduling systems
Workforce Management (a.k.a., Staff scheduling) in a hospital is an ongoing effort of looking at
current patient load, forecast load, existing staff schedules and available surge staffing resources.
Again, in smaller facilities, much of the essential management might be done through
human effort, and on a whiteboard. In larger facilities, software might be used to address
optimization of schedules, improving staff utilization.

### Inventory Control systems
Inventory control systems are used to track expendable supplies, and manage replenishment
and distribution across the facility.  These systems may have information about available
supplies such as surgical and N95 masks and personal protective equipment (PPE) that is
frequently replaced.  But these systems don't always automate the counting process that is
often needed to track current inventory levels for this kind of equipment.