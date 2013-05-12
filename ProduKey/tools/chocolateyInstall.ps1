$packageName = 'ProduKey'
$installerType = 'EXE'
$url = 'http://nirsoft.net/utils/produkey.zip'
$url64 = 'http://www.nirsoft.net/utils/produkey-x64.zip'
$validExitCodes = @(0)
Install-ChocolateyZipPackage "$packageName" "$url" "$(Split-Path -parent $MyInvocation.MyCommand.Definition)" "$url64"