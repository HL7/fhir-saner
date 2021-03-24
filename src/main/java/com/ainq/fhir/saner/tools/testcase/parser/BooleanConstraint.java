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
import org.hl7.fhir.r4.model.BooleanType;

/** Pojo for
 * BooleanConstraint   ::= 'true' | 'false'
 */
class BooleanConstraint extends Constraint {
    private BooleanType value;
    public BooleanConstraint(Cases cases, String fieldName, Base field) {
        super(cases, fieldName, field);
        // TODO Auto-generated constructor stub
    }
    /**
     * @param value the value to set
     */
    public void setValue(BooleanType value) {
        this.value = value;
    }
    @Override
    protected BooleanType getNextValue() {
        return value;
    }
    protected void resetState() {
    }
}