SET JAVA_TOOL_OPTIONS=-Dfile.encoding=UTF-8
REM Configure JAVA from JAVA_HOME folder
SET JAVAEXE="%JAVA_HOME%\bin\java.exe" %JAVA_TOOL_OPTIONS% %JVM_OPTIONS%
REM Set location of Fish tank input folder, this is where XSLT runs from
SET LOC=input
REM Modify these values to match locations in your installation
REM Plantuml and dot are now included in publisher
SET SAXONCP=C:\saxon9he\saxon9he.jar

pushd %LOC%
del fsh\CapabilityStatement-*.fsh
del fsh\OperationDefinition-*.fsh
%JAVAEXE% -classpath %SAXONCP% net.sf.saxon.Transform -s:SANER.xml -xsl:overview.xslt
%JAVAEXE% -classpath %SAXONCP% net.sf.saxon.Transform -s:SANER.xml -xsl:actorsandtransactions.xslt
popd