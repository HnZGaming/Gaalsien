# Define the paths to remove
$paths = @(
    "Instance/cache/",
    "Instance/content/",
    "Instance/downloads/",
    "Instance/Mods/",
    "Instance/temp/",
    "Instance/WorkshopBrowser/",
    "Instance/appworkshop_244850.acf"
)

foreach ($path in $paths) {
    $fullPath = Resolve-Path -Path $path -ErrorAction SilentlyContinue

    if ($fullPath) {
        if (Test-Path -Path $fullPath -PathType Container) {
            Write-Host "Removing folder: $fullPath"
            Remove-Item -Path $fullPath -Recurse -Force
        }
        elseif (Test-Path -Path $fullPath -PathType Leaf) {
            Write-Host "Removing file: $fullPath"
            Remove-Item -Path $fullPath -Force
        }
    }
    else {
        Write-Host "Skipping: $path (not found)"
    }
}

Write-Host "Cleanup complete."