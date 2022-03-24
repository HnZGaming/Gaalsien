# made by Dori

$startCount = 0
$crashCount = 0
$servername = "Torch-Server"
while ($true)
{
    $startCount++
	Write-Output "$(Get-Date -Format o): Starting/Monitoring ($($servername))... Start count: $($startCount)"

    $processpath = $(Resolve-Path "Torch.Server.exe")

    if (Get-Process Torch.Server | Where-Object {$_.Path -like $processpath})
    {
        $process = Get-Process Torch.Server | Where-Object {$_.Path -like $processpath}
    }
    else
    {
        $process = Start-Process $(Resolve-Path "Torch.Server.exe") -PassThru
    }
	
	$crashFilePath = "$processpath\$($process.Id).$($servername)"

	while (!$process.HasExited)
	{
		if ($(Get-Item $crashFilePath -ErrorAction SilentlyContinue) -ne $null)
		{
			$crashCount++
			$Host.UI.WriteErrorLine("$(Get-Date -Format o): $($servername) crashed/restarted... Restarting/Monitoring server. Crash/Restart count: $($crashCount)")
			Stop-Process -InputObject $process
			Remove-Item $crashFilePath
			Start-Sleep 2
			break
		}
		Start-Sleep 2
	}
}
