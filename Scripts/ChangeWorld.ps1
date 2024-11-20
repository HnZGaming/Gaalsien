param (
    [string]$name
)

function PatchName {
    param (
        [string]$filePath, 
        [string]$nodePath, 
        [string]$text
    )

    $absFilePath = Join-Path -Path "$PSScriptRoot" -ChildPath "$filePath"
    [xml]$xmlContent = Get-Content -Path $absFilePath
    $node = $xmlContent.SelectSingleNode("//$nodePath")
    $node.InnerText = $text
    $xmlContent.Save($absFilePath)
}

$path = (Join-Path -Path "$PSScriptRoot" -ChildPath "../Instance/Saves/$name") | Resolve-Path
PatchName -filePath "../Instance/SpaceEngineers-Dedicated.cfg" -nodePath "MyConfigDedicated/LoadWorld" -text $path
PatchName -filePath "../Instance/Saves/LastSession.sbl" -nodePath "MyObjectBuilder_LastSession/Path" -text $path
PatchName -filePath "../Instance/Saves/LastSession.sbl" -nodePath "MyObjectBuilder_LastSession/RelativePath" -text $name
Write-Output "Done"