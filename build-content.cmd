pushd %LOC%
REM %JAVAEXE% -classpath %SAXONCP% net.sf.saxon.Transform -s:SANER.xml -xsl:index.xslt
%JAVAEXE% -classpath %SAXONCP% net.sf.saxon.Transform -s:SANER.xml -xsl:overview.xslt
REM %JAVAEXE% -classpath %SAXONCP% net.sf.saxon.Transform -s:SANER.xml -xsl:actorsandtransactions.xslt
popd