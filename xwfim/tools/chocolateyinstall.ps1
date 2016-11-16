$checksum      = '84368C6F279F8E87327FF5D1075746D81296431781CD9809D596F12FA11DB06D'
$checksumType  = 'sha256'

$unzipTo = Join-Path $env:chocolateyPackageFolder "tools\XWFIM"

Install-ChocolateyZipPackage -PackageName 'xwfim' https://ericzimmerman.github.io/Software/XWFIM.zip -UnzipLocation $unzipTo -Checksum $checksum -ChecksumType $checksumType


$desktop = $([System.Environment]::GetFolderPath([System.Environment+SpecialFolder]::DesktopDirectory))

$link = Join-Path $desktop "XWFIM.lnk"
$target = Join-Path $env:chocolateyPackageFolder "tools\XWFIM\XWFIM.exe"
$work = Join-Path $env:chocolateyPackageFolder "tools\XWFIM"
Install-ChocolateyShortcut -ShortcutFilePath  $link -TargetPath $target -WorkingDirectory $work -RunAsAdmin

