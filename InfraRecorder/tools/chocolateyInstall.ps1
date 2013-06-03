$packageName = 'InfraRecorder'
$installerType = 'EXE'
$url = 'http://downloads.sourceforge.net/project/infrarecorder/InfraRecorder/0.53/ir053.exe'
$silentArgs = '/S'
$validExitCodes = @(0)

$processor = Get-WmiObject Win32_Processor
$is64bit = $processor.AddressWidth -eq 64

# 32-bit version
if (-not $is64bit) {
    Install-ChocolateyPackage "$packageName" "$installerType" "$silentArgs" "$url" -validExitCodes $validExitCodes
}

# else install 64-bit version
else {
    Install-ChocolateyPackage "$packageName" "msi" "/passive /norestart" "http://sourceforge.net/projects/infrarecorder/files/InfraRecorder/0.53/ir053_x64.msi/download" -validExitCodes $validExitCodes
}

