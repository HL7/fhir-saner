package com.ainq.fhir.saner.tools.testcase.parser;
/*
 * Copyright 2020 Audiacious Inquiry, Inc.
 * 
 * Licensed under the Apache License, Version 2.0 (the "License"); you may not
 * use this file except in compliance with the License. You may obtain a copy
 * of the License at http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS, WITHOUT
 * WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied. See the
 * License for the specific language governing permissions and limitations
 * under the License.
 */
import org.hl7.fhir.r4.model.Base;
import org.hl7.fhir.r4.model.Reference;

/** Pojo for
 * ReferenceConstraint ::= 'references' identifier{Resource}
 */
class ReferenceConstraint extends Constraint {
    private String value;
    public ReferenceConstraint(Cases cases, String fieldName, Base field) {
        super(cases, fieldName, field);
    }
    /**
     * @return the value
     */
    @Override
    protected Reference getNextValue() {
        // NOTE: This is NOT an actual reference to a resource,
        // but rather the name of the Datum that would create
        // the set of referenced resources. This will require
        // special handling in the generator.
        return new Reference(value);
    }

    /**
     * @param value the value to set
     */
    public ReferenceConstraint setDatum(Datum datum) {
        super.setDatum(datum);
        this.value = datum.getName();
        return this;
    }

    @Override
    protected void resetState() {
    }

}