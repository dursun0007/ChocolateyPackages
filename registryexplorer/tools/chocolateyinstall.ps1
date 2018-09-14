$checksum      = 'd8ba27bcc438124cdd0502c6d6ca8b4f6e8acb432d81cbf62ff80075e6328672'
$checksumType  = 'sha256'

$unzipTo = $env:chocolateyPackageFolder

Install-ChocolateyZipPackage -PackageName 'registryexplorer' https://ericzimmerman.github.io/Software/RegistryExplorer_RECmd.zip -UnzipLocation $unzipTo -Checksum $checksum -ChecksumType $checksumType

$desktop = $([System.Environment]::GetFolderPath([System.Environment+SpecialFolder]::DesktopDirectory))

$link = Join-Path $desktop "Registry Explorer.lnk"
$target = Join-Path $env:chocolateyPackageFolder "tools\RegistryExplorer.exe"
$work = Join-Path $env:chocolateyPackageFolder "tools"
Install-ChocolateyShortcut -ShortcutFilePath $link -TargetPath $target -WorkingDirectory $work -RunAsAdmin