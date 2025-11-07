# made and shared to torch community by @dorimanx
# https://discord.com/channels/929141809769226271/929143700695703632/1077878154640760842

$startCount = 0

[xml]$torchCfg = Get-Content -Path (Join-Path -Path "$PSScriptRoot" -ChildPath "../Torch.cfg")
$arguments = $torchCfg.SelectSingleNode("TorchConfig/InstanceName").InnerText

$processpath = Resolve-Path -Path (Join-Path -Path "$PSScriptRoot" -ChildPath "../Torch.Server.exe")
Write-Output "process path: $processpath"
while ($true)
{
    $process = Get-Process Torch.Server -ErrorAction SilentlyContinue | Where-Object {$_.Path -like $processpath}
    if ($null -eq $process)
    {
        $process = Start-Process $processpath -PassThru
        $startCount += 1
        Write-Output "$(Get-Date -Format o): Started '$($arguments)'... Start count: $($startCount)"
    }

    while (!$process.HasExited)
    {
        Start-Sleep 5
    }

    Write-Output "Process has exited"
    Start-Sleep 5
}