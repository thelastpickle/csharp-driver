$nunitrunner = "C:/Tools/NUnit3/nunit3-console.exe";
Write-Host "Nunit Runner path" + $nunitrunner
pushd src/Cassandra.IntegrationTests
Write-Host "Starting dotmemory unit tests..." 
dotMemoryUnit -targetExecutable="$($nunitrunner)" --"bin\Release\Cassandra.IntegrationTests.dll" --where "cat=memory" --trace=Verbose --labels:all --result="..\..\TestResult.xml"
popd
