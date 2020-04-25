<Location xmlns="http://hl7.org/fhir"
          type="Location"
          desc="Example Location for the State of New Jersey">
   <id value="states-NJ"/>
   <identifier>
      <system value="https://www.census.gov/geographies"/>
      <value value="34"/>
   </identifier>
   <position>
      <latitude value="40.1907"/>
      <longitude value="74.6728"/>
   </position>
</Location>
<Organization xmlns="http://hl7.org/fhir"
              type="Organization"
              desc="Example Organization for the New Jersey Department of Public Health">
   <id value="NJ-DPH"/>
   <name value="New Jersey Department of Public Health"/>
</Organization>
<MeasureReport xmlns="http://hl7.org/fhir"
               type="MeasureReport"
               desc="Example MeasureReport of  CDCPatientImpactAndHospitalCapacity  for  NJ  on  04 / 04 / 2020">
   <id value="ExampleNJ-20200404-CDCPatientImpactAndHospitalCapacity"/>
   <identifier>
      <system value="urn:ietf:rfc:3986"/>
      <value value="urn:uuid:d6fa3da2-8314-11ea-5466-09173f13e4c5"/>
   </identifier>
   <status value="complete"/>
   <type value="summary"/>
   <measure value="http://hl7.org/fhir/us/saner/Measure/CDCPatientImpactAndHospitalCapacity"/>
   <subject>
      <extension url="http://hl7.org/fhir/StructureDefinition/geolocation">
         <extension url="latitude">
            <valueDecimal value="40.1907"/>
         </extension>
         <extension url="longitude">
            <valueDecimal value="74.6728"/>
         </extension>
      </extension>
      <reference value="Location/states-NJ"/>
      <display value="State of New Jersey"/>
   </subject>
   <date value="2020-04-04"/>
   <reporter>
      <reference value="Organization/NJ-DPH"/>
      <display value="New Jersey Department of Public Health"/>
   </reporter>
   <period>
      <start value="2020-04-04"/>
      <end value="2020-04-04"/>
   </period>
   <group>
      <code>
         <coding>
            <system value="http://hl7.org/fhir/us/saner/CodeSystem/GroupSystem"/>
            <code value="Beds"/>
            <display value="Hospital Beds"/>
         </coding>
      </code>
      <population>
         <code>
            <coding>
               <system value="http://hl7.org/fhir/us/saner/CodeSystem/PopulationSystem"/>
               <code value="numTotBeds"/>
               <display value="All Hospital Beds"/>
            </coding>
            <coding>
               <system value="http://terminology.hl7.org/CodeSystem/measure-population"/>
               <code value="initial-population"/>
            </coding>
         </code>
         <count value="20000"/>
      </population>
      <population>
         <code>
            <coding>
               <system value="http://hl7.org/fhir/us/saner/CodeSystem/PopulationSystem"/>
               <code value="numBeds"/>
               <display value="Hospital Inpatient Beds"/>
            </coding>
            <coding>
               <system value="http://terminology.hl7.org/CodeSystem/measure-population"/>
               <code value="measure-population"/>
            </coding>
         </code>
         <count value="15000"/>
      </population>
      <population>
         <code>
            <coding>
               <system value="http://hl7.org/fhir/us/saner/CodeSystem/PopulationSystem"/>
               <code value="numBedsOcc"/>
               <display value="Hospital Inpatient Bed Occupancy"/>
            </coding>
            <coding>
               <system value="http://terminology.hl7.org/CodeSystem/measure-population"/>
               <code value="measure-population"/>
            </coding>
         </code>
         <count>
            <extension url="http://hl7.org/fhir/StructureDefinition/data-absent-reason">
               <valueCode value="unsupported"/>
            </extension>
         </count>
      </population>
      <population>
         <code>
            <coding>
               <system value="http://hl7.org/fhir/us/saner/CodeSystem/PopulationSystem"/>
               <code value="numICUBeds"/>
               <display value="ICU Beds"/>
            </coding>
            <coding>
               <system value="http://terminology.hl7.org/CodeSystem/measure-population"/>
               <code value="measure-population"/>
            </coding>
         </code>
         <count value="2500"/>
      </population>
      <population>
         <code>
            <coding>
               <system value="http://hl7.org/fhir/us/saner/CodeSystem/PopulationSystem"/>
               <code value="numICUBedsOcc"/>
               <display value="Total number of staffed inpatient intensive care unit (ICU) beds"/>
            </coding>
            <coding>
               <system value="http://terminology.hl7.org/CodeSystem/measure-population"/>
               <code value="measure-population"/>
            </coding>
         </code>
         <count>
            <extension url="http://hl7.org/fhir/StructureDefinition/data-absent-reason">
               <valueCode value="unsupported"/>
            </extension>
         </count>
      </population>
   </group>
   <group>
      <code>
         <coding>
            <system value="http://hl7.org/fhir/us/saner/CodeSystem/GroupSystem"/>
            <code value="Ventilators"/>
            <display value="Hospital Ventilators"/>
         </coding>
      </code>
      <population>
         <code>
            <coding>
               <system value="http://hl7.org/fhir/us/saner/CodeSystem/PopulationSystem"/>
               <code value="numVent"/>
               <display value="Mechanical Ventilators"/>
            </coding>
            <coding>
               <system value="http://terminology.hl7.org/CodeSystem/measure-population"/>
               <code value="initial-population"/>
            </coding>
         </code>
         <count value="2250"/>
      </population>
      <population>
         <code>
            <coding>
               <system value="http://hl7.org/fhir/us/saner/CodeSystem/PopulationSystem"/>
               <code value="numVentUse"/>
               <display value="Mechanical Ventilators in Use"/>
            </coding>
            <coding>
               <system value="http://terminology.hl7.org/CodeSystem/measure-population"/>
               <code value="measure-population"/>
            </coding>
         </code>
         <count>
            <extension url="http://hl7.org/fhir/StructureDefinition/data-absent-reason">
               <valueCode value="unknown"/>
            </extension>
         </count>
      </population>
   </group>
   <group>
      <code>
         <coding>
            <system value="http://hl7.org/fhir/us/saner/CodeSystem/GroupSystem"/>
            <code value="Encounters"/>
            <display value="Encounters"/>
         </coding>
      </code>
      <population>
         <code>
            <coding>
               <system value="http://hl7.org/fhir/us/saner/CodeSystem/PopulationSystem"/>
               <code value="numC19Pats"/>
               <display value="All COVID-19 Confirmed or Suspected Patients"/>
            </coding>
            <coding>
               <system value="http://terminology.hl7.org/CodeSystem/measure-population"/>
               <code value="initial-population"/>
            </coding>
         </code>
         <count value="0"/>
      </population>
      <population>
         <code>
            <coding>
               <system value="http://hl7.org/fhir/us/saner/CodeSystem/PopulationSystem"/>
               <code value="numC19VentPats"/>
               <display value="COVID-19 Patients on a Ventilator"/>
            </coding>
            <coding>
               <system value="http://terminology.hl7.org/CodeSystem/measure-population"/>
               <code value="measure-population"/>
            </coding>
         </code>
         <count>
            <extension url="http://hl7.org/fhir/StructureDefinition/data-absent-reason">
               <valueCode value="unknown"/>
            </extension>
         </count>
      </population>
      <population>
         <code>
            <coding>
               <system value="http://hl7.org/fhir/us/saner/CodeSystem/PopulationSystem"/>
               <code value="numC19HospPats"/>
               <display value="Hospitalized COVID-19 Patients"/>
            </coding>
            <coding>
               <system value="http://terminology.hl7.org/CodeSystem/measure-population"/>
               <code value="measure-population"/>
            </coding>
         </code>
         <count value="4000"/>
      </population>
      <population>
         <code>
            <coding>
               <system value="http://hl7.org/fhir/us/saner/CodeSystem/PopulationSystem"/>
               <code value="numC19MechVentPats"/>
               <display value="Hospitalized and Ventilated COVID-19 Patients"/>
            </coding>
            <coding>
               <system value="http://terminology.hl7.org/CodeSystem/measure-population"/>
               <code value="measure-population"/>
            </coding>
         </code>
         <count>
            <extension url="http://hl7.org/fhir/StructureDefinition/data-absent-reason">
               <valueCode value="unknown"/>
            </extension>
         </count>
      </population>
      <population>
         <code>
            <coding>
               <system value="http://hl7.org/fhir/us/saner/CodeSystem/PopulationSystem"/>
               <code value="numC19HOPats"/>
               <display value="Hospital Onset COVID-19 Patients"/>
            </coding>
            <coding>
               <system value="http://terminology.hl7.org/CodeSystem/measure-population"/>
               <code value="measure-population"/>
            </coding>
         </code>
         <count>
            <extension url="http://hl7.org/fhir/StructureDefinition/data-absent-reason">
               <valueCode value="unsupported"/>
            </extension>
         </count>
      </population>
      <population>
         <code>
            <coding>
               <system value="http://hl7.org/fhir/us/saner/CodeSystem/PopulationSystem"/>
               <code value="numC19OverflowPats"/>
               <display value="ED/Overflow COVID-19 Patients"/>
            </coding>
            <coding>
               <system value="http://terminology.hl7.org/CodeSystem/measure-population"/>
               <code value="measure-population"/>
            </coding>
         </code>
         <count>
            <extension url="http://hl7.org/fhir/StructureDefinition/data-absent-reason">
               <valueCode value="unsupported"/>
            </extension>
         </count>
      </population>
      <population>
         <code>
            <coding>
               <system value="http://hl7.org/fhir/us/saner/CodeSystem/PopulationSystem"/>
               <code value="numC19OFMechVentPats"/>
               <display value="ED/Overflow and Ventilated COVID-19 Patients"/>
            </coding>
            <coding>
               <system value="http://terminology.hl7.org/CodeSystem/measure-population"/>
               <code value="measure-population"/>
            </coding>
         </code>
         <count>
            <extension url="http://hl7.org/fhir/StructureDefinition/data-absent-reason">
               <valueCode value="unsupported"/>
            </extension>
         </count>
      </population>
      <population>
         <code>
            <coding>
               <system value="http://hl7.org/fhir/us/saner/CodeSystem/PopulationSystem"/>
               <code value="numC19Died"/>
               <display value="COVID-19 Patient Deaths"/>
            </coding>
            <coding>
               <system value="http://terminology.hl7.org/CodeSystem/measure-population"/>
               <code value="measure-population"/>
            </coding>
         </code>
         <count>
            <extension url="http://hl7.org/fhir/StructureDefinition/data-absent-reason">
               <valueCode value="unsupported"/>
            </extension>
         </count>
      </population>
   </group>
</MeasureReport>
<MeasureReport xmlns="http://hl7.org/fhir"
               type="MeasureReport"
               desc="Example MeasureReport of  CDCPatientImpactAndHospitalCapacity  for  NJ  on  04 / 05 / 2020">
   <id value="ExampleNJ-20200405-CDCPatientImpactAndHospitalCapacity"/>
   <identifier>
      <system value="urn:ietf:rfc:3986"/>
      <value value="urn:uuid:d6fa3de3-8314-11ea-5466-09173f13e4c5"/>
   </identifier>
   <status value="complete"/>
   <type value="summary"/>
   <measure value="http://hl7.org/fhir/us/saner/Measure/CDCPatientImpactAndHospitalCapacity"/>
   <subject>
      <extension url="http://hl7.org/fhir/StructureDefinition/geolocation">
         <extension url="latitude">
            <valueDecimal value="40.1907"/>
         </extension>
         <extension url="longitude">
            <valueDecimal value="74.6728"/>
         </extension>
      </extension>
      <reference value="Location/states-NJ"/>
      <display value="State of New Jersey"/>
   </subject>
   <date value="2020-04-05"/>
   <reporter>
      <reference value="Organization/NJ-DPH"/>
      <display value="New Jersey Department of Public Health"/>
   </reporter>
   <period>
      <start value="2020-04-05"/>
      <end value="2020-04-05"/>
   </period>
   <group>
      <code>
         <coding>
            <system value="http://hl7.org/fhir/us/saner/CodeSystem/GroupSystem"/>
            <code value="Beds"/>
            <display value="Hospital Beds"/>
         </coding>
      </code>
      <population>
         <code>
            <coding>
               <system value="http://hl7.org/fhir/us/saner/CodeSystem/PopulationSystem"/>
               <code value="numTotBeds"/>
               <display value="All Hospital Beds"/>
            </coding>
            <coding>
               <system value="http://terminology.hl7.org/CodeSystem/measure-population"/>
               <code value="initial-population"/>
            </coding>
         </code>
         <count value="20000"/>
      </population>
      <population>
         <code>
            <coding>
               <system value="http://hl7.org/fhir/us/saner/CodeSystem/PopulationSystem"/>
               <code value="numBeds"/>
               <display value="Hospital Inpatient Beds"/>
            </coding>
            <coding>
               <system value="http://terminology.hl7.org/CodeSystem/measure-population"/>
               <code value="measure-population"/>
            </coding>
         </code>
         <count value="15000"/>
      </population>
      <population>
         <code>
            <coding>
               <system value="http://hl7.org/fhir/us/saner/CodeSystem/PopulationSystem"/>
               <code value="numBedsOcc"/>
               <display value="Hospital Inpatient Bed Occupancy"/>
            </coding>
            <coding>
               <system value="http://terminology.hl7.org/CodeSystem/measure-population"/>
               <code value="measure-population"/>
            </coding>
         </code>
         <count>
            <extension url="http://hl7.org/fhir/StructureDefinition/data-absent-reason">
               <valueCode value="unsupported"/>
            </extension>
         </count>
      </population>
      <population>
         <code>
            <coding>
               <system value="http://hl7.org/fhir/us/saner/CodeSystem/PopulationSystem"/>
               <code value="numICUBeds"/>
               <display value="ICU Beds"/>
            </coding>
            <coding>
               <system value="http://terminology.hl7.org/CodeSystem/measure-population"/>
               <code value="measure-population"/>
            </coding>
         </code>
         <count value="2500"/>
      </population>
      <population>
         <code>
            <coding>
               <system value="http://hl7.org/fhir/us/saner/CodeSystem/PopulationSystem"/>
               <code value="numICUBedsOcc"/>
               <display value="Total number of staffed inpatient intensive care unit (ICU) beds"/>
            </coding>
            <coding>
               <system value="http://terminology.hl7.org/CodeSystem/measure-population"/>
               <code value="measure-population"/>
            </coding>
         </code>
         <count>
            <extension url="http://hl7.org/fhir/StructureDefinition/data-absent-reason">
               <valueCode value="unsupported"/>
            </extension>
         </count>
      </population>
   </group>
   <group>
      <code>
         <coding>
            <system value="http://hl7.org/fhir/us/saner/CodeSystem/GroupSystem"/>
            <code value="Ventilators"/>
            <display value="Hospital Ventilators"/>
         </coding>
      </code>
      <population>
         <code>
            <coding>
               <system value="http://hl7.org/fhir/us/saner/CodeSystem/PopulationSystem"/>
               <code value="numVent"/>
               <display value="Mechanical Ventilators"/>
            </coding>
            <coding>
               <system value="http://terminology.hl7.org/CodeSystem/measure-population"/>
               <code value="initial-population"/>
            </coding>
         </code>
         <count value="2250"/>
      </population>
      <population>
         <code>
            <coding>
               <system value="http://hl7.org/fhir/us/saner/CodeSystem/PopulationSystem"/>
               <code value="numVentUse"/>
               <display value="Mechanical Ventilators in Use"/>
            </coding>
            <coding>
               <system value="http://terminology.hl7.org/CodeSystem/measure-population"/>
               <code value="measure-population"/>
            </coding>
         </code>
         <count>
            <extension url="http://hl7.org/fhir/StructureDefinition/data-absent-reason">
               <valueCode value="unknown"/>
            </extension>
         </count>
      </population>
   </group>
   <group>
      <code>
         <coding>
            <system value="http://hl7.org/fhir/us/saner/CodeSystem/GroupSystem"/>
            <code value="Encounters"/>
            <display value="Encounters"/>
         </coding>
      </code>
      <population>
         <code>
            <coding>
               <system value="http://hl7.org/fhir/us/saner/CodeSystem/PopulationSystem"/>
               <code value="numC19Pats"/>
               <display value="All COVID-19 Confirmed or Suspected Patients"/>
            </coding>
            <coding>
               <system value="http://terminology.hl7.org/CodeSystem/measure-population"/>
               <code value="initial-population"/>
            </coding>
         </code>
         <count value="0"/>
      </population>
      <population>
         <code>
            <coding>
               <system value="http://hl7.org/fhir/us/saner/CodeSystem/PopulationSystem"/>
               <code value="numC19VentPats"/>
               <display value="COVID-19 Patients on a Ventilator"/>
            </coding>
            <coding>
               <system value="http://terminology.hl7.org/CodeSystem/measure-population"/>
               <code value="measure-population"/>
            </coding>
         </code>
         <count>
            <extension url="http://hl7.org/fhir/StructureDefinition/data-absent-reason">
               <valueCode value="unknown"/>
            </extension>
         </count>
      </population>
      <population>
         <code>
            <coding>
               <system value="http://hl7.org/fhir/us/saner/CodeSystem/PopulationSystem"/>
               <code value="numC19HospPats"/>
               <display value="Hospitalized COVID-19 Patients"/>
            </coding>
            <coding>
               <system value="http://terminology.hl7.org/CodeSystem/measure-population"/>
               <code value="measure-population"/>
            </coding>
         </code>
         <count value="4000"/>
      </population>
      <population>
         <code>
            <coding>
               <system value="http://hl7.org/fhir/us/saner/CodeSystem/PopulationSystem"/>
               <code value="numC19MechVentPats"/>
               <display value="Hospitalized and Ventilated COVID-19 Patients"/>
            </coding>
            <coding>
               <system value="http://terminology.hl7.org/CodeSystem/measure-population"/>
               <code value="measure-population"/>
            </coding>
         </code>
         <count>
            <extension url="http://hl7.org/fhir/StructureDefinition/data-absent-reason">
               <valueCode value="unknown"/>
            </extension>
         </count>
      </population>
      <population>
         <code>
            <coding>
               <system value="http://hl7.org/fhir/us/saner/CodeSystem/PopulationSystem"/>
               <code value="numC19HOPats"/>
               <display value="Hospital Onset COVID-19 Patients"/>
            </coding>
            <coding>
               <system value="http://terminology.hl7.org/CodeSystem/measure-population"/>
               <code value="measure-population"/>
            </coding>
         </code>
         <count>
            <extension url="http://hl7.org/fhir/StructureDefinition/data-absent-reason">
               <valueCode value="unsupported"/>
            </extension>
         </count>
      </population>
      <population>
         <code>
            <coding>
               <system value="http://hl7.org/fhir/us/saner/CodeSystem/PopulationSystem"/>
               <code value="numC19OverflowPats"/>
               <display value="ED/Overflow COVID-19 Patients"/>
            </coding>
            <coding>
               <system value="http://terminology.hl7.org/CodeSystem/measure-population"/>
               <code value="measure-population"/>
            </coding>
         </code>
         <count>
            <extension url="http://hl7.org/fhir/StructureDefinition/data-absent-reason">
               <valueCode value="unsupported"/>
            </extension>
         </count>
      </population>
      <population>
         <code>
            <coding>
               <system value="http://hl7.org/fhir/us/saner/CodeSystem/PopulationSystem"/>
               <code value="numC19OFMechVentPats"/>
               <display value="ED/Overflow and Ventilated COVID-19 Patients"/>
            </coding>
            <coding>
               <system value="http://terminology.hl7.org/CodeSystem/measure-population"/>
               <code value="measure-population"/>
            </coding>
         </code>
         <count>
            <extension url="http://hl7.org/fhir/StructureDefinition/data-absent-reason">
               <valueCode value="unsupported"/>
            </extension>
         </count>
      </population>
      <population>
         <code>
            <coding>
               <system value="http://hl7.org/fhir/us/saner/CodeSystem/PopulationSystem"/>
               <code value="numC19Died"/>
               <display value="COVID-19 Patient Deaths"/>
            </coding>
            <coding>
               <system value="http://terminology.hl7.org/CodeSystem/measure-population"/>
               <code value="measure-population"/>
            </coding>
         </code>
         <count>
            <extension url="http://hl7.org/fhir/StructureDefinition/data-absent-reason">
               <valueCode value="unsupported"/>
            </extension>
         </count>
      </population>
   </group>
</MeasureReport>
<MeasureReport xmlns="http://hl7.org/fhir"
               type="MeasureReport"
               desc="Example MeasureReport of  CDCPatientImpactAndHospitalCapacity  for  NJ  on  04 / 06 / 2020">
   <id value="ExampleNJ-20200406-CDCPatientImpactAndHospitalCapacity"/>
   <identifier>
      <system value="urn:ietf:rfc:3986"/>
      <value value="urn:uuid:d6fa3e23-8314-11ea-5466-09173f13e4c5"/>
   </identifier>
   <status value="complete"/>
   <type value="summary"/>
   <measure value="http://hl7.org/fhir/us/saner/Measure/CDCPatientImpactAndHospitalCapacity"/>
   <subject>
      <extension url="http://hl7.org/fhir/StructureDefinition/geolocation">
         <extension url="latitude">
            <valueDecimal value="40.1907"/>
         </extension>
         <extension url="longitude">
            <valueDecimal value="74.6728"/>
         </extension>
      </extension>
      <reference value="Location/states-NJ"/>
      <display value="State of New Jersey"/>
   </subject>
   <date value="2020-04-06"/>
   <reporter>
      <reference value="Organization/NJ-DPH"/>
      <display value="New Jersey Department of Public Health"/>
   </reporter>
   <period>
      <start value="2020-04-06"/>
      <end value="2020-04-06"/>
   </period>
   <group>
      <code>
         <coding>
            <system value="http://hl7.org/fhir/us/saner/CodeSystem/GroupSystem"/>
            <code value="Beds"/>
            <display value="Hospital Beds"/>
         </coding>
      </code>
      <population>
         <code>
            <coding>
               <system value="http://hl7.org/fhir/us/saner/CodeSystem/PopulationSystem"/>
               <code value="numTotBeds"/>
               <display value="All Hospital Beds"/>
            </coding>
            <coding>
               <system value="http://terminology.hl7.org/CodeSystem/measure-population"/>
               <code value="initial-population"/>
            </coding>
         </code>
         <count value="20000"/>
      </population>
      <population>
         <code>
            <coding>
               <system value="http://hl7.org/fhir/us/saner/CodeSystem/PopulationSystem"/>
               <code value="numBeds"/>
               <display value="Hospital Inpatient Beds"/>
            </coding>
            <coding>
               <system value="http://terminology.hl7.org/CodeSystem/measure-population"/>
               <code value="measure-population"/>
            </coding>
         </code>
         <count value="15000"/>
      </population>
      <population>
         <code>
            <coding>
               <system value="http://hl7.org/fhir/us/saner/CodeSystem/PopulationSystem"/>
               <code value="numBedsOcc"/>
               <display value="Hospital Inpatient Bed Occupancy"/>
            </coding>
            <coding>
               <system value="http://terminology.hl7.org/CodeSystem/measure-population"/>
               <code value="measure-population"/>
            </coding>
         </code>
         <count>
            <extension url="http://hl7.org/fhir/StructureDefinition/data-absent-reason">
               <valueCode value="unsupported"/>
            </extension>
         </count>
      </population>
      <population>
         <code>
            <coding>
               <system value="http://hl7.org/fhir/us/saner/CodeSystem/PopulationSystem"/>
               <code value="numICUBeds"/>
               <display value="ICU Beds"/>
            </coding>
            <coding>
               <system value="http://terminology.hl7.org/CodeSystem/measure-population"/>
               <code value="measure-population"/>
            </coding>
         </code>
         <count value="2500"/>
      </population>
      <population>
         <code>
            <coding>
               <system value="http://hl7.org/fhir/us/saner/CodeSystem/PopulationSystem"/>
               <code value="numICUBedsOcc"/>
               <display value="Total number of staffed inpatient intensive care unit (ICU) beds"/>
            </coding>
            <coding>
               <system value="http://terminology.hl7.org/CodeSystem/measure-population"/>
               <code value="measure-population"/>
            </coding>
         </code>
         <count>
            <extension url="http://hl7.org/fhir/StructureDefinition/data-absent-reason">
               <valueCode value="unsupported"/>
            </extension>
         </count>
      </population>
   </group>
   <group>
      <code>
         <coding>
            <system value="http://hl7.org/fhir/us/saner/CodeSystem/GroupSystem"/>
            <code value="Ventilators"/>
            <display value="Hospital Ventilators"/>
         </coding>
      </code>
      <population>
         <code>
            <coding>
               <system value="http://hl7.org/fhir/us/saner/CodeSystem/PopulationSystem"/>
               <code value="numVent"/>
               <display value="Mechanical Ventilators"/>
            </coding>
            <coding>
               <system value="http://terminology.hl7.org/CodeSystem/measure-population"/>
               <code value="initial-population"/>
            </coding>
         </code>
         <count value="2250"/>
      </population>
      <population>
         <code>
            <coding>
               <system value="http://hl7.org/fhir/us/saner/CodeSystem/PopulationSystem"/>
               <code value="numVentUse"/>
               <display value="Mechanical Ventilators in Use"/>
            </coding>
            <coding>
               <system value="http://terminology.hl7.org/CodeSystem/measure-population"/>
               <code value="measure-population"/>
            </coding>
         </code>
         <count value="1576"/>
      </population>
   </group>
   <group>
      <code>
         <coding>
            <system value="http://hl7.org/fhir/us/saner/CodeSystem/GroupSystem"/>
            <code value="Encounters"/>
            <display value="Encounters"/>
         </coding>
      </code>
      <population>
         <code>
            <coding>
               <system value="http://hl7.org/fhir/us/saner/CodeSystem/PopulationSystem"/>
               <code value="numC19Pats"/>
               <display value="All COVID-19 Confirmed or Suspected Patients"/>
            </coding>
            <coding>
               <system value="http://terminology.hl7.org/CodeSystem/measure-population"/>
               <code value="initial-population"/>
            </coding>
         </code>
         <count value="2390"/>
      </population>
      <population>
         <code>
            <coding>
               <system value="http://hl7.org/fhir/us/saner/CodeSystem/PopulationSystem"/>
               <code value="numC19VentPats"/>
               <display value="COVID-19 Patients on a Ventilator"/>
            </coding>
            <coding>
               <system value="http://terminology.hl7.org/CodeSystem/measure-population"/>
               <code value="measure-population"/>
            </coding>
         </code>
         <count>
            <extension url="http://hl7.org/fhir/StructureDefinition/data-absent-reason">
               <valueCode value="unknown"/>
            </extension>
         </count>
      </population>
      <population>
         <code>
            <coding>
               <system value="http://hl7.org/fhir/us/saner/CodeSystem/PopulationSystem"/>
               <code value="numC19HospPats"/>
               <display value="Hospitalized COVID-19 Patients"/>
            </coding>
            <coding>
               <system value="http://terminology.hl7.org/CodeSystem/measure-population"/>
               <code value="measure-population"/>
            </coding>
         </code>
         <count value="6390"/>
      </population>
      <population>
         <code>
            <coding>
               <system value="http://hl7.org/fhir/us/saner/CodeSystem/PopulationSystem"/>
               <code value="numC19MechVentPats"/>
               <display value="Hospitalized and Ventilated COVID-19 Patients"/>
            </coding>
            <coding>
               <system value="http://terminology.hl7.org/CodeSystem/measure-population"/>
               <code value="measure-population"/>
            </coding>
         </code>
         <count value="1263"/>
      </population>
      <population>
         <code>
            <coding>
               <system value="http://hl7.org/fhir/us/saner/CodeSystem/PopulationSystem"/>
               <code value="numC19HOPats"/>
               <display value="Hospital Onset COVID-19 Patients"/>
            </coding>
            <coding>
               <system value="http://terminology.hl7.org/CodeSystem/measure-population"/>
               <code value="measure-population"/>
            </coding>
         </code>
         <count>
            <extension url="http://hl7.org/fhir/StructureDefinition/data-absent-reason">
               <valueCode value="unsupported"/>
            </extension>
         </count>
      </population>
      <population>
         <code>
            <coding>
               <system value="http://hl7.org/fhir/us/saner/CodeSystem/PopulationSystem"/>
               <code value="numC19OverflowPats"/>
               <display value="ED/Overflow COVID-19 Patients"/>
            </coding>
            <coding>
               <system value="http://terminology.hl7.org/CodeSystem/measure-population"/>
               <code value="measure-population"/>
            </coding>
         </code>
         <count>
            <extension url="http://hl7.org/fhir/StructureDefinition/data-absent-reason">
               <valueCode value="unsupported"/>
            </extension>
         </count>
      </population>
      <population>
         <code>
            <coding>
               <system value="http://hl7.org/fhir/us/saner/CodeSystem/PopulationSystem"/>
               <code value="numC19OFMechVentPats"/>
               <display value="ED/Overflow and Ventilated COVID-19 Patients"/>
            </coding>
            <coding>
               <system value="http://terminology.hl7.org/CodeSystem/measure-population"/>
               <code value="measure-population"/>
            </coding>
         </code>
         <count>
            <extension url="http://hl7.org/fhir/StructureDefinition/data-absent-reason">
               <valueCode value="unsupported"/>
            </extension>
         </count>
      </population>
      <population>
         <code>
            <coding>
               <system value="http://hl7.org/fhir/us/saner/CodeSystem/PopulationSystem"/>
               <code value="numC19Died"/>
               <display value="COVID-19 Patient Deaths"/>
            </coding>
            <coding>
               <system value="http://terminology.hl7.org/CodeSystem/measure-population"/>
               <code value="measure-population"/>
            </coding>
         </code>
         <count>
            <extension url="http://hl7.org/fhir/StructureDefinition/data-absent-reason">
               <valueCode value="unsupported"/>
            </extension>
         </count>
      </population>
   </group>
</MeasureReport>
<MeasureReport xmlns="http://hl7.org/fhir"
               type="MeasureReport"
               desc="Example MeasureReport of  CDCPatientImpactAndHospitalCapacity  for  NJ  on  04 / 07 / 2020">
   <id value="ExampleNJ-20200407-CDCPatientImpactAndHospitalCapacity"/>
   <identifier>
      <system value="urn:ietf:rfc:3986"/>
      <value value="urn:uuid:d6fa3e65-8314-11ea-5466-09173f13e4c5"/>
   </identifier>
   <status value="complete"/>
   <type value="summary"/>
   <measure value="http://hl7.org/fhir/us/saner/Measure/CDCPatientImpactAndHospitalCapacity"/>
   <subject>
      <extension url="http://hl7.org/fhir/StructureDefinition/geolocation">
         <extension url="latitude">
            <valueDecimal value="40.1907"/>
         </extension>
         <extension url="longitude">
            <valueDecimal value="74.6728"/>
         </extension>
      </extension>
      <reference value="Location/states-NJ"/>
      <display value="State of New Jersey"/>
   </subject>
   <date value="2020-04-07"/>
   <reporter>
      <reference value="Organization/NJ-DPH"/>
      <display value="New Jersey Department of Public Health"/>
   </reporter>
   <period>
      <start value="2020-04-07"/>
      <end value="2020-04-07"/>
   </period>
   <group>
      <code>
         <coding>
            <system value="http://hl7.org/fhir/us/saner/CodeSystem/GroupSystem"/>
            <code value="Beds"/>
            <display value="Hospital Beds"/>
         </coding>
      </code>
      <population>
         <code>
            <coding>
               <system value="http://hl7.org/fhir/us/saner/CodeSystem/PopulationSystem"/>
               <code value="numTotBeds"/>
               <display value="All Hospital Beds"/>
            </coding>
            <coding>
               <system value="http://terminology.hl7.org/CodeSystem/measure-population"/>
               <code value="initial-population"/>
            </coding>
         </code>
         <count value="20000"/>
      </population>
      <population>
         <code>
            <coding>
               <system value="http://hl7.org/fhir/us/saner/CodeSystem/PopulationSystem"/>
               <code value="numBeds"/>
               <display value="Hospital Inpatient Beds"/>
            </coding>
            <coding>
               <system value="http://terminology.hl7.org/CodeSystem/measure-population"/>
               <code value="measure-population"/>
            </coding>
         </code>
         <count value="15000"/>
      </population>
      <population>
         <code>
            <coding>
               <system value="http://hl7.org/fhir/us/saner/CodeSystem/PopulationSystem"/>
               <code value="numBedsOcc"/>
               <display value="Hospital Inpatient Bed Occupancy"/>
            </coding>
            <coding>
               <system value="http://terminology.hl7.org/CodeSystem/measure-population"/>
               <code value="measure-population"/>
            </coding>
         </code>
         <count>
            <extension url="http://hl7.org/fhir/StructureDefinition/data-absent-reason">
               <valueCode value="unsupported"/>
            </extension>
         </count>
      </population>
      <population>
         <code>
            <coding>
               <system value="http://hl7.org/fhir/us/saner/CodeSystem/PopulationSystem"/>
               <code value="numICUBeds"/>
               <display value="ICU Beds"/>
            </coding>
            <coding>
               <system value="http://terminology.hl7.org/CodeSystem/measure-population"/>
               <code value="measure-population"/>
            </coding>
         </code>
         <count value="2500"/>
      </population>
      <population>
         <code>
            <coding>
               <system value="http://hl7.org/fhir/us/saner/CodeSystem/PopulationSystem"/>
               <code value="numICUBedsOcc"/>
               <display value="Total number of staffed inpatient intensive care unit (ICU) beds"/>
            </coding>
            <coding>
               <system value="http://terminology.hl7.org/CodeSystem/measure-population"/>
               <code value="measure-population"/>
            </coding>
         </code>
         <count>
            <extension url="http://hl7.org/fhir/StructureDefinition/data-absent-reason">
               <valueCode value="unsupported"/>
            </extension>
         </count>
      </population>
   </group>
   <group>
      <code>
         <coding>
            <system value="http://hl7.org/fhir/us/saner/CodeSystem/GroupSystem"/>
            <code value="Ventilators"/>
            <display value="Hospital Ventilators"/>
         </coding>
      </code>
      <population>
         <code>
            <coding>
               <system value="http://hl7.org/fhir/us/saner/CodeSystem/PopulationSystem"/>
               <code value="numVent"/>
               <display value="Mechanical Ventilators"/>
            </coding>
            <coding>
               <system value="http://terminology.hl7.org/CodeSystem/measure-population"/>
               <code value="initial-population"/>
            </coding>
         </code>
         <count value="2250"/>
      </population>
      <population>
         <code>
            <coding>
               <system value="http://hl7.org/fhir/us/saner/CodeSystem/PopulationSystem"/>
               <code value="numVentUse"/>
               <display value="Mechanical Ventilators in Use"/>
            </coding>
            <coding>
               <system value="http://terminology.hl7.org/CodeSystem/measure-population"/>
               <code value="measure-population"/>
            </coding>
         </code>
         <count value="1853"/>
      </population>
   </group>
   <group>
      <code>
         <coding>
            <system value="http://hl7.org/fhir/us/saner/CodeSystem/GroupSystem"/>
            <code value="Encounters"/>
            <display value="Encounters"/>
         </coding>
      </code>
      <population>
         <code>
            <coding>
               <system value="http://hl7.org/fhir/us/saner/CodeSystem/PopulationSystem"/>
               <code value="numC19Pats"/>
               <display value="All COVID-19 Confirmed or Suspected Patients"/>
            </coding>
            <coding>
               <system value="http://terminology.hl7.org/CodeSystem/measure-population"/>
               <code value="initial-population"/>
            </coding>
         </code>
         <count value="627"/>
      </population>
      <population>
         <code>
            <coding>
               <system value="http://hl7.org/fhir/us/saner/CodeSystem/PopulationSystem"/>
               <code value="numC19VentPats"/>
               <display value="COVID-19 Patients on a Ventilator"/>
            </coding>
            <coding>
               <system value="http://terminology.hl7.org/CodeSystem/measure-population"/>
               <code value="measure-population"/>
            </coding>
         </code>
         <count value="1651"/>
      </population>
      <population>
         <code>
            <coding>
               <system value="http://hl7.org/fhir/us/saner/CodeSystem/PopulationSystem"/>
               <code value="numC19HospPats"/>
               <display value="Hospitalized COVID-19 Patients"/>
            </coding>
            <coding>
               <system value="http://terminology.hl7.org/CodeSystem/measure-population"/>
               <code value="measure-population"/>
            </coding>
         </code>
         <count value="7017"/>
      </population>
      <population>
         <code>
            <coding>
               <system value="http://hl7.org/fhir/us/saner/CodeSystem/PopulationSystem"/>
               <code value="numC19MechVentPats"/>
               <display value="Hospitalized and Ventilated COVID-19 Patients"/>
            </coding>
            <coding>
               <system value="http://terminology.hl7.org/CodeSystem/measure-population"/>
               <code value="measure-population"/>
            </coding>
         </code>
         <count value="1540"/>
      </population>
      <population>
         <code>
            <coding>
               <system value="http://hl7.org/fhir/us/saner/CodeSystem/PopulationSystem"/>
               <code value="numC19HOPats"/>
               <display value="Hospital Onset COVID-19 Patients"/>
            </coding>
            <coding>
               <system value="http://terminology.hl7.org/CodeSystem/measure-population"/>
               <code value="measure-population"/>
            </coding>
         </code>
         <count>
            <extension url="http://hl7.org/fhir/StructureDefinition/data-absent-reason">
               <valueCode value="unsupported"/>
            </extension>
         </count>
      </population>
      <population>
         <code>
            <coding>
               <system value="http://hl7.org/fhir/us/saner/CodeSystem/PopulationSystem"/>
               <code value="numC19OverflowPats"/>
               <display value="ED/Overflow COVID-19 Patients"/>
            </coding>
            <coding>
               <system value="http://terminology.hl7.org/CodeSystem/measure-population"/>
               <code value="measure-population"/>
            </coding>
         </code>
         <count>
            <extension url="http://hl7.org/fhir/StructureDefinition/data-absent-reason">
               <valueCode value="unsupported"/>
            </extension>
         </count>
      </population>
      <population>
         <code>
            <coding>
               <system value="http://hl7.org/fhir/us/saner/CodeSystem/PopulationSystem"/>
               <code value="numC19OFMechVentPats"/>
               <display value="ED/Overflow and Ventilated COVID-19 Patients"/>
            </coding>
            <coding>
               <system value="http://terminology.hl7.org/CodeSystem/measure-population"/>
               <code value="measure-population"/>
            </coding>
         </code>
         <count>
            <extension url="http://hl7.org/fhir/StructureDefinition/data-absent-reason">
               <valueCode value="unsupported"/>
            </extension>
         </count>
      </population>
      <population>
         <code>
            <coding>
               <system value="http://hl7.org/fhir/us/saner/CodeSystem/PopulationSystem"/>
               <code value="numC19Died"/>
               <display value="COVID-19 Patient Deaths"/>
            </coding>
            <coding>
               <system value="http://terminology.hl7.org/CodeSystem/measure-population"/>
               <code value="measure-population"/>
            </coding>
         </code>
         <count>
            <extension url="http://hl7.org/fhir/StructureDefinition/data-absent-reason">
               <valueCode value="unsupported"/>
            </extension>
         </count>
      </population>
   </group>
</MeasureReport>
<MeasureReport xmlns="http://hl7.org/fhir"
               type="MeasureReport"
               desc="Example MeasureReport of  CDCPatientImpactAndHospitalCapacity  for  NJ  on  04 / 08 / 2020">
   <id value="ExampleNJ-20200408-CDCPatientImpactAndHospitalCapacity"/>
   <identifier>
      <system value="urn:ietf:rfc:3986"/>
      <value value="urn:uuid:d6fa3ea8-8314-11ea-5466-09173f13e4c5"/>
   </identifier>
   <status value="complete"/>
   <type value="summary"/>
   <measure value="http://hl7.org/fhir/us/saner/Measure/CDCPatientImpactAndHospitalCapacity"/>
   <subject>
      <extension url="http://hl7.org/fhir/StructureDefinition/geolocation">
         <extension url="latitude">
            <valueDecimal value="40.1907"/>
         </extension>
         <extension url="longitude">
            <valueDecimal value="74.6728"/>
         </extension>
      </extension>
      <reference value="Location/states-NJ"/>
      <display value="State of New Jersey"/>
   </subject>
   <date value="2020-04-08"/>
   <reporter>
      <reference value="Organization/NJ-DPH"/>
      <display value="New Jersey Department of Public Health"/>
   </reporter>
   <period>
      <start value="2020-04-08"/>
      <end value="2020-04-08"/>
   </period>
   <group>
      <code>
         <coding>
            <system value="http://hl7.org/fhir/us/saner/CodeSystem/GroupSystem"/>
            <code value="Beds"/>
            <display value="Hospital Beds"/>
         </coding>
      </code>
      <population>
         <code>
            <coding>
               <system value="http://hl7.org/fhir/us/saner/CodeSystem/PopulationSystem"/>
               <code value="numTotBeds"/>
               <display value="All Hospital Beds"/>
            </coding>
            <coding>
               <system value="http://terminology.hl7.org/CodeSystem/measure-population"/>
               <code value="initial-population"/>
            </coding>
         </code>
         <count value="20000"/>
      </population>
      <population>
         <code>
            <coding>
               <system value="http://hl7.org/fhir/us/saner/CodeSystem/PopulationSystem"/>
               <code value="numBeds"/>
               <display value="Hospital Inpatient Beds"/>
            </coding>
            <coding>
               <system value="http://terminology.hl7.org/CodeSystem/measure-population"/>
               <code value="measure-population"/>
            </coding>
         </code>
         <count value="15000"/>
      </population>
      <population>
         <code>
            <coding>
               <system value="http://hl7.org/fhir/us/saner/CodeSystem/PopulationSystem"/>
               <code value="numBedsOcc"/>
               <display value="Hospital Inpatient Bed Occupancy"/>
            </coding>
            <coding>
               <system value="http://terminology.hl7.org/CodeSystem/measure-population"/>
               <code value="measure-population"/>
            </coding>
         </code>
         <count>
            <extension url="http://hl7.org/fhir/StructureDefinition/data-absent-reason">
               <valueCode value="unsupported"/>
            </extension>
         </count>
      </population>
      <population>
         <code>
            <coding>
               <system value="http://hl7.org/fhir/us/saner/CodeSystem/PopulationSystem"/>
               <code value="numICUBeds"/>
               <display value="ICU Beds"/>
            </coding>
            <coding>
               <system value="http://terminology.hl7.org/CodeSystem/measure-population"/>
               <code value="measure-population"/>
            </coding>
         </code>
         <count value="2500"/>
      </population>
      <population>
         <code>
            <coding>
               <system value="http://hl7.org/fhir/us/saner/CodeSystem/PopulationSystem"/>
               <code value="numICUBedsOcc"/>
               <display value="Total number of staffed inpatient intensive care unit (ICU) beds"/>
            </coding>
            <coding>
               <system value="http://terminology.hl7.org/CodeSystem/measure-population"/>
               <code value="measure-population"/>
            </coding>
         </code>
         <count>
            <extension url="http://hl7.org/fhir/StructureDefinition/data-absent-reason">
               <valueCode value="unsupported"/>
            </extension>
         </count>
      </population>
   </group>
   <group>
      <code>
         <coding>
            <system value="http://hl7.org/fhir/us/saner/CodeSystem/GroupSystem"/>
            <code value="Ventilators"/>
            <display value="Hospital Ventilators"/>
         </coding>
      </code>
      <population>
         <code>
            <coding>
               <system value="http://hl7.org/fhir/us/saner/CodeSystem/PopulationSystem"/>
               <code value="numVent"/>
               <display value="Mechanical Ventilators"/>
            </coding>
            <coding>
               <system value="http://terminology.hl7.org/CodeSystem/measure-population"/>
               <code value="initial-population"/>
            </coding>
         </code>
         <count value="2250"/>
      </population>
      <population>
         <code>
            <coding>
               <system value="http://hl7.org/fhir/us/saner/CodeSystem/PopulationSystem"/>
               <code value="numVentUse"/>
               <display value="Mechanical Ventilators in Use"/>
            </coding>
            <coding>
               <system value="http://terminology.hl7.org/CodeSystem/measure-population"/>
               <code value="measure-population"/>
            </coding>
         </code>
         <count value="1889"/>
      </population>
   </group>
   <group>
      <code>
         <coding>
            <system value="http://hl7.org/fhir/us/saner/CodeSystem/GroupSystem"/>
            <code value="Encounters"/>
            <display value="Encounters"/>
         </coding>
      </code>
      <population>
         <code>
            <coding>
               <system value="http://hl7.org/fhir/us/saner/CodeSystem/PopulationSystem"/>
               <code value="numC19Pats"/>
               <display value="All COVID-19 Confirmed or Suspected Patients"/>
            </coding>
            <coding>
               <system value="http://terminology.hl7.org/CodeSystem/measure-population"/>
               <code value="initial-population"/>
            </coding>
         </code>
         <count value="9"/>
      </population>
      <population>
         <code>
            <coding>
               <system value="http://hl7.org/fhir/us/saner/CodeSystem/PopulationSystem"/>
               <code value="numC19VentPats"/>
               <display value="COVID-19 Patients on a Ventilator"/>
            </coding>
            <coding>
               <system value="http://terminology.hl7.org/CodeSystem/measure-population"/>
               <code value="measure-population"/>
            </coding>
         </code>
         <count value="1617"/>
      </population>
      <population>
         <code>
            <coding>
               <system value="http://hl7.org/fhir/us/saner/CodeSystem/PopulationSystem"/>
               <code value="numC19HospPats"/>
               <display value="Hospitalized COVID-19 Patients"/>
            </coding>
            <coding>
               <system value="http://terminology.hl7.org/CodeSystem/measure-population"/>
               <code value="measure-population"/>
            </coding>
         </code>
         <count value="7026"/>
      </population>
      <population>
         <code>
            <coding>
               <system value="http://hl7.org/fhir/us/saner/CodeSystem/PopulationSystem"/>
               <code value="numC19MechVentPats"/>
               <display value="Hospitalized and Ventilated COVID-19 Patients"/>
            </coding>
            <coding>
               <system value="http://terminology.hl7.org/CodeSystem/measure-population"/>
               <code value="measure-population"/>
            </coding>
         </code>
         <count value="1576"/>
      </population>
      <population>
         <code>
            <coding>
               <system value="http://hl7.org/fhir/us/saner/CodeSystem/PopulationSystem"/>
               <code value="numC19HOPats"/>
               <display value="Hospital Onset COVID-19 Patients"/>
            </coding>
            <coding>
               <system value="http://terminology.hl7.org/CodeSystem/measure-population"/>
               <code value="measure-population"/>
            </coding>
         </code>
         <count>
            <extension url="http://hl7.org/fhir/StructureDefinition/data-absent-reason">
               <valueCode value="unsupported"/>
            </extension>
         </count>
      </population>
      <population>
         <code>
            <coding>
               <system value="http://hl7.org/fhir/us/saner/CodeSystem/PopulationSystem"/>
               <code value="numC19OverflowPats"/>
               <display value="ED/Overflow COVID-19 Patients"/>
            </coding>
            <coding>
               <system value="http://terminology.hl7.org/CodeSystem/measure-population"/>
               <code value="measure-population"/>
            </coding>
         </code>
         <count>
            <extension url="http://hl7.org/fhir/StructureDefinition/data-absent-reason">
               <valueCode value="unsupported"/>
            </extension>
         </count>
      </population>
      <population>
         <code>
            <coding>
               <system value="http://hl7.org/fhir/us/saner/CodeSystem/PopulationSystem"/>
               <code value="numC19OFMechVentPats"/>
               <display value="ED/Overflow and Ventilated COVID-19 Patients"/>
            </coding>
            <coding>
               <system value="http://terminology.hl7.org/CodeSystem/measure-population"/>
               <code value="measure-population"/>
            </coding>
         </code>
         <count>
            <extension url="http://hl7.org/fhir/StructureDefinition/data-absent-reason">
               <valueCode value="unsupported"/>
            </extension>
         </count>
      </population>
      <population>
         <code>
            <coding>
               <system value="http://hl7.org/fhir/us/saner/CodeSystem/PopulationSystem"/>
               <code value="numC19Died"/>
               <display value="COVID-19 Patient Deaths"/>
            </coding>
            <coding>
               <system value="http://terminology.hl7.org/CodeSystem/measure-population"/>
               <code value="measure-population"/>
            </coding>
         </code>
         <count>
            <extension url="http://hl7.org/fhir/StructureDefinition/data-absent-reason">
               <valueCode value="unsupported"/>
            </extension>
         </count>
      </population>
   </group>
</MeasureReport>
<MeasureReport xmlns="http://hl7.org/fhir"
               type="MeasureReport"
               desc="Example MeasureReport of  CDCPatientImpactAndHospitalCapacity  for  NJ  on  04 / 09 / 2020">
   <id value="ExampleNJ-20200409-CDCPatientImpactAndHospitalCapacity"/>
   <identifier>
      <system value="urn:ietf:rfc:3986"/>
      <value value="urn:uuid:d6fa3eeb-8314-11ea-5466-09173f13e4c5"/>
   </identifier>
   <status value="complete"/>
   <type value="summary"/>
   <measure value="http://hl7.org/fhir/us/saner/Measure/CDCPatientImpactAndHospitalCapacity"/>
   <subject>
      <extension url="http://hl7.org/fhir/StructureDefinition/geolocation">
         <extension url="latitude">
            <valueDecimal value="40.1907"/>
         </extension>
         <extension url="longitude">
            <valueDecimal value="74.6728"/>
         </extension>
      </extension>
      <reference value="Location/states-NJ"/>
      <display value="State of New Jersey"/>
   </subject>
   <date value="2020-04-09"/>
   <reporter>
      <reference value="Organization/NJ-DPH"/>
      <display value="New Jersey Department of Public Health"/>
   </reporter>
   <period>
      <start value="2020-04-09"/>
      <end value="2020-04-09"/>
   </period>
   <group>
      <code>
         <coding>
            <system value="http://hl7.org/fhir/us/saner/CodeSystem/GroupSystem"/>
            <code value="Beds"/>
            <display value="Hospital Beds"/>
         </coding>
      </code>
      <population>
         <code>
            <coding>
               <system value="http://hl7.org/fhir/us/saner/CodeSystem/PopulationSystem"/>
               <code value="numTotBeds"/>
               <display value="All Hospital Beds"/>
            </coding>
            <coding>
               <system value="http://terminology.hl7.org/CodeSystem/measure-population"/>
               <code value="initial-population"/>
            </coding>
         </code>
         <count value="20000"/>
      </population>
      <population>
         <code>
            <coding>
               <system value="http://hl7.org/fhir/us/saner/CodeSystem/PopulationSystem"/>
               <code value="numBeds"/>
               <display value="Hospital Inpatient Beds"/>
            </coding>
            <coding>
               <system value="http://terminology.hl7.org/CodeSystem/measure-population"/>
               <code value="measure-population"/>
            </coding>
         </code>
         <count value="15000"/>
      </population>
      <population>
         <code>
            <coding>
               <system value="http://hl7.org/fhir/us/saner/CodeSystem/PopulationSystem"/>
               <code value="numBedsOcc"/>
               <display value="Hospital Inpatient Bed Occupancy"/>
            </coding>
            <coding>
               <system value="http://terminology.hl7.org/CodeSystem/measure-population"/>
               <code value="measure-population"/>
            </coding>
         </code>
         <count>
            <extension url="http://hl7.org/fhir/StructureDefinition/data-absent-reason">
               <valueCode value="unsupported"/>
            </extension>
         </count>
      </population>
      <population>
         <code>
            <coding>
               <system value="http://hl7.org/fhir/us/saner/CodeSystem/PopulationSystem"/>
               <code value="numICUBeds"/>
               <display value="ICU Beds"/>
            </coding>
            <coding>
               <system value="http://terminology.hl7.org/CodeSystem/measure-population"/>
               <code value="measure-population"/>
            </coding>
         </code>
         <count value="2500"/>
      </population>
      <population>
         <code>
            <coding>
               <system value="http://hl7.org/fhir/us/saner/CodeSystem/PopulationSystem"/>
               <code value="numICUBedsOcc"/>
               <display value="Total number of staffed inpatient intensive care unit (ICU) beds"/>
            </coding>
            <coding>
               <system value="http://terminology.hl7.org/CodeSystem/measure-population"/>
               <code value="measure-population"/>
            </coding>
         </code>
         <count>
            <extension url="http://hl7.org/fhir/StructureDefinition/data-absent-reason">
               <valueCode value="unsupported"/>
            </extension>
         </count>
      </population>
   </group>
   <group>
      <code>
         <coding>
            <system value="http://hl7.org/fhir/us/saner/CodeSystem/GroupSystem"/>
            <code value="Ventilators"/>
            <display value="Hospital Ventilators"/>
         </coding>
      </code>
      <population>
         <code>
            <coding>
               <system value="http://hl7.org/fhir/us/saner/CodeSystem/PopulationSystem"/>
               <code value="numVent"/>
               <display value="Mechanical Ventilators"/>
            </coding>
            <coding>
               <system value="http://terminology.hl7.org/CodeSystem/measure-population"/>
               <code value="initial-population"/>
            </coding>
         </code>
         <count value="2250"/>
      </population>
      <population>
         <code>
            <coding>
               <system value="http://hl7.org/fhir/us/saner/CodeSystem/PopulationSystem"/>
               <code value="numVentUse"/>
               <display value="Mechanical Ventilators in Use"/>
            </coding>
            <coding>
               <system value="http://terminology.hl7.org/CodeSystem/measure-population"/>
               <code value="measure-population"/>
            </coding>
         </code>
         <count value="1864"/>
      </population>
   </group>
   <group>
      <code>
         <coding>
            <system value="http://hl7.org/fhir/us/saner/CodeSystem/GroupSystem"/>
            <code value="Encounters"/>
            <display value="Encounters"/>
         </coding>
      </code>
      <population>
         <code>
            <coding>
               <system value="http://hl7.org/fhir/us/saner/CodeSystem/PopulationSystem"/>
               <code value="numC19Pats"/>
               <display value="All COVID-19 Confirmed or Suspected Patients"/>
            </coding>
            <coding>
               <system value="http://terminology.hl7.org/CodeSystem/measure-population"/>
               <code value="initial-population"/>
            </coding>
         </code>
         <count value="337"/>
      </population>
      <population>
         <code>
            <coding>
               <system value="http://hl7.org/fhir/us/saner/CodeSystem/PopulationSystem"/>
               <code value="numC19VentPats"/>
               <display value="COVID-19 Patients on a Ventilator"/>
            </coding>
            <coding>
               <system value="http://terminology.hl7.org/CodeSystem/measure-population"/>
               <code value="measure-population"/>
            </coding>
         </code>
         <count value="1523"/>
      </population>
      <population>
         <code>
            <coding>
               <system value="http://hl7.org/fhir/us/saner/CodeSystem/PopulationSystem"/>
               <code value="numC19HospPats"/>
               <display value="Hospitalized COVID-19 Patients"/>
            </coding>
            <coding>
               <system value="http://terminology.hl7.org/CodeSystem/measure-population"/>
               <code value="measure-population"/>
            </coding>
         </code>
         <count value="7363"/>
      </population>
      <population>
         <code>
            <coding>
               <system value="http://hl7.org/fhir/us/saner/CodeSystem/PopulationSystem"/>
               <code value="numC19MechVentPats"/>
               <display value="Hospitalized and Ventilated COVID-19 Patients"/>
            </coding>
            <coding>
               <system value="http://terminology.hl7.org/CodeSystem/measure-population"/>
               <code value="measure-population"/>
            </coding>
         </code>
         <count value="1551"/>
      </population>
      <population>
         <code>
            <coding>
               <system value="http://hl7.org/fhir/us/saner/CodeSystem/PopulationSystem"/>
               <code value="numC19HOPats"/>
               <display value="Hospital Onset COVID-19 Patients"/>
            </coding>
            <coding>
               <system value="http://terminology.hl7.org/CodeSystem/measure-population"/>
               <code value="measure-population"/>
            </coding>
         </code>
         <count>
            <extension url="http://hl7.org/fhir/StructureDefinition/data-absent-reason">
               <valueCode value="unsupported"/>
            </extension>
         </count>
      </population>
      <population>
         <code>
            <coding>
               <system value="http://hl7.org/fhir/us/saner/CodeSystem/PopulationSystem"/>
               <code value="numC19OverflowPats"/>
               <display value="ED/Overflow COVID-19 Patients"/>
            </coding>
            <coding>
               <system value="http://terminology.hl7.org/CodeSystem/measure-population"/>
               <code value="measure-population"/>
            </coding>
         </code>
         <count>
            <extension url="http://hl7.org/fhir/StructureDefinition/data-absent-reason">
               <valueCode value="unsupported"/>
            </extension>
         </count>
      </population>
      <population>
         <code>
            <coding>
               <system value="http://hl7.org/fhir/us/saner/CodeSystem/PopulationSystem"/>
               <code value="numC19OFMechVentPats"/>
               <display value="ED/Overflow and Ventilated COVID-19 Patients"/>
            </coding>
            <coding>
               <system value="http://terminology.hl7.org/CodeSystem/measure-population"/>
               <code value="measure-population"/>
            </coding>
         </code>
         <count>
            <extension url="http://hl7.org/fhir/StructureDefinition/data-absent-reason">
               <valueCode value="unsupported"/>
            </extension>
         </count>
      </population>
      <population>
         <code>
            <coding>
               <system value="http://hl7.org/fhir/us/saner/CodeSystem/PopulationSystem"/>
               <code value="numC19Died"/>
               <display value="COVID-19 Patient Deaths"/>
            </coding>
            <coding>
               <system value="http://terminology.hl7.org/CodeSystem/measure-population"/>
               <code value="measure-population"/>
            </coding>
         </code>
         <count>
            <extension url="http://hl7.org/fhir/StructureDefinition/data-absent-reason">
               <valueCode value="unsupported"/>
            </extension>
         </count>
      </population>
   </group>
</MeasureReport>
<MeasureReport xmlns="http://hl7.org/fhir"
               type="MeasureReport"
               desc="Example MeasureReport of  CDCPatientImpactAndHospitalCapacity  for  NJ  on  04 / 10 / 2020">
   <id value="ExampleNJ-20200410-CDCPatientImpactAndHospitalCapacity"/>
   <identifier>
      <system value="urn:ietf:rfc:3986"/>
      <value value="urn:uuid:d6fa3f2e-8314-11ea-5466-09173f13e4c5"/>
   </identifier>
   <status value="complete"/>
   <type value="summary"/>
   <measure value="http://hl7.org/fhir/us/saner/Measure/CDCPatientImpactAndHospitalCapacity"/>
   <subject>
      <extension url="http://hl7.org/fhir/StructureDefinition/geolocation">
         <extension url="latitude">
            <valueDecimal value="40.1907"/>
         </extension>
         <extension url="longitude">
            <valueDecimal value="74.6728"/>
         </extension>
      </extension>
      <reference value="Location/states-NJ"/>
      <display value="State of New Jersey"/>
   </subject>
   <date value="2020-04-10"/>
   <reporter>
      <reference value="Organization/NJ-DPH"/>
      <display value="New Jersey Department of Public Health"/>
   </reporter>
   <period>
      <start value="2020-04-10"/>
      <end value="2020-04-10"/>
   </period>
   <group>
      <code>
         <coding>
            <system value="http://hl7.org/fhir/us/saner/CodeSystem/GroupSystem"/>
            <code value="Beds"/>
            <display value="Hospital Beds"/>
         </coding>
      </code>
      <population>
         <code>
            <coding>
               <system value="http://hl7.org/fhir/us/saner/CodeSystem/PopulationSystem"/>
               <code value="numTotBeds"/>
               <display value="All Hospital Beds"/>
            </coding>
            <coding>
               <system value="http://terminology.hl7.org/CodeSystem/measure-population"/>
               <code value="initial-population"/>
            </coding>
         </code>
         <count value="20000"/>
      </population>
      <population>
         <code>
            <coding>
               <system value="http://hl7.org/fhir/us/saner/CodeSystem/PopulationSystem"/>
               <code value="numBeds"/>
               <display value="Hospital Inpatient Beds"/>
            </coding>
            <coding>
               <system value="http://terminology.hl7.org/CodeSystem/measure-population"/>
               <code value="measure-population"/>
            </coding>
         </code>
         <count value="15000"/>
      </population>
      <population>
         <code>
            <coding>
               <system value="http://hl7.org/fhir/us/saner/CodeSystem/PopulationSystem"/>
               <code value="numBedsOcc"/>
               <display value="Hospital Inpatient Bed Occupancy"/>
            </coding>
            <coding>
               <system value="http://terminology.hl7.org/CodeSystem/measure-population"/>
               <code value="measure-population"/>
            </coding>
         </code>
         <count>
            <extension url="http://hl7.org/fhir/StructureDefinition/data-absent-reason">
               <valueCode value="unsupported"/>
            </extension>
         </count>
      </population>
      <population>
         <code>
            <coding>
               <system value="http://hl7.org/fhir/us/saner/CodeSystem/PopulationSystem"/>
               <code value="numICUBeds"/>
               <display value="ICU Beds"/>
            </coding>
            <coding>
               <system value="http://terminology.hl7.org/CodeSystem/measure-population"/>
               <code value="measure-population"/>
            </coding>
         </code>
         <count value="2500"/>
      </population>
      <population>
         <code>
            <coding>
               <system value="http://hl7.org/fhir/us/saner/CodeSystem/PopulationSystem"/>
               <code value="numICUBedsOcc"/>
               <display value="Total number of staffed inpatient intensive care unit (ICU) beds"/>
            </coding>
            <coding>
               <system value="http://terminology.hl7.org/CodeSystem/measure-population"/>
               <code value="measure-population"/>
            </coding>
         </code>
         <count>
            <extension url="http://hl7.org/fhir/StructureDefinition/data-absent-reason">
               <valueCode value="unsupported"/>
            </extension>
         </count>
      </population>
   </group>
   <group>
      <code>
         <coding>
            <system value="http://hl7.org/fhir/us/saner/CodeSystem/GroupSystem"/>
            <code value="Ventilators"/>
            <display value="Hospital Ventilators"/>
         </coding>
      </code>
      <population>
         <code>
            <coding>
               <system value="http://hl7.org/fhir/us/saner/CodeSystem/PopulationSystem"/>
               <code value="numVent"/>
               <display value="Mechanical Ventilators"/>
            </coding>
            <coding>
               <system value="http://terminology.hl7.org/CodeSystem/measure-population"/>
               <code value="initial-population"/>
            </coding>
         </code>
         <count value="2250"/>
      </population>
      <population>
         <code>
            <coding>
               <system value="http://hl7.org/fhir/us/saner/CodeSystem/PopulationSystem"/>
               <code value="numVentUse"/>
               <display value="Mechanical Ventilators in Use"/>
            </coding>
            <coding>
               <system value="http://terminology.hl7.org/CodeSystem/measure-population"/>
               <code value="measure-population"/>
            </coding>
         </code>
         <count value="1976"/>
      </population>
   </group>
   <group>
      <code>
         <coding>
            <system value="http://hl7.org/fhir/us/saner/CodeSystem/GroupSystem"/>
            <code value="Encounters"/>
            <display value="Encounters"/>
         </coding>
      </code>
      <population>
         <code>
            <coding>
               <system value="http://hl7.org/fhir/us/saner/CodeSystem/PopulationSystem"/>
               <code value="numC19Pats"/>
               <display value="All COVID-19 Confirmed or Suspected Patients"/>
            </coding>
            <coding>
               <system value="http://terminology.hl7.org/CodeSystem/measure-population"/>
               <code value="initial-population"/>
            </coding>
         </code>
         <count value="207"/>
      </population>
      <population>
         <code>
            <coding>
               <system value="http://hl7.org/fhir/us/saner/CodeSystem/PopulationSystem"/>
               <code value="numC19VentPats"/>
               <display value="COVID-19 Patients on a Ventilator"/>
            </coding>
            <coding>
               <system value="http://terminology.hl7.org/CodeSystem/measure-population"/>
               <code value="measure-population"/>
            </coding>
         </code>
         <count value="1679"/>
      </population>
      <population>
         <code>
            <coding>
               <system value="http://hl7.org/fhir/us/saner/CodeSystem/PopulationSystem"/>
               <code value="numC19HospPats"/>
               <display value="Hospitalized COVID-19 Patients"/>
            </coding>
            <coding>
               <system value="http://terminology.hl7.org/CodeSystem/measure-population"/>
               <code value="measure-population"/>
            </coding>
         </code>
         <count value="7570"/>
      </population>
      <population>
         <code>
            <coding>
               <system value="http://hl7.org/fhir/us/saner/CodeSystem/PopulationSystem"/>
               <code value="numC19MechVentPats"/>
               <display value="Hospitalized and Ventilated COVID-19 Patients"/>
            </coding>
            <coding>
               <system value="http://terminology.hl7.org/CodeSystem/measure-population"/>
               <code value="measure-population"/>
            </coding>
         </code>
         <count value="1663"/>
      </population>
      <population>
         <code>
            <coding>
               <system value="http://hl7.org/fhir/us/saner/CodeSystem/PopulationSystem"/>
               <code value="numC19HOPats"/>
               <display value="Hospital Onset COVID-19 Patients"/>
            </coding>
            <coding>
               <system value="http://terminology.hl7.org/CodeSystem/measure-population"/>
               <code value="measure-population"/>
            </coding>
         </code>
         <count>
            <extension url="http://hl7.org/fhir/StructureDefinition/data-absent-reason">
               <valueCode value="unsupported"/>
            </extension>
         </count>
      </population>
      <population>
         <code>
            <coding>
               <system value="http://hl7.org/fhir/us/saner/CodeSystem/PopulationSystem"/>
               <code value="numC19OverflowPats"/>
               <display value="ED/Overflow COVID-19 Patients"/>
            </coding>
            <coding>
               <system value="http://terminology.hl7.org/CodeSystem/measure-population"/>
               <code value="measure-population"/>
            </coding>
         </code>
         <count>
            <extension url="http://hl7.org/fhir/StructureDefinition/data-absent-reason">
               <valueCode value="unsupported"/>
            </extension>
         </count>
      </population>
      <population>
         <code>
            <coding>
               <system value="http://hl7.org/fhir/us/saner/CodeSystem/PopulationSystem"/>
               <code value="numC19OFMechVentPats"/>
               <display value="ED/Overflow and Ventilated COVID-19 Patients"/>
            </coding>
            <coding>
               <system value="http://terminology.hl7.org/CodeSystem/measure-population"/>
               <code value="measure-population"/>
            </coding>
         </code>
         <count>
            <extension url="http://hl7.org/fhir/StructureDefinition/data-absent-reason">
               <valueCode value="unsupported"/>
            </extension>
         </count>
      </population>
      <population>
         <code>
            <coding>
               <system value="http://hl7.org/fhir/us/saner/CodeSystem/PopulationSystem"/>
               <code value="numC19Died"/>
               <display value="COVID-19 Patient Deaths"/>
            </coding>
            <coding>
               <system value="http://terminology.hl7.org/CodeSystem/measure-population"/>
               <code value="measure-population"/>
            </coding>
         </code>
         <count>
            <extension url="http://hl7.org/fhir/StructureDefinition/data-absent-reason">
               <valueCode value="unsupported"/>
            </extension>
         </count>
      </population>
   </group>
</MeasureReport>
<MeasureReport xmlns="http://hl7.org/fhir"
               type="MeasureReport"
               desc="Example MeasureReport of  CDCPatientImpactAndHospitalCapacity  for  NJ  on  04 / 11 / 2020">
   <id value="ExampleNJ-20200411-CDCPatientImpactAndHospitalCapacity"/>
   <identifier>
      <system value="urn:ietf:rfc:3986"/>
      <value value="urn:uuid:d6fa3f71-8314-11ea-5466-09173f13e4c5"/>
   </identifier>
   <status value="complete"/>
   <type value="summary"/>
   <measure value="http://hl7.org/fhir/us/saner/Measure/CDCPatientImpactAndHospitalCapacity"/>
   <subject>
      <extension url="http://hl7.org/fhir/StructureDefinition/geolocation">
         <extension url="latitude">
            <valueDecimal value="40.1907"/>
         </extension>
         <extension url="longitude">
            <valueDecimal value="74.6728"/>
         </extension>
      </extension>
      <reference value="Location/states-NJ"/>
      <display value="State of New Jersey"/>
   </subject>
   <date value="2020-04-11"/>
   <reporter>
      <reference value="Organization/NJ-DPH"/>
      <display value="New Jersey Department of Public Health"/>
   </reporter>
   <period>
      <start value="2020-04-11"/>
      <end value="2020-04-11"/>
   </period>
   <group>
      <code>
         <coding>
            <system value="http://hl7.org/fhir/us/saner/CodeSystem/GroupSystem"/>
            <code value="Beds"/>
            <display value="Hospital Beds"/>
         </coding>
      </code>
      <population>
         <code>
            <coding>
               <system value="http://hl7.org/fhir/us/saner/CodeSystem/PopulationSystem"/>
               <code value="numTotBeds"/>
               <display value="All Hospital Beds"/>
            </coding>
            <coding>
               <system value="http://terminology.hl7.org/CodeSystem/measure-population"/>
               <code value="initial-population"/>
            </coding>
         </code>
         <count value="20000"/>
      </population>
      <population>
         <code>
            <coding>
               <system value="http://hl7.org/fhir/us/saner/CodeSystem/PopulationSystem"/>
               <code value="numBeds"/>
               <display value="Hospital Inpatient Beds"/>
            </coding>
            <coding>
               <system value="http://terminology.hl7.org/CodeSystem/measure-population"/>
               <code value="measure-population"/>
            </coding>
         </code>
         <count value="15000"/>
      </population>
      <population>
         <code>
            <coding>
               <system value="http://hl7.org/fhir/us/saner/CodeSystem/PopulationSystem"/>
               <code value="numBedsOcc"/>
               <display value="Hospital Inpatient Bed Occupancy"/>
            </coding>
            <coding>
               <system value="http://terminology.hl7.org/CodeSystem/measure-population"/>
               <code value="measure-population"/>
            </coding>
         </code>
         <count>
            <extension url="http://hl7.org/fhir/StructureDefinition/data-absent-reason">
               <valueCode value="unsupported"/>
            </extension>
         </count>
      </population>
      <population>
         <code>
            <coding>
               <system value="http://hl7.org/fhir/us/saner/CodeSystem/PopulationSystem"/>
               <code value="numICUBeds"/>
               <display value="ICU Beds"/>
            </coding>
            <coding>
               <system value="http://terminology.hl7.org/CodeSystem/measure-population"/>
               <code value="measure-population"/>
            </coding>
         </code>
         <count value="2500"/>
      </population>
      <population>
         <code>
            <coding>
               <system value="http://hl7.org/fhir/us/saner/CodeSystem/PopulationSystem"/>
               <code value="numICUBedsOcc"/>
               <display value="Total number of staffed inpatient intensive care unit (ICU) beds"/>
            </coding>
            <coding>
               <system value="http://terminology.hl7.org/CodeSystem/measure-population"/>
               <code value="measure-population"/>
            </coding>
         </code>
         <count>
            <extension url="http://hl7.org/fhir/StructureDefinition/data-absent-reason">
               <valueCode value="unsupported"/>
            </extension>
         </count>
      </population>
   </group>
   <group>
      <code>
         <coding>
            <system value="http://hl7.org/fhir/us/saner/CodeSystem/GroupSystem"/>
            <code value="Ventilators"/>
            <display value="Hospital Ventilators"/>
         </coding>
      </code>
      <population>
         <code>
            <coding>
               <system value="http://hl7.org/fhir/us/saner/CodeSystem/PopulationSystem"/>
               <code value="numVent"/>
               <display value="Mechanical Ventilators"/>
            </coding>
            <coding>
               <system value="http://terminology.hl7.org/CodeSystem/measure-population"/>
               <code value="initial-population"/>
            </coding>
         </code>
         <count value="2250"/>
      </population>
      <population>
         <code>
            <coding>
               <system value="http://hl7.org/fhir/us/saner/CodeSystem/PopulationSystem"/>
               <code value="numVentUse"/>
               <display value="Mechanical Ventilators in Use"/>
            </coding>
            <coding>
               <system value="http://terminology.hl7.org/CodeSystem/measure-population"/>
               <code value="measure-population"/>
            </coding>
         </code>
         <count value="1963"/>
      </population>
   </group>
   <group>
      <code>
         <coding>
            <system value="http://hl7.org/fhir/us/saner/CodeSystem/GroupSystem"/>
            <code value="Encounters"/>
            <display value="Encounters"/>
         </coding>
      </code>
      <population>
         <code>
            <coding>
               <system value="http://hl7.org/fhir/us/saner/CodeSystem/PopulationSystem"/>
               <code value="numC19Pats"/>
               <display value="All COVID-19 Confirmed or Suspected Patients"/>
            </coding>
            <coding>
               <system value="http://terminology.hl7.org/CodeSystem/measure-population"/>
               <code value="initial-population"/>
            </coding>
         </code>
         <count value="48"/>
      </population>
      <population>
         <code>
            <coding>
               <system value="http://hl7.org/fhir/us/saner/CodeSystem/PopulationSystem"/>
               <code value="numC19VentPats"/>
               <display value="COVID-19 Patients on a Ventilator"/>
            </coding>
            <coding>
               <system value="http://terminology.hl7.org/CodeSystem/measure-population"/>
               <code value="measure-population"/>
            </coding>
         </code>
         <count value="1746"/>
      </population>
      <population>
         <code>
            <coding>
               <system value="http://hl7.org/fhir/us/saner/CodeSystem/PopulationSystem"/>
               <code value="numC19HospPats"/>
               <display value="Hospitalized COVID-19 Patients"/>
            </coding>
            <coding>
               <system value="http://terminology.hl7.org/CodeSystem/measure-population"/>
               <code value="measure-population"/>
            </coding>
         </code>
         <count value="7618"/>
      </population>
      <population>
         <code>
            <coding>
               <system value="http://hl7.org/fhir/us/saner/CodeSystem/PopulationSystem"/>
               <code value="numC19MechVentPats"/>
               <display value="Hospitalized and Ventilated COVID-19 Patients"/>
            </coding>
            <coding>
               <system value="http://terminology.hl7.org/CodeSystem/measure-population"/>
               <code value="measure-population"/>
            </coding>
         </code>
         <count value="1650"/>
      </population>
      <population>
         <code>
            <coding>
               <system value="http://hl7.org/fhir/us/saner/CodeSystem/PopulationSystem"/>
               <code value="numC19HOPats"/>
               <display value="Hospital Onset COVID-19 Patients"/>
            </coding>
            <coding>
               <system value="http://terminology.hl7.org/CodeSystem/measure-population"/>
               <code value="measure-population"/>
            </coding>
         </code>
         <count>
            <extension url="http://hl7.org/fhir/StructureDefinition/data-absent-reason">
               <valueCode value="unsupported"/>
            </extension>
         </count>
      </population>
      <population>
         <code>
            <coding>
               <system value="http://hl7.org/fhir/us/saner/CodeSystem/PopulationSystem"/>
               <code value="numC19OverflowPats"/>
               <display value="ED/Overflow COVID-19 Patients"/>
            </coding>
            <coding>
               <system value="http://terminology.hl7.org/CodeSystem/measure-population"/>
               <code value="measure-population"/>
            </coding>
         </code>
         <count>
            <extension url="http://hl7.org/fhir/StructureDefinition/data-absent-reason">
               <valueCode value="unsupported"/>
            </extension>
         </count>
      </population>
      <population>
         <code>
            <coding>
               <system value="http://hl7.org/fhir/us/saner/CodeSystem/PopulationSystem"/>
               <code value="numC19OFMechVentPats"/>
               <display value="ED/Overflow and Ventilated COVID-19 Patients"/>
            </coding>
            <coding>
               <system value="http://terminology.hl7.org/CodeSystem/measure-population"/>
               <code value="measure-population"/>
            </coding>
         </code>
         <count>
            <extension url="http://hl7.org/fhir/StructureDefinition/data-absent-reason">
               <valueCode value="unsupported"/>
            </extension>
         </count>
      </population>
      <population>
         <code>
            <coding>
               <system value="http://hl7.org/fhir/us/saner/CodeSystem/PopulationSystem"/>
               <code value="numC19Died"/>
               <display value="COVID-19 Patient Deaths"/>
            </coding>
            <coding>
               <system value="http://terminology.hl7.org/CodeSystem/measure-population"/>
               <code value="measure-population"/>
            </coding>
         </code>
         <count>
            <extension url="http://hl7.org/fhir/StructureDefinition/data-absent-reason">
               <valueCode value="unsupported"/>
            </extension>
         </count>
      </population>
   </group>
</MeasureReport>
<MeasureReport xmlns="http://hl7.org/fhir"
               type="MeasureReport"
               desc="Example MeasureReport of  CDCPatientImpactAndHospitalCapacity  for  NJ  on  04 / 12 / 2020">
   <id value="ExampleNJ-20200412-CDCPatientImpactAndHospitalCapacity"/>
   <identifier>
      <system value="urn:ietf:rfc:3986"/>
      <value value="urn:uuid:d6fa3fb4-8314-11ea-5466-09173f13e4c5"/>
   </identifier>
   <status value="complete"/>
   <type value="summary"/>
   <measure value="http://hl7.org/fhir/us/saner/Measure/CDCPatientImpactAndHospitalCapacity"/>
   <subject>
      <extension url="http://hl7.org/fhir/StructureDefinition/geolocation">
         <extension url="latitude">
            <valueDecimal value="40.1907"/>
         </extension>
         <extension url="longitude">
            <valueDecimal value="74.6728"/>
         </extension>
      </extension>
      <reference value="Location/states-NJ"/>
      <display value="State of New Jersey"/>
   </subject>
   <date value="2020-04-12"/>
   <reporter>
      <reference value="Organization/NJ-DPH"/>
      <display value="New Jersey Department of Public Health"/>
   </reporter>
   <period>
      <start value="2020-04-12"/>
      <end value="2020-04-12"/>
   </period>
   <group>
      <code>
         <coding>
            <system value="http://hl7.org/fhir/us/saner/CodeSystem/GroupSystem"/>
            <code value="Beds"/>
            <display value="Hospital Beds"/>
         </coding>
      </code>
      <population>
         <code>
            <coding>
               <system value="http://hl7.org/fhir/us/saner/CodeSystem/PopulationSystem"/>
               <code value="numTotBeds"/>
               <display value="All Hospital Beds"/>
            </coding>
            <coding>
               <system value="http://terminology.hl7.org/CodeSystem/measure-population"/>
               <code value="initial-population"/>
            </coding>
         </code>
         <count value="20000"/>
      </population>
      <population>
         <code>
            <coding>
               <system value="http://hl7.org/fhir/us/saner/CodeSystem/PopulationSystem"/>
               <code value="numBeds"/>
               <display value="Hospital Inpatient Beds"/>
            </coding>
            <coding>
               <system value="http://terminology.hl7.org/CodeSystem/measure-population"/>
               <code value="measure-population"/>
            </coding>
         </code>
         <count value="15000"/>
      </population>
      <population>
         <code>
            <coding>
               <system value="http://hl7.org/fhir/us/saner/CodeSystem/PopulationSystem"/>
               <code value="numBedsOcc"/>
               <display value="Hospital Inpatient Bed Occupancy"/>
            </coding>
            <coding>
               <system value="http://terminology.hl7.org/CodeSystem/measure-population"/>
               <code value="measure-population"/>
            </coding>
         </code>
         <count>
            <extension url="http://hl7.org/fhir/StructureDefinition/data-absent-reason">
               <valueCode value="unsupported"/>
            </extension>
         </count>
      </population>
      <population>
         <code>
            <coding>
               <system value="http://hl7.org/fhir/us/saner/CodeSystem/PopulationSystem"/>
               <code value="numICUBeds"/>
               <display value="ICU Beds"/>
            </coding>
            <coding>
               <system value="http://terminology.hl7.org/CodeSystem/measure-population"/>
               <code value="measure-population"/>
            </coding>
         </code>
         <count value="2500"/>
      </population>
      <population>
         <code>
            <coding>
               <system value="http://hl7.org/fhir/us/saner/CodeSystem/PopulationSystem"/>
               <code value="numICUBedsOcc"/>
               <display value="Total number of staffed inpatient intensive care unit (ICU) beds"/>
            </coding>
            <coding>
               <system value="http://terminology.hl7.org/CodeSystem/measure-population"/>
               <code value="measure-population"/>
            </coding>
         </code>
         <count>
            <extension url="http://hl7.org/fhir/StructureDefinition/data-absent-reason">
               <valueCode value="unsupported"/>
            </extension>
         </count>
      </population>
   </group>
   <group>
      <code>
         <coding>
            <system value="http://hl7.org/fhir/us/saner/CodeSystem/GroupSystem"/>
            <code value="Ventilators"/>
            <display value="Hospital Ventilators"/>
         </coding>
      </code>
      <population>
         <code>
            <coding>
               <system value="http://hl7.org/fhir/us/saner/CodeSystem/PopulationSystem"/>
               <code value="numVent"/>
               <display value="Mechanical Ventilators"/>
            </coding>
            <coding>
               <system value="http://terminology.hl7.org/CodeSystem/measure-population"/>
               <code value="initial-population"/>
            </coding>
         </code>
         <count value="2250"/>
      </population>
      <population>
         <code>
            <coding>
               <system value="http://hl7.org/fhir/us/saner/CodeSystem/PopulationSystem"/>
               <code value="numVentUse"/>
               <display value="Mechanical Ventilators in Use"/>
            </coding>
            <coding>
               <system value="http://terminology.hl7.org/CodeSystem/measure-population"/>
               <code value="measure-population"/>
            </coding>
         </code>
         <count value="1957"/>
      </population>
   </group>
   <group>
      <code>
         <coding>
            <system value="http://hl7.org/fhir/us/saner/CodeSystem/GroupSystem"/>
            <code value="Encounters"/>
            <display value="Encounters"/>
         </coding>
      </code>
      <population>
         <code>
            <coding>
               <system value="http://hl7.org/fhir/us/saner/CodeSystem/PopulationSystem"/>
               <code value="numC19Pats"/>
               <display value="All COVID-19 Confirmed or Suspected Patients"/>
            </coding>
            <coding>
               <system value="http://terminology.hl7.org/CodeSystem/measure-population"/>
               <code value="initial-population"/>
            </coding>
         </code>
         <count value="-14"/>
      </population>
      <population>
         <code>
            <coding>
               <system value="http://hl7.org/fhir/us/saner/CodeSystem/PopulationSystem"/>
               <code value="numC19VentPats"/>
               <display value="COVID-19 Patients on a Ventilator"/>
            </coding>
            <coding>
               <system value="http://terminology.hl7.org/CodeSystem/measure-population"/>
               <code value="measure-population"/>
            </coding>
         </code>
         <count value="1914"/>
      </population>
      <population>
         <code>
            <coding>
               <system value="http://hl7.org/fhir/us/saner/CodeSystem/PopulationSystem"/>
               <code value="numC19HospPats"/>
               <display value="Hospitalized COVID-19 Patients"/>
            </coding>
            <coding>
               <system value="http://terminology.hl7.org/CodeSystem/measure-population"/>
               <code value="measure-population"/>
            </coding>
         </code>
         <count value="7604"/>
      </population>
      <population>
         <code>
            <coding>
               <system value="http://hl7.org/fhir/us/saner/CodeSystem/PopulationSystem"/>
               <code value="numC19MechVentPats"/>
               <display value="Hospitalized and Ventilated COVID-19 Patients"/>
            </coding>
            <coding>
               <system value="http://terminology.hl7.org/CodeSystem/measure-population"/>
               <code value="measure-population"/>
            </coding>
         </code>
         <count value="1644"/>
      </population>
      <population>
         <code>
            <coding>
               <system value="http://hl7.org/fhir/us/saner/CodeSystem/PopulationSystem"/>
               <code value="numC19HOPats"/>
               <display value="Hospital Onset COVID-19 Patients"/>
            </coding>
            <coding>
               <system value="http://terminology.hl7.org/CodeSystem/measure-population"/>
               <code value="measure-population"/>
            </coding>
         </code>
         <count>
            <extension url="http://hl7.org/fhir/StructureDefinition/data-absent-reason">
               <valueCode value="unsupported"/>
            </extension>
         </count>
      </population>
      <population>
         <code>
            <coding>
               <system value="http://hl7.org/fhir/us/saner/CodeSystem/PopulationSystem"/>
               <code value="numC19OverflowPats"/>
               <display value="ED/Overflow COVID-19 Patients"/>
            </coding>
            <coding>
               <system value="http://terminology.hl7.org/CodeSystem/measure-population"/>
               <code value="measure-population"/>
            </coding>
         </code>
         <count>
            <extension url="http://hl7.org/fhir/StructureDefinition/data-absent-reason">
               <valueCode value="unsupported"/>
            </extension>
         </count>
      </population>
      <population>
         <code>
            <coding>
               <system value="http://hl7.org/fhir/us/saner/CodeSystem/PopulationSystem"/>
               <code value="numC19OFMechVentPats"/>
               <display value="ED/Overflow and Ventilated COVID-19 Patients"/>
            </coding>
            <coding>
               <system value="http://terminology.hl7.org/CodeSystem/measure-population"/>
               <code value="measure-population"/>
            </coding>
         </code>
         <count>
            <extension url="http://hl7.org/fhir/StructureDefinition/data-absent-reason">
               <valueCode value="unsupported"/>
            </extension>
         </count>
      </population>
      <population>
         <code>
            <coding>
               <system value="http://hl7.org/fhir/us/saner/CodeSystem/PopulationSystem"/>
               <code value="numC19Died"/>
               <display value="COVID-19 Patient Deaths"/>
            </coding>
            <coding>
               <system value="http://terminology.hl7.org/CodeSystem/measure-population"/>
               <code value="measure-population"/>
            </coding>
         </code>
         <count>
            <extension url="http://hl7.org/fhir/StructureDefinition/data-absent-reason">
               <valueCode value="unsupported"/>
            </extension>
         </count>
      </population>
   </group>
</MeasureReport>
<MeasureReport xmlns="http://hl7.org/fhir"
               type="MeasureReport"
               desc="Example MeasureReport of  CDCPatientImpactAndHospitalCapacity  for  NJ  on  04 / 13 / 2020">
   <id value="ExampleNJ-20200413-CDCPatientImpactAndHospitalCapacity"/>
   <identifier>
      <system value="urn:ietf:rfc:3986"/>
      <value value="urn:uuid:d6fa3ff7-8314-11ea-5466-09173f13e4c5"/>
   </identifier>
   <status value="complete"/>
   <type value="summary"/>
   <measure value="http://hl7.org/fhir/us/saner/Measure/CDCPatientImpactAndHospitalCapacity"/>
   <subject>
      <extension url="http://hl7.org/fhir/StructureDefinition/geolocation">
         <extension url="latitude">
            <valueDecimal value="40.1907"/>
         </extension>
         <extension url="longitude">
            <valueDecimal value="74.6728"/>
         </extension>
      </extension>
      <reference value="Location/states-NJ"/>
      <display value="State of New Jersey"/>
   </subject>
   <date value="2020-04-13"/>
   <reporter>
      <reference value="Organization/NJ-DPH"/>
      <display value="New Jersey Department of Public Health"/>
   </reporter>
   <period>
      <start value="2020-04-13"/>
      <end value="2020-04-13"/>
   </period>
   <group>
      <code>
         <coding>
            <system value="http://hl7.org/fhir/us/saner/CodeSystem/GroupSystem"/>
            <code value="Beds"/>
            <display value="Hospital Beds"/>
         </coding>
      </code>
      <population>
         <code>
            <coding>
               <system value="http://hl7.org/fhir/us/saner/CodeSystem/PopulationSystem"/>
               <code value="numTotBeds"/>
               <display value="All Hospital Beds"/>
            </coding>
            <coding>
               <system value="http://terminology.hl7.org/CodeSystem/measure-population"/>
               <code value="initial-population"/>
            </coding>
         </code>
         <count value="20000"/>
      </population>
      <population>
         <code>
            <coding>
               <system value="http://hl7.org/fhir/us/saner/CodeSystem/PopulationSystem"/>
               <code value="numBeds"/>
               <display value="Hospital Inpatient Beds"/>
            </coding>
            <coding>
               <system value="http://terminology.hl7.org/CodeSystem/measure-population"/>
               <code value="measure-population"/>
            </coding>
         </code>
         <count value="15000"/>
      </population>
      <population>
         <code>
            <coding>
               <system value="http://hl7.org/fhir/us/saner/CodeSystem/PopulationSystem"/>
               <code value="numBedsOcc"/>
               <display value="Hospital Inpatient Bed Occupancy"/>
            </coding>
            <coding>
               <system value="http://terminology.hl7.org/CodeSystem/measure-population"/>
               <code value="measure-population"/>
            </coding>
         </code>
         <count>
            <extension url="http://hl7.org/fhir/StructureDefinition/data-absent-reason">
               <valueCode value="unsupported"/>
            </extension>
         </count>
      </population>
      <population>
         <code>
            <coding>
               <system value="http://hl7.org/fhir/us/saner/CodeSystem/PopulationSystem"/>
               <code value="numICUBeds"/>
               <display value="ICU Beds"/>
            </coding>
            <coding>
               <system value="http://terminology.hl7.org/CodeSystem/measure-population"/>
               <code value="measure-population"/>
            </coding>
         </code>
         <count value="2500"/>
      </population>
      <population>
         <code>
            <coding>
               <system value="http://hl7.org/fhir/us/saner/CodeSystem/PopulationSystem"/>
               <code value="numICUBedsOcc"/>
               <display value="Total number of staffed inpatient intensive care unit (ICU) beds"/>
            </coding>
            <coding>
               <system value="http://terminology.hl7.org/CodeSystem/measure-population"/>
               <code value="measure-population"/>
            </coding>
         </code>
         <count>
            <extension url="http://hl7.org/fhir/StructureDefinition/data-absent-reason">
               <valueCode value="unsupported"/>
            </extension>
         </count>
      </population>
   </group>
   <group>
      <code>
         <coding>
            <system value="http://hl7.org/fhir/us/saner/CodeSystem/GroupSystem"/>
            <code value="Ventilators"/>
            <display value="Hospital Ventilators"/>
         </coding>
      </code>
      <population>
         <code>
            <coding>
               <system value="http://hl7.org/fhir/us/saner/CodeSystem/PopulationSystem"/>
               <code value="numVent"/>
               <display value="Mechanical Ventilators"/>
            </coding>
            <coding>
               <system value="http://terminology.hl7.org/CodeSystem/measure-population"/>
               <code value="initial-population"/>
            </coding>
         </code>
         <count value="2250"/>
      </population>
      <population>
         <code>
            <coding>
               <system value="http://hl7.org/fhir/us/saner/CodeSystem/PopulationSystem"/>
               <code value="numVentUse"/>
               <display value="Mechanical Ventilators in Use"/>
            </coding>
            <coding>
               <system value="http://terminology.hl7.org/CodeSystem/measure-population"/>
               <code value="measure-population"/>
            </coding>
         </code>
         <count value="1924"/>
      </population>
   </group>
   <group>
      <code>
         <coding>
            <system value="http://hl7.org/fhir/us/saner/CodeSystem/GroupSystem"/>
            <code value="Encounters"/>
            <display value="Encounters"/>
         </coding>
      </code>
      <population>
         <code>
            <coding>
               <system value="http://hl7.org/fhir/us/saner/CodeSystem/PopulationSystem"/>
               <code value="numC19Pats"/>
               <display value="All COVID-19 Confirmed or Suspected Patients"/>
            </coding>
            <coding>
               <system value="http://terminology.hl7.org/CodeSystem/measure-population"/>
               <code value="initial-population"/>
            </coding>
         </code>
         <count value="177"/>
      </population>
      <population>
         <code>
            <coding>
               <system value="http://hl7.org/fhir/us/saner/CodeSystem/PopulationSystem"/>
               <code value="numC19VentPats"/>
               <display value="COVID-19 Patients on a Ventilator"/>
            </coding>
            <coding>
               <system value="http://terminology.hl7.org/CodeSystem/measure-population"/>
               <code value="measure-population"/>
            </coding>
         </code>
         <count value="1886"/>
      </population>
      <population>
         <code>
            <coding>
               <system value="http://hl7.org/fhir/us/saner/CodeSystem/PopulationSystem"/>
               <code value="numC19HospPats"/>
               <display value="Hospitalized COVID-19 Patients"/>
            </coding>
            <coding>
               <system value="http://terminology.hl7.org/CodeSystem/measure-population"/>
               <code value="measure-population"/>
            </coding>
         </code>
         <count value="7781"/>
      </population>
      <population>
         <code>
            <coding>
               <system value="http://hl7.org/fhir/us/saner/CodeSystem/PopulationSystem"/>
               <code value="numC19MechVentPats"/>
               <display value="Hospitalized and Ventilated COVID-19 Patients"/>
            </coding>
            <coding>
               <system value="http://terminology.hl7.org/CodeSystem/measure-population"/>
               <code value="measure-population"/>
            </coding>
         </code>
         <count value="1611"/>
      </population>
      <population>
         <code>
            <coding>
               <system value="http://hl7.org/fhir/us/saner/CodeSystem/PopulationSystem"/>
               <code value="numC19HOPats"/>
               <display value="Hospital Onset COVID-19 Patients"/>
            </coding>
            <coding>
               <system value="http://terminology.hl7.org/CodeSystem/measure-population"/>
               <code value="measure-population"/>
            </coding>
         </code>
         <count>
            <extension url="http://hl7.org/fhir/StructureDefinition/data-absent-reason">
               <valueCode value="unsupported"/>
            </extension>
         </count>
      </population>
      <population>
         <code>
            <coding>
               <system value="http://hl7.org/fhir/us/saner/CodeSystem/PopulationSystem"/>
               <code value="numC19OverflowPats"/>
               <display value="ED/Overflow COVID-19 Patients"/>
            </coding>
            <coding>
               <system value="http://terminology.hl7.org/CodeSystem/measure-population"/>
               <code value="measure-population"/>
            </coding>
         </code>
         <count>
            <extension url="http://hl7.org/fhir/StructureDefinition/data-absent-reason">
               <valueCode value="unsupported"/>
            </extension>
         </count>
      </population>
      <population>
         <code>
            <coding>
               <system value="http://hl7.org/fhir/us/saner/CodeSystem/PopulationSystem"/>
               <code value="numC19OFMechVentPats"/>
               <display value="ED/Overflow and Ventilated COVID-19 Patients"/>
            </coding>
            <coding>
               <system value="http://terminology.hl7.org/CodeSystem/measure-population"/>
               <code value="measure-population"/>
            </coding>
         </code>
         <count>
            <extension url="http://hl7.org/fhir/StructureDefinition/data-absent-reason">
               <valueCode value="unsupported"/>
            </extension>
         </count>
      </population>
      <population>
         <code>
            <coding>
               <system value="http://hl7.org/fhir/us/saner/CodeSystem/PopulationSystem"/>
               <code value="numC19Died"/>
               <display value="COVID-19 Patient Deaths"/>
            </coding>
            <coding>
               <system value="http://terminology.hl7.org/CodeSystem/measure-population"/>
               <code value="measure-population"/>
            </coding>
         </code>
         <count>
            <extension url="http://hl7.org/fhir/StructureDefinition/data-absent-reason">
               <valueCode value="unsupported"/>
            </extension>
         </count>
      </population>
   </group>
</MeasureReport>
