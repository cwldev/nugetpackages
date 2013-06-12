$packageName = 'FBReader'
$installerType = 'EXE' 
$url = 'http://fbreader.org/files/win32/FBReaderSetup-0.12.10.exe' 
$url64 = $url
$silentArgs = '/S' # "/s /S /q /Q /quiet /silent /SILENT /VERYSILENT"
$validExitCodes = @(0) 

Install-ChocolateyPackage "$packageName" "$installerType" "$silentArgs" "$url" "$url64"  -validExitCodes $validExitCodes
