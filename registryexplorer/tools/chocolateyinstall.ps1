$checksum      = 'd59f27a1d02acca61c495e1ab84a82db7099f32d79b1524f8217ffaee7750e64'
$checksumType  = 'sha256'

$unzipTo = $env:chocolateyPackageFolder

Install-ChocolateyZipPackage -PackageName 'registryexplorer' https://ericzimmerman.github.io/Software/RegistryExplorer_RECmd.zip -UnzipLocation $unzipTo -Checksum $checksum -ChecksumType $checksumType

$desktop = $([System.Environment]::GetFolderPath([System.Environment+SpecialFolder]::DesktopDirectory))

$link = Join-Path $desktop "Registry Explorer.lnk"
$target = Join-Path $env:chocolateyPackageFolder "RegistryExplorer.exe"
$work = $env:chocolateyPackageFolder 
Install-ChocolateyShortcut -ShortcutFilePath $link -TargetPath $target -WorkingDirectory $work -RunAsAdmin