$rootPath = Resolve-Path -Path "$PSScriptRoot/.." | ForEach-Object { $_.Path }

function PatchPath {
    param (
        [string]$filePath, 
        [string]$nodePath
    )

    $absFilePath = Join-Path -Path "$PSScriptRoot" -ChildPath "$filePath"
    [xml]$xmlContent = Get-Content -Path $absFilePath
    $node = $xmlContent.SelectSingleNode("//$nodePath")
    $node.InnerText = $node.InnerText -replace "(.+?)[/\\]Instance", "$rootPath\Instance"
    $xmlContent.Save($absFilePath)
}

PatchPath -filePath "../Torch.cfg" -nodePath "TorchConfig/InstancePath"
PatchPath -filePath "../Instance/SpaceEngineers-Dedicated.cfg" -nodePath "MyConfigDedicated/LoadWorld"
PatchPath -filePath "../Instance/Saves/LastSession.sbl" -nodePath "MyObjectBuilder_LastSession/Path"
Write-Output "Done fixing path"