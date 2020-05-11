pushd ..\learning-spike-erp
git pull
popd
xcopy ..\learning-spike-erp\generated\t0\M*.json fsh\ig-data\input\examples /Y
xcopy ..\learning-spike-erp\generated\t0\Q*.json fsh\ig-data\input\examples /Y
xcopy ..\learning-spike-erp\generated\t0\X140008*.json fsh\ig-data\input\examples /Y
