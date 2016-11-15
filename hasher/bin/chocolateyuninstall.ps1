$ErrorActionPreference = 'Stop'; # stop on all errors

$packageName = 'hasher'
$softwareName = 'hasher*' #part or all of the Display Name as you see it in Programs and Features. It should be enough to be unique

$desktop = $([System.Environment]::GetFolderPath([System.Environment+SpecialFolder]::DesktopDirectory))

$link = Join-Path $desktop "Hasher.lnk"

Remove-Item $link
