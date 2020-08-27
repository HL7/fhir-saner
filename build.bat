rd input output /s/q
call build-vars.cmd
call fetch-examples.cmd
call build-content.cmd
call build-images.cmd
REM call sushi fsh -o .
REM copy fsh\ig-data\ig.bak ig.ini
START /B /ABOVENORMAL "FHIR Build" %JAVAEXE% -Xmx2G -jar ../publisher.jar -ig ig.ini %TX%