To use the build tools for this project, you will need to install the following components:

* [Java](https://jdk.java.net/java-se-ri/11)

  Any JRE 8 or higher should work, it has been tested with JDK 11.  We recommend using
  JDK 10 or higher because sometimes 2Gb isn't enough to build an IG with a lot of content,
  but JDK 8 is likely sufficient for most.  Java is used to run XSLT transforms over XML files
  to craft IG content and image source files, create images from PlantUML source, and
  to run the FHIR IG Publisher.
  To see if you have java installed (and which version), type the following at a command prompt

    <code>java -version</code>

* [SAXON](http://saxon.sourceforge.net/)

  SAXON is the XSLT Processor that is used to generate guide content from the XML
  input file.  The XSLT transforms in Pyromancer are written in XSLT 2.0 but mostly
  use XSLT 1.0 features.  Any edition of SAXON should work, Pyromancer has been
  tested with SAXON HE (Home Edition) 9.0.  The presently available version from
  Saxonica is [SAXON HE 10.0](https://sourceforge.net/projects/saxon/files/Saxon-HE/10/Java/SaxonHE10-0J.zip/download).
  If you click that link, it should download a ZIP file to your machine.  Extract
  that zip file to a folder on your local system.  You will need to know where that
  is for a later step.

* [GraphViz](https://www.graphviz.org/download/)

  GraphViz is the core rendering engine used by PlantUML to render UML diagrams created
  by some of the XSLT Transforms.  Different packages are available for different platforms,
  the project has two Windows installations ([Windows](https://graphviz.gitlab.io/_pages/Download/Download_windows.html),
  and links to other sites for Linux and Mac.  If you are installing the Windows version
  and don't know which version to use, pick the [MSI Installer](https://graphviz.gitlab.io/_pages/Download/windows/graphviz-2.38.msi).

* [PlantUML](https://plantuml.com/download)

  PlantUML is used to create the images used in the Implementation Guide.  You will need
  plantuml.jar or one of the other licensed versions.  Since the PlantUML original jar file
  is covered under GPL which is incompatible with some organization's policies, we've been
  using the version which ships with Eclipse under the EPL, but there's also an [Apache
  Licensed version](http://sourceforge.net/projects/plantuml/files/plantuml-jar-asl-1.2020.5.zip/download).
  You just need the plantuml.jar (or similarly named file) from the zip file in order to run
  the build.  You will need that for a later step.

* [Node.js](https://nodejs.org/en/)

  Node.js is used to run software written in JavaScript using the runtime version of the
  JavaScript engine in Chrome.  Node is needed by Sushi (see below).

* [Sushi](https://github.com/FHIR/sushi)

  Sushi is the processing engine for FHIR SHorthand (FSH) created by folks at MITRE. It
  creates FHIR Example Resources, Resource Profiles and ImplementationGuide resources from
  a simplified language, and does some setup to make it very easy to install the FHIR IG
  Builder.  To install Sushi, simply type the following at a command line prompt (after
  you've installed Node.js):

    <code>npm install -g fsh-sushi</code>

  This will install Sushi for you. Recent work from the [MITRE Sushi Team](https://github.com/FHIR/sushi/graphs/contributors),
  [Josh Mandel](@jmandel) and [Grahame Grieve](@grahamegrieve) integrate Sushi
  runs into the build if you have a Fish Tank named fsh in your build.


* [Ruby](https://www.ruby-lang.org/en/downloads/) and [Jekyll]()

  In order to run the IG Publisher locally, you will need to install Ruby and Jekyll.
  This is  not essential if you are using GitHub notification-triggered publishing supported
  by the HL7 build.fhir.org environment, but we've found it helpful to run local
  builds first.  Click the first link to find the installer for Ruby for your platform
  and install it.

  To install Jekyll, run the following after you've installed Ruby:

   <code>gem install bundler jekyll</code>

* [HL7 FHIR IG Publisher](https://github.com/HL7/fhir-ig-publisher)

  The IG Publisher takes the contents of the IG and turns it into collection of web pages
  that is published.  The simplest way to install the Publisher is to
  run build.bat in the top directory of the folder where you installed Pyromancer
  and then run _updatePublisher.bat which Sushi installs for you after it runs.

* Modify [build-vars.cmd](https://github.com/AudaciousInquiry/pyromancy/blob/master/build-vars.cmd)

  Adjust the values in build-vars.cmd to match your installation. The default values
  are shown below.

  <pre>
  REM Modify these values to match locations in your installation
  SET PLANTUMLCP=C:\plantuml\plantuml.jar
  SET SAXONCP=C:\saxon9he\saxon9he.jar
  SET GRAPHVIZ_DOT=c:\bin\dot.exe
  </pre>

* Run a build. To run a build, simply type:

  <code>build</code>

  at the Windows command prompt (sorry, no shell scripts yet, contributions welcome).


