param (
    [string]$name
)

function PatchName {
    param (
        [string]$filePath, 
        [string]$nodePath
    )

    $absFilePath = Join-Path -Path "$PSScriptRoot" -ChildPath "$filePath"
    [xml]$xmlContent = Get-Content -Path $absFilePath
    $node = $xmlContent.SelectSingleNode("//$nodePath")
    $node.InnerText = $name
    $xmlContent.Save($absFilePath)
}

PatchName -filePath "../Torch.cfg" -nodePath "TorchConfig/InstanceName"
PatchName -filePath "../Instance/SpaceEngineers-Dedicated.cfg" -nodePath "MyConfigDedicated/WorldName"
PatchName -filePath "../Instance/Saves/LastSession.sbl" -nodePath "MyObjectBuilder_LastSession/GameName"
PatchName -filePath "../Instance/Saves/Star System/Sandbox_config.sbc" -nodePath "MyObjectBuilder_WorldConfiguration/SessionName"
PatchName -filePath "../Instance/Saves/Star System/Sandbox.sbc" -nodePath "MyObjectBuilder_Checkpoint/SessionName"
Write-Output "Done remaining the world name to $name"