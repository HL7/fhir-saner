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

import com.ainq.fhir.saner.tools.testcase.parser.Constraint.Context;

/**
 *  Pojo for TestCase
 *  TestCases ::= identifier{TestCase} ':' DataSet
 *              | TestCases identifier{TestCase} ':' DataSet
 */
public class TestCase extends Declaration {
    private Context context = null;
    private List<Datum> dataset = new ArrayList<>();

    public TestCase(String name) {
        super(name);
    }

    /**
     * @return the dataset
     */
    public List<Datum> getDataset() {
        return dataset;
    }

    public Datum getDatumByName(String name) {
        for (Datum d: dataset) {
            if (name.equals(d.getName())) {
                return d;
            }
        }
        return null;
    }

    public Context getContext() {
        if (context == null) {
            context = new Context();
        }
        return context;
    }
}