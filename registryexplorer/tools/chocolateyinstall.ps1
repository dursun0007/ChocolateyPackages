$checksum      = '1FD9ACC21CA9BAF443B9F7AFD45422E09C585A25EB53D880CC345F669173AF62'
$checksumType  = 'sha256'

$unzipTo = Join-Path $env:chocolateyPackageFolder "tools"

Install-ChocolateyZipPackage -PackageName 'registryexplorer' https://ericzimmerman.github.io/Software/RegistryExplorer_RECmd.zip -UnzipLocation $unzipTo -Checksum $checksum -ChecksumType $checksumType

$desktop = $([System.Environment]::GetFolderPath([System.Environment+SpecialFolder]::DesktopDirectory))

$link = Join-Path $desktop "Registry Explorer.lnk"
$target = Join-Path $env:chocolateyPackageFolder "tools\RegistryExplorer_RECmd\RegistryExplorer.exe"
$work = Join-Path $env:chocolateyPackageFolder "tools\RegistryExplorer_RECmd"
Install-ChocolateyShortcut -ShortcutFilePath $link -TargetPath $target -WorkingDirectory $work -RunAsAdmin

