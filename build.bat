rd input output /s/q
call build-vars.cmd
REM call build-content.cmd
call build-images.cmd
REM call sushi fsh -o .
REM copy fsh\ig-data\ig.bak ig.ini
%JAVAEXE% -Xmx2G -jar input-cache/org.hl7.fhir.publisher.jar -ig ig.ini