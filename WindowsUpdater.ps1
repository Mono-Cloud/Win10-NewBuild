Write-Output "[*]Installing Windows Update Module"
Install-Module PSWindowsUpdate 


Write-Output "[+] Windows Update Module Installed Successfully"
Start-Sleep -s 1
Write-Output "[*]Fetching Windows Updates"
Get-WindowsUpdate 


Write-Output "[+] Fetched Windows Updates Successfully"
Start-Sleep -s 1
Write-Output "[*]Installing Windows Updates"
Install-WindowsUpdate

Write-Output "[+] Windows Updates Installed Successfully"
Start-Sleep -s 2
