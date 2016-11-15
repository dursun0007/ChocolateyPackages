$ErrorActionPreference = 'Stop'; # stop on all errors

$packageName = 'timelineexplorer'
$softwareName = 'timelineexplorer*' #part or all of the Display Name as you see it in Programs and Features. It should be enough to be unique

$desktop = $([System.Environment]::GetFolderPath([System.Environment+SpecialFolder]::DesktopDirectory))

$link = Join-Path $desktop "Timeline Explorer.lnk"

Remove-Item $link