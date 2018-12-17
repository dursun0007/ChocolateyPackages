$desktop = $([System.Environment]::GetFolderPath([System.Environment+SpecialFolder]::DesktopDirectory))

$link = Join-Path $desktop "Registry Explorer.lnk"
$target = Join-Path $env:chocolateyPackageFolder "tools\RegistryExplorer\RegistryExplorer.exe"
$work = Join-Path $env:chocolateyPackageFolder "tools\RegistryExplorer"
Install-ChocolateyShortcut -ShortcutFilePath $link -TargetPath $target -WorkingDirectory $work -RunAsAdmin