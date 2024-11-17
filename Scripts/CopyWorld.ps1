param (
    [string]$name
)

$srcPath = Join-Path -Path "$PSScriptRoot" -ChildPath "../Content/CustomWorlds/$name"
$dstPath = Join-Path -Path "$PSScriptRoot" -ChildPath "../Instance/Saves/Star System"

Write-Output "Copying world $name..."

New-Item -ItemType Directory -Force -Path $dstPath
Copy-Item -Path $srcPath\* -Destination $dstPath -Recurse -Force
Write-Output "Done copying"