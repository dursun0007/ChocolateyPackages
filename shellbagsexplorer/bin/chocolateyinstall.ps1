$desktop = $([System.Environment]::GetFolderPath([System.Environment+SpecialFolder]::DesktopDirectory))

$link = Join-Path $desktop "ShellBags Explorer.lnk"
$target = Join-Path $env:chocolateyPackageFolder "bin\ShellBagsExplorer\ShellBagsExplorer.exe"
$work = Join-Path $env:chocolateyPackageFolder "bin\ShellBagsExplorer"
Install-ChocolateyShortcut -ShortcutFilePath $link -TargetPath $target -WorkingDirectory $work -RunAsAdmin
