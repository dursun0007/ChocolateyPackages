$desktop = $([System.Environment]::GetFolderPath([System.Environment+SpecialFolder]::DesktopDirectory))

$link = Join-Path $desktop "XWFIM.lnk"
$target = Join-Path $env:chocolateyPackageFolder "bin\XWFIM\XWFIM.exe"
$work = Join-Path $env:chocolateyPackageFolder "bin\XWFIM"
Install-ChocolateyShortcut -ShortcutFilePath  $link -TargetPath $target -WorkingDirectory $work -RunAsAdmin
