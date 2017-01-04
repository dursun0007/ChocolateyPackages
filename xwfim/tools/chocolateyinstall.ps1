$checksum      = '7CE491AAD23642364EFAE77A4C08E0D8EE371B44239E2EE2745667FC0CDA1406'
$checksumType  = 'sha256'

$unzipTo = Join-Path $env:chocolateyPackageFolder "tools\XWFIM"

Install-ChocolateyZipPackage -PackageName 'xwfim' https://ericzimmerman.github.io/Software/XWFIM.zip -UnzipLocation $unzipTo -Checksum $checksum -ChecksumType $checksumType


$desktop = $([System.Environment]::GetFolderPath([System.Environment+SpecialFolder]::DesktopDirectory))

$link = Join-Path $desktop "XWFIM.lnk"
$target = Join-Path $env:chocolateyPackageFolder "tools\XWFIM\XWFIM.exe"
$work = Join-Path $env:chocolateyPackageFolder "tools\XWFIM"
Install-ChocolateyShortcut -ShortcutFilePath  $link -TargetPath $target -WorkingDirectory $work -RunAsAdmin


$link = Join-Path $desktop "READ ME NOW. No seriously, READ THIS NOW!!!!.txt.lnk"
$target = Join-Path $env:chocolateyPackageFolder "tools\XWFIM\READ ME NOW. No seriously, READ THIS NOW!!!!.txt"
$work = Join-Path $env:chocolateyPackageFolder "tools\XWFIM"
Install-ChocolateyShortcut -ShortcutFilePath  $link -TargetPath $target -WorkingDirectory $work -RunAsAdmin
