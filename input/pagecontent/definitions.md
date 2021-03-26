[Delete this content or figure out where to put it](#todo)

Definitions are critical during times of crisis. Knowing and understanding these definitions
enables the implementors of this specification to operate from a common understanding
of meaning, and those using the data produced from those implementations to respond
accordingly.

## Bed Categories
There are a number of different counts for tracking hospital beds that are relevant in bed availability:

   1. The number of beds a facility is licensed for (licensed).
   2. The number of beds that it are occupied (census).
   3. The number of beds that a facility can staff (staffed).
   4. The physical number of beds that a facility has.
   5. The number of temporary beds (overflow or surge).

Under normal circumstances the relationship between this is that
occupied <= staffed <= licensed.  In crises situations, those relationships need not
hold.  Governments have the authority to waive licensing and staffing restrictions in
order to provide adequate care.

The State of Louisiana describes these different categories in their [Definition of Bed
Poll Terms](https://esf8.dhh.la.gov/documentportal/Download/Public/Definitions%20of%20Bed%20Poll%20Terms.pdf)
documentation, which is informed by the Standardized Hospital Bed Definitions from the
AHRQ HAvBED project.

Licensed Beds
: The maximum number of beds for which a hospital holds a license to operate. Many hospitals do
not operate all of the beds for which they are licensed.

Physically Available Beds
: Beds that are licensed, physically set up, and available for use. These are beds
regularly maintained in the hospital for the use of patients, which furnish
accommodations with supporting services (such as food, laundry, and housekeeping).
These beds may or may not be staffed but are physically available.

Staffed Beds
: Beds that are licensed and physically available for which staff is on hand to attend to the
patient who occupies the bed. Staffed beds include those that are occupied and those that are vacant.

Unstaffed Beds
: Beds that are licensed and physically available and have no current staff on hand to attend
to a patient who would occupy the bed.

Occupied Beds
: Beds that are licensed, physically available, staffed, and occupied by a patient.

Vacant/Available Beds
: Beds that are vacant and to which patients can be transported immediately. These
must include supporting space, equipment, medical material, ancillary and support services, and staff to
operate under normal circumstances. These beds are licensed, physically available, and have staff on hand to
attend to the patient who occupies the bed.

To these definitions this specification adds:

Overflow Beds
: Beds that are vacant and and to which patients can be transported immediately, but for which
there may NOT be adequate supporting space, equipment, medical material, ancillary or support services to
operate under normal circumstances. These beds **ARE NOT** necessarily licensed, though they **ARE**
physically available, and have staff on hand to attend to the patient under emergency circumstances.

Temporary space is already being planned for in Philadelphia, using an event space at
Temple University according to an [Action News report](https://6abc.com/health/philly-moving-on-from-fmr-hahnemann-covid-19-plan/6054770/).
Information about these facilities will likely need to be manually reported until systems
can be configured to track and manage them.

### Intensive Care Unit vs. Critical Care Unit

## Ventilation Support

Similarly, ventilators can be shared, so the important number for ventilators may not
be the number of devices, but rather the number of patients that can be accomodated
(ventilator outputs). New York-Presbyterian Hospital began ventilator sharing in late
March as reported in a [March 26 New York Times article](https://www.nytimes.com/2020/03/26/health/coronavirus-ventilator-sharing.html).

There are also numerous efforts to increase the supply of ventilator devices, and various
organizations are created plans to construct and actually build mechanical ventilators
from readily available hardware.

Others have noted that respiratory assistance can be provided by non-invasive ventilation
(e.g, a CPAP or BiPAP(r) machine or similar device).

Ventilator
: A regulated medical device capable of providing ventilation support.  Use of a ventilator
requires intubation with an endotraceal tube to provide ventilation support, and is
considered to be an "invasive procedure", usually requiring the kind of monitoring performed
in an intensive care unit.

Non-Invasive Ventilation Equipment
: Non-invasive ventilation refers to ventilation support that does not require the patient
to be intubated with an endotracheal tube to provide ventilation support.  Non-invasive
equipment includes both CPAP and BiPAP described below.

CPAP
: A regulated medical device providing continuous positive airway pressure.

BiPAP
: BiPAP is the trade name for Respironics Bilevel Positive Airway Pressure equipement.
These are regulated medical devices similar to CPAP, but with adjusted pressure levels
during the cycles of breathing in and out.

Ventilator Output
: A component of a ventilator that is where the airflow comes out. Presently all regulated
ventilators have one output slot (and serve one patient).  However, simple alterations enable
the one slot to be multiplied by two or four to support multiple patients.

## Test Kits
Test kits are consumable medical devices that support the completion of a diagnostic
test for a given disease. There are many medical devices that operate on a variety of
different principles that can support COVID testing.  Viral testing ranges from decoding
the RNA of viral samples, to looking for specific antibodies in the blood that react
to specialized reagents (manufactured chemicals or biologics that react in a certain
way in the present of specific molecules in a specimen) and others.

To be clear, this section is talking about **diagnostic** quality tests, which can confirm
or deny the presence of disease, rather than screening tests which might readily rule out
disease, but will cannot adequately confirm it.

Reagents can be packaged in quantity to support more than a single use, thus a definition
of a test kit is needed in order to enable counting of test kits, since they may not
be individually packaged.

Presently, [most](https://www.rapidmicrobiology.com/test-method/testing-for-the-wuhan-coronavirus-a-k-a-covid-19-sars-cov-2-and-2019-ncov)
COVID-19 testing is performed using specimens collected using a nasal (nasopharyngeal
to use the precise language) swab and collection technique.  However, there are already
existing blood tests and manufacturers are working quickly to deliver point of care
blood testing systems.

Test Kit
: A quantity of materials sufficient to perform a single test on a single specimen
for a given disease.

Viral Test Kit
: A quantity of materials sufficient to perform a single test on a single specimen
for a given viral disease.  A Viral Test Kit is a type of test kit.

COVID Test Kit
: A quantity of materials sufficient to perform a single test on a single specimen
to diagnosis COVID-19.

COVID Test Kit for Swab
: A quantity of materials sufficient to perform a single test on a single specimen
collected using a nasal swab in order to diagnosis COVID-19.

COVID Test Kit for Blood
: A quantity of materials sufficient to perform a single test on a single specimen
collected from blood or blood products in order to diagnosis COVID-19.

