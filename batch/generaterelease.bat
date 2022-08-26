@echo off

echo Generating release files

"%programfiles%\Microsoft Visual Studio\2022\Community\MSBuild\Current\Bin\msbuild.exe"  /t:Rebuild /p:Configuration=Release /p:VisualStudioVersion=16.0 ..\TaskbarMonitor.sln

copy ..\TaskbarMonitor\bin\Release\TaskbarMonitor.dll ..\TaskbarMonitorInstaller\Resources
copy ..\TaskbarMonitor\bin\Release\Newtonsoft.Json.dll ..\TaskbarMonitorInstaller\Resources

"%programfiles%\Microsoft Visual Studio\2022\Community\MSBuild\Current\Bin\msbuild.exe"  /t:Rebuild /p:Configuration=Release /p:VisualStudioVersion=16.0 ..\TaskbarMonitor.sln

copy ..\TaskbarMonitorInstaller\bin\Release\TaskbarMonitorInstaller.exe ..\build

echo All done.
pause