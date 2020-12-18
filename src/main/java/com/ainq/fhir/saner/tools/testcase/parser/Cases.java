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
import java.io.File;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;
import java.util.Map;
import java.util.TreeMap;

import org.hl7.fhir.r4.model.StringType;

public class Cases {
    private Map<String, TestCase> testCases = new TreeMap<>();
    private Map<String, ValueList> valueLists = new TreeMap<>();
    private Map<String, Named> identifiers = new TreeMap<>();
    private List<TestCase> cases = new ArrayList<TestCase>();
    private File source;
    private Map<String, Integer> nextIdentifier = new TreeMap<>();

    public Cases(String source) {
        this.source = source == null ? null : new File(source);
    }

    /**
     * @return the source
     */
    public File getSource() {
        return source;
    }
    public Cases setSource(String source) {
        this.source = new File(source);
        return this;
    }

    public TestCase getTestCase(String testCase) {
        return testCases.get(testCase);
    }

    public ValueList getValueList(String valueSet) {
        return valueLists.get(valueSet);
    }

    public Named getIdentifiedObject(String identifier) {
        return identifiers.get(identifier);
    }

    public <T extends Named> void register(T t) {
        if (identifiers.containsKey(t.getName())) {
            throw new IllegalStateException(t.getName() + " is already defined");
        }
        identifiers.put(t.getName(), t);
        if (t instanceof TestCase) {
            testCases.put(t.getName(), (TestCase) t);
            cases.add((TestCase) t);
        } else if (t instanceof ValueList) {
            valueLists.put(t.getName(), (ValueList) t);
        }
    }

    public Collection<TestCase> getTestCases() {
        return cases;
    }

    public StringType nextIdentifier(String value) {
        Integer nextId = nextIdentifier.get(value);
        if (nextId == null) {
            // Allow setting the identifier start to a number
            String num = value.replaceAll("[^0-9]+", "");
            if (num.length() != 0) {
                nextId = Integer.parseInt(num);
            } else {
                nextId = 1;
            }
        }
        String name = value.replaceAll("[0-9]+", "");
        nextIdentifier.put(value, nextId + 1);
        return new StringType(name + Integer.toString(nextId));
    }

    public Cases setNextIdentifier(String value, int i) {
        nextIdentifier.put(value, i);
        return this;
    }
}
