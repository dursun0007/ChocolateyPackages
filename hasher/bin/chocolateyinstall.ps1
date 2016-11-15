$desktop = $([System.Environment]::GetFolderPath([System.Environment+SpecialFolder]::DesktopDirectory))

$link = Join-Path $desktop "Hasher.lnk"
$target = Join-Path $env:chocolateyPackageFolder "bin\Hasher.exe"
$work = Join-Path $env:chocolateyPackageFolder "bin"
Install-ChocolateyShortcut -ShortcutFilePath  $link -TargetPath $target -WorkingDirectory $work -RunAsAdmin

