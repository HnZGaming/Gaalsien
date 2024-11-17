# made by Dori
Import-Module "C:\loki\LogToLoki.psm1" -Force

$startCount = 0
$crashCount = 0
$servername = "Torch-Server-Creative"
$lokiJob = "torch_creative"
$expectedRestartMinutes = 6 * 60

Write-LokiLogMessage -Level INFO -Message "SE Auto-Restart Script Started" -Labels @{job=$lokiJob; component="AutoRestart-PowerShell-Script"}
while ($true)
{
    $startCount++
    $processpath = $(Resolve-Path "Torch.Server.exe")
    $process = Get-Process Torch.Server | Where-Object {($_.Path -like $processpath) -and (-not $_.HasExited)} | Select-Object -First 1
    if (!!$process)
    {
        Write-LokiLogMessage -Level INFO -Message "Monitoring ($($servername))... Start count: $($startCount)" -Labels @{job=$lokiJob; component="AutoRestart-PowerShell-Script"}
        #Write-Output "$(Get-Date -Format o): Monitoring ($($servername))... Start count: $($startCount)"
    }
    else
    {
        Write-LokiLogMessage -Level INFO -Message "Starting ($($servername))... Start count: $($startCount)" -Labels @{job=$lokiJob; component="AutoRestart-PowerShell-Script"}
        #Write-Output "$(Get-Date -Format o): Starting ($($servername))... Start count: $($startCount)"
        $process = Start-Process $(Resolve-Path "Torch.Server.exe") -PassThru
    }
	$handle = $process.Handle
	$crashFilePath = "$processpath\$($process.Id).$($servername)"
    #Write-Output "$(Get-Date -Format o): Watching process with PID $($process.Id)"
    $startTime = $process.StartTime
    Write-LokiLogMessage -Level INFO -Message "Watching process with PID $($process.Id) started at ${startTime}" -Labels @{job=$lokiJob; component="AutoRestart-PowerShell-Script"}

    $process.WaitForExit()
	<#while (!$process.HasExited)
	{
		if ($(Get-Item $crashFilePath -ErrorAction SilentlyContinue) -ne $null)
		{
			$crashCount++
            Write-LokiLogMessage -Level ERROR -Message "$($servername) crashed/restarted... Restarting/Monitoring server. Crash/Restart count: $($crashCount)" -Labels @{job=$lokiJob; component="AutoRestart-PowerShell-Script"}
			#$Host.UI.WriteErrorLine("$(Get-Date -Format o): $($servername) crashed/restarted... Restarting/Monitoring server. Crash/Restart count: $($crashCount)")
			Stop-Process -InputObject $process
			Remove-Item $crashFilePath
			Start-Sleep 2
			break
		}
		Start-Sleep 2
	}#>
    $timeRan = ((Get-Date) - $startTime)
    #Write-Output "$(Get-Date -Format o): PID $($process.Id) exited with code $($process.ExitCode)"
    if ($process.ExitCode -eq $null) {
        if ($timeRan.TotalMinutes -lt $expectedRestartMinutes) { 
            Write-LokiLogMessage -Level WARN -Message "$($servername) potentially crashed. Time Ran: ${timeRan}" -Labels @{job=$lokiJob; component="AutoRestart-PowerShell-Script"}
        } else {
            Write-LokiLogMessage -Level INFO -Message "$($servername) exited. Time Ran: ${timeRan}" -Labels @{job=$lokiJob; component="AutoRestart-PowerShell-Script"}
        }
    } else {
        if ($process.ExitCode -eq 0) {
            Write-LokiLogMessage -Level INFO -Message "$($servername) exited with ExitCode $($process.ExitCode). Time Ran: ${timeRan}" -Labels @{job=$lokiJob; component="AutoRestart-PowerShell-Script"}
        } else {
            if ($timeRan.TotalMinutes -lt $expectedRestartMinutes) { 
                Write-LokiLogMessage -Level WARN -Message "$($servername) potentially crashed with ExitCode $($process.ExitCode). Time Ran: ${timeRan}" -Labels @{job=$lokiJob; component="AutoRestart-PowerShell-Script"}
            } else {
                Write-LokiLogMessage -Level INFO -Message "$($servername) exited with ExitCode $($process.ExitCode). Time Ran: ${timeRan}" -Labels @{job=$lokiJob; component="AutoRestart-PowerShell-Script"}
            }
        }
    } 
    Remove-Variable process
    Remove-Variable handle
}
