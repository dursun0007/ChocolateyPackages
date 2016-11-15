$unzipTo = Join-Path $env:chocolateyPackageFolder "bin"

Install-ChocolateyZipPackage -PackageName 'registryexplorer' https://ericzimmerman.github.io/Software/RegistryExplorer_RECmd.zip -UnzipLocation $unzipTo

$desktop = $([System.Environment]::GetFolderPath([System.Environment+SpecialFolder]::DesktopDirectory))

$link = Join-Path $desktop "Registry Explorer.lnk"
$target = Join-Path $env:chocolateyPackageFolder "bin\RegistryExplorer_RECmd\RegistryExplorer.exe"
$work = Join-Path $env:chocolateyPackageFolder "bin\RegistryExplorer_RECmd"
Install-ChocolateyShortcut -ShortcutFilePath $link -TargetPath $target -WorkingDirectory $work -RunAsAdmin

