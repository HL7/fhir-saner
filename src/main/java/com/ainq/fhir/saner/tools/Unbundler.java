package com.ainq.fhir.saner.tools;
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
import java.io.FilenameFilter;
import java.io.IOException;
import java.nio.charset.StandardCharsets;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

import org.apache.commons.io.FileUtils;
import org.apache.commons.io.filefilter.WildcardFileFilter;
import org.apache.commons.lang3.StringUtils;
import org.hl7.fhir.instance.model.api.IBaseResource;
import org.hl7.fhir.r4.model.Bundle;
import org.hl7.fhir.r4.model.Resource;

import ca.uhn.fhir.context.FhirContext;
import ca.uhn.fhir.parser.IParser;
import ca.uhn.fhir.rest.api.EncodingEnum;

/**
 * A simple tool to extract resources from a bundle.
 * Used to extract samples from Microsoft Learning Spike Repo
 * @author Keith W. Boone
 *
 */
public class Unbundler {
    private static int errors = 0;
    private static FhirContext ctx = FhirContext.forR4();
    private static boolean silent = false;
    private static boolean recurse = true;

    public static void main(String args[]) {
        String outputFolder = ".";
        File output = new File(outputFolder);
        for (String arg: args) {
            if (arg.startsWith("-o") || arg.startsWith("-output")) {
                outputFolder = StringUtils.substringAfter(arg, ":");
                output = new File(outputFolder);
                if (output.exists() && !output.isDirectory()) {
                    System.err.printf("Cannot overwrite existing %s%n", outputFolder);
                    System.exit(1);
                } else if (!output.exists()) {
                    if (!output.mkdirs()) {
                        System.err.printf("Cannot create %s%n", outputFolder);
                        System.exit(2);
                    }
                }
                continue;
            } else if ("-h".equals(arg) || "-help".equals(arg)) {
                printUsage();
                continue;
            } else if ("-r".equals(arg) || "-recurse".equals(arg)) {
                recurse = true;
                continue;
            } else if ("-n".equals(arg) || "-norecurse".equals(arg)) {
                recurse = false;
                continue;
            }

            processFolder(arg, output, recurse);
        }
        System.exit(errors > 0 ? 3 : 0);
    }

    private static void processFolder(String arg, File output, boolean recurse) {
        List<File> inputs;
        if (arg.contains("?") || arg.contains("*")) {
            // process wildcards.
            inputs = selectFiles(arg, recurse);
        } else {
            inputs = new ArrayList<File>();
            inputs.add(new File(arg));
        }

        while (!inputs.isEmpty()) {
            File input = inputs.remove(0);
            if (input.isDirectory()) {
                inputs.addAll(selectFiles(input.getAbsolutePath(), recurse));
            } else {
                try {
                    processFile(input, output);
                } catch (Exception e) {
                    errors++;
                    e.printStackTrace();
                }
            }
        }


    }

    private static List<File> selectFiles(String arg, boolean recurse) {
        File dir = new File(".");
        File f = new File(arg);
        ArrayList<File> l = new ArrayList<File>();

        if (f.isDirectory()) {
            dir = f;
            Arrays.asList(dir.listFiles((FilenameFilter)new WildcardFileFilter("*.json")))
                .forEach(f2 -> l.add(f2));
            Arrays.asList(dir.listFiles((FilenameFilter)new WildcardFileFilter("*.xml")))
                .forEach(f2 -> l.add(f2));
            if (recurse) {
                Arrays.asList(dir.listFiles(f2 -> f2.isDirectory()))
                    .forEach(f2 -> l.addAll(selectFiles(f2.getAbsolutePath(), recurse)));
            }
        } else {
            Arrays.asList(dir.listFiles((FilenameFilter)new WildcardFileFilter(arg)))
                .forEach(f2 -> l.add(f2));
        }
        return l;
    }


    private static void processFile(File input, File output) throws IOException {
        IParser parser = isXml(input) ? ctx.newXmlParser() : ctx.newJsonParser();
        parser.setPrettyPrint(true);
        String content = FileUtils.readFileToString(input, StandardCharsets.UTF_8);
        IBaseResource r = parser.parseResource(content);
        if (r instanceof Bundle) {
            if (!silent) {
                System.out.printf("Loading %s%n", input);
            }
            ((Bundle) r).getEntry().forEach(e -> writeResource(e.getResource(), parser, output));
        }
    }

    private static void writeResource(Resource resource, IParser parser, File output) {
        String encoded = parser.encodeResourceToString(resource);
        File f = new File(output, resource.getIdElement().getIdPart() +
            (EncodingEnum.XML.equals(parser.getEncoding()) ? ".xml" : ".json"));
        if (!silent) {
            System.out.printf(" Creating %s%n", f);
        }
        try {
            FileUtils.writeStringToFile(f, encoded, StandardCharsets.UTF_8);
        } catch (Exception e) {
            e.printStackTrace();
            errors++;
        }
    }

    private static boolean isXml(File input) {
        if (input.getAbsolutePath().toLowerCase().endsWith(".xml")) {
            return true;
        } else if (input.getAbsolutePath().toLowerCase().endsWith(".json")) {
            return false;
        } else {
            try {
                for (String s: FileUtils.readLines(input, StandardCharsets.UTF_8)) {
                    s = s.trim();
                    if (s.startsWith("<")) {
                        return true;
                    } else if (s.startsWith("{")) {
                        return false;
                    }
                }
            } catch (IOException e) {
                // Ignore this, it will be caught and reported later.
            }
            return false;
        }
    }

    private static void printUsage() {
        System.out.printf("Usage: java %s [-output:folder] [args] input ...%n"
            + "\t-o:folder | -output:folder\tSpecify the output folder%n"
            + "\t-r | -recurse\tRecurse into subfolders%n"
            + "\t-n | -norecurse\tDo not recurse into subfolders%n"
            + "\tinput\tThe name of a folder or file to examine%n%n"
            + "When input is a folder, all files ending in .xml or .json will be examined."
            , Unbundler.class.getName());
    }
}
