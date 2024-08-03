call "C:\Program Files\Microsoft Visual Studio\2022\Community\Common7\Tools\VsMSBuildCmd.bat"

set ver=v143
rem Windows SDK の最新(いまのところ)
set tergetpv=WindowsTargetPlatformVersion=10.0

MSBuild plugins.msbuild /p:%tergetpv% /p:PlatformToolset=%ver%
MSBuild theora\krdstheora.sln /t:Rebuild /p:Configuration=Release /p:platform=Win32 /p:%tergetpv% /p:PlatformToolset=%ver%
MSBuild theora\krdstheora.sln /t:Rebuild /p:Configuration=Release /p:platform=x64 /p:%tergetpv% /p:PlatformToolset=%ver%
MSBuild postbuild.msbuild /p:%tergetpv% /p:PlatformToolset=%ver%
pause
