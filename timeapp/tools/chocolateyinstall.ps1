$desktop = $([System.Environment]::GetFolderPath([System.Environment+SpecialFolder]::DesktopDirectory))

$link = Join-Path $desktop "TimeApp.lnk"
$target = Join-Path $env:chocolateyPackageFolder "tools\TimeApp.exe"
$work = Join-Path $env:chocolateyPackageFolder "tools"
Install-ChocolateyShortcut -ShortcutFilePath  $link -TargetPath $target -WorkingDirectory $work -RunAsAdmin

