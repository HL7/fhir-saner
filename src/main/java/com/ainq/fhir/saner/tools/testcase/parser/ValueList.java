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

public class ValueList extends Declaration {
    private List<String> values = new ArrayList<>();
    private List<Integer> freqs = new ArrayList<>();
    private List<Integer> workingFreqs = null;
    private int numRemaining = 0;

    private String system = null;
    int maxStates = 0;
    int state = 0;

    public ValueList(String name) {
        super(name);
    }

    /**
     * @return the values
     */
    public String getValue(int n) {
        return values.get(n);
    }

    public ValueList addValue(String value, int frequency) {
        values.add(value);
        freqs.add(frequency);
        maxStates += frequency;
        return this;
    }

    public ValueList addValue(String value) {
        values.add(value);
        freqs.add(1);
        maxStates++;
        return this;
    }

    public void setFrequency(int nval) {
        Integer old = freqs.set(freqs.size() - 1, nval);
        if (old != null) {
            maxStates -= old;
        }
        maxStates += nval;
    }

    /**
     * @return the system
     */
    public String getSystem() {
        return system;
    }

    /**
     * @param system the system to set
     */
    public void setSystem(String system) {
        this.system = system;
    }

    public List<String> allValues() {
        return values;
    }

    /**
     * Iterate through the list, extracting those
     * values from the list with appropriate frequencies
     * but ensuring values are selected across all possible
     * values before repeating.
     * @return  The next value.
     */
    public String nextValue() {
        if (numRemaining == 0) {
            workingFreqs = new ArrayList<>(freqs);
            numRemaining = maxStates;
            state = 0;
        }
        String next = values.get(state);
        int freq = workingFreqs.get(state);
        workingFreqs.set(state, freq - 1);
        --numRemaining;
        if (numRemaining != 0) {
            do {
                if (++state >= values.size()) {
                    state = 0;
                }
            } while (workingFreqs.get(state) == 0);
        }
        return next;
    }

    public void resetState() {
        state = 0;
        numRemaining = 0;
    }
}
