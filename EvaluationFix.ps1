Set-ItemProperty 'HKLM:\SYSTEM\CurrentControlSet\Services\sppsvc' -Name 'Start' -Value '4'
Restart-Computer -Confirm
