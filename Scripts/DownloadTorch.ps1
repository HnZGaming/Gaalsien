$zipUrl = "https://build.torchapi.com/job/Torch/job/master/lastSuccessfulBuild/artifact/bin/torch-server.zip"
$zipFilePath = Join-Path -Path $PSScriptRoot -ChildPath "../tmp/torch-server.zip"
$extractPath = Join-Path -Path $PSScriptRoot -ChildPath ".."

New-Item -ItemType Directory -Force -Path (Join-Path -Path $PSScriptRoot -ChildPath "../tmp")

Write-Output "Downloading Torch..."
Invoke-WebRequest -Uri $zipUrl -OutFile $zipFilePath
Write-Output "Done downloading"

Write-Output "Extracting to $extractPath..."
Add-Type -AssemblyName System.IO.Compression.FileSystem
[System.IO.Compression.ZipFile]::ExtractToDirectory($zipFilePath, $extractPath)
Write-Output "Done extracting"
