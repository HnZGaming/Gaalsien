# made and shared to torch community by @dorimanx
# https://discord.com/channels/929141809769226271/929143700695703632/1077878154640760842

$startCount = 0
$crashCount = 0

[xml]$torchCfg = Get-Content -Path (Join-Path -Path "$PSScriptRoot" -ChildPath "../Torch.cfg")
$arguments = $torchCfg.SelectSingleNode("TorchConfig/InstanceName").InnerText
while ($true)
{
    $startCount++
    Write-Output "$(Get-Date -Format o): Starting/Monitoring ($($arguments))... Start count: $($startCount)"

    $processpath = Get-Content -Path (Join-Path -Path "$PSScriptRoot" -ChildPath "../Torch.Server.exe")

    if (Get-Process Torch.Server | Where-Object {$_.Path -like $processpath})
    {
        $process = Get-Process Torch.Server | Where-Object {$_.Path -like $processpath}
    }
    else
    {
        $process = Start-Process $processpath -PassThru
    }

    $crashFilePath = "$processpath\$($process.Id).$($servername)"

    while (!$process.HasExited)
    {
        if ($null -ne $(Get-Item $crashFilePath -ErrorAction SilentlyContinue))
        {
            $crashCount++
            $Host.UI.WriteErrorLine("$(Get-Date -Format o): $($servername) crashed/restarted... Restarting/Monitoring server. Crash/Restart count: $($crashCount)")
            Stop-Process -InputObject $process
            Remove-Item $crashFilePath
            Start-Sleep 5
            break
        }

        Start-Sleep 5
    }
}