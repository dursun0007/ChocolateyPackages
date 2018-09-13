$desktop = $([System.Environment]::GetFolderPath([System.Environment+SpecialFolder]::DesktopDirectory))

$link = Join-Path $desktop "Registry Explorer.lnk"
$target = Join-Path $env:chocolateyPackageFolder "tools\RegistryExplorer_RECmd\RegistryExplorer.exe"
$work = Join-Path $env:chocolateyPackageFolder "tools\RegistryExplorer_RECmd"
Install-ChocolateyShortcut -ShortcutFilePath $link -TargetPath $target -WorkingDirectory $work -RunAsAdmin