$checksum      = 'E1799722543223FEA91F6917173C7300EFB8905CF097F1C34B395BB44AF2EF53'
$checksumType  = 'sha256'

$unzipTo = Join-Path $env:chocolateyPackageFolder "tools"

Install-ChocolateyZipPackage -PackageName 'registryexplorer' https://ericzimmerman.github.io/Software/RegistryExplorer_RECmd.zip -UnzipLocation $unzipTo -Checksum $checksum -ChecksumType $checksumType

$desktop = $([System.Environment]::GetFolderPath([System.Environment+SpecialFolder]::DesktopDirectory))

$link = Join-Path $desktop "Registry Explorer.lnk"
$target = Join-Path $env:chocolateyPackageFolder "tools\RegistryExplorer.exe"
$work = Join-Path $env:chocolateyPackageFolder "tools"
Install-ChocolateyShortcut -ShortcutFilePath $link -TargetPath $target -WorkingDirectory $work -RunAsAdmin

