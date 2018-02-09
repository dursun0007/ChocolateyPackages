$ErrorActionPreference = 'Stop'; # stop on all errors

$packageName = 'sdbexplorer'
$softwareName = 'sdbexplorer*' #part or all of the Display Name as you see it in Programs and Features. It should be enough to be unique

$desktop = $([System.Environment]::GetFolderPath([System.Environment+SpecialFolder]::DesktopDirectory))

$link = Join-Path $desktop "SDB Explorer.lnk"

Remove-Item $link