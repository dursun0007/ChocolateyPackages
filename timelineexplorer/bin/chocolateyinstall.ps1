$desktop = $([System.Environment]::GetFolderPath([System.Environment+SpecialFolder]::DesktopDirectory))

$link = Join-Path $desktop "Timeline Explorer.lnk"
$target = Join-Path $env:chocolateyPackageFolder "bin\TimelineExplorer.exe"
$work = Join-Path $env:chocolateyPackageFolder "bin"
Install-ChocolateyShortcut -ShortcutFilePath $link -TargetPath $target -WorkingDirectory $work -RunAsAdmin

