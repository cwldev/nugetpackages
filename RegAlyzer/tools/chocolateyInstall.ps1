$packageName = 'RegAlyzer' 
$installerType = 'EXE'
$url = 'http://spybotupdates.com/files/regalyz-1.6.2.16.exe' 
$url64 = $url #
$silentArgs = '/VERYSILENT' # "/s /S /q /Q /quiet /silent /SILENT /VERYSILENT" 
$validExitCodes = @(0)

Install-ChocolateyPackage "$packageName" "$installerType" "$silentArgs" "$url" "$url64"  -validExitCodes $validExitCodes
