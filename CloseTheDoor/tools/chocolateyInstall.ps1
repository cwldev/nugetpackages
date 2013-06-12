$packageName = 'CloseTheDoor'
$installerType = 'EXE'
$url = 'http://downloads.sourceforge.net/project/closethedoor/v0.2.1/CloseTheDoorSetup-v0.2.1.exe'
$url64 = $url
$silentArgs = '/S' # "/s /S /q /Q /quiet /silent /SILENT /VERYSILENT"
$validExitCodes = @(0)

Install-ChocolateyPackage "$packageName" "$installerType" "$silentArgs" "$url" "$url64"  -validExitCodes $validExitCodes
