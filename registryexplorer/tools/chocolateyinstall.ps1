$checksum      = '331782fdbaab0b7ff80170f7f5a3b8afbebeae5e27629ed30e0d0a51e0100781'
$checksumType  = 'sha256'

$unzipTo = $env:chocolateyPackageFolder

Install-ChocolateyZipPackage -PackageName 'registryexplorer' https://ericzimmerman.github.io/Software/RegistryExplorer_RECmd.zip -UnzipLocation $unzipTo -Checksum $checksum -ChecksumType $checksumType

$desktop = $([System.Environment]::GetFolderPath([System.Environment+SpecialFolder]::DesktopDirectory))

$link = Join-Path $desktop "Registry Explorer.lnk"
$target = Join-Path $env:chocolateyPackageFolder "RegistryExplorer.exe"
$work = $env:chocolateyPackageFolder 
Install-ChocolateyShortcut -ShortcutFilePath $link -TargetPath $target -WorkingDirectory $work -RunAsAdmin