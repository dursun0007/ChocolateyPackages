$checksum      = '558f9687dd6b990ff97091f4a111306034b32cdc1a829f66c860632a70103aeb'
$checksumType  = 'sha256'

$unzipTo = Join-Path $env:chocolateyPackageFolder "tools"

Install-ChocolateyZipPackage -PackageName 'registryexplorer' https://ericzimmerman.github.io/Software/RegistryExplorer_RECmd.zip -UnzipLocation $unzipTo -Checksum $checksum -ChecksumType $checksumType

$desktop = $([System.Environment]::GetFolderPath([System.Environment+SpecialFolder]::DesktopDirectory))

$link = Join-Path $desktop "Registry Explorer.lnk"
$target = Join-Path $env:chocolateyPackageFolder "tools\RegistryExplorer.exe"
$work = Join-Path $env:chocolateyPackageFolder "tools"
Install-ChocolateyShortcut -ShortcutFilePath $link -TargetPath $target -WorkingDirectory $work -RunAsAdmin

