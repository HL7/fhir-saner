pushd ..\learning-spike-erp
git pull
popd
REM %JAVAEXE% -cp target\lib\*;target/fhir-saner-0.0.1-SNAPSHOT.jar com.ainq.fhir.saner.tools.Unbundler -o:fsh\ig-data\input\examples ..\learning-spike-erp\generated

REM xcopy ..\learning-spike-erp\generated\t0\M*.json fsh\ig-data\input\examples /Y
REM xcopy ..\learning-spike-erp\generated\t0\Q*.json fsh\ig-data\input\examples /Y
REM xcopy ..\learning-spike-erp\generated\t0\X140008*.json fsh\ig-data\input\examples /Y
