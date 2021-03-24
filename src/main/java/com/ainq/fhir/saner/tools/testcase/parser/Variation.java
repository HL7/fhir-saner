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
import java.util.ArrayList;
import java.util.List;

/**
 * Pojo for Variation
 *
 * Variations ::= FieldConstraints | Variations ',' FieldConstraints
 *
 */
public class Variation extends Named {

    public Variation(String name) {
        super(name);
    }

    private List<Constraint> constraint = new ArrayList<>();

    /**
     * @return the constraint
     */
    public List<Constraint> getConstraint() {
        return constraint;
    }
}