$path = mkdir D:\Share01\DHCP-SCOPES-AUTO-BCKUP\dhcp-backup$([datetime]::now.ToString('yyyy-MM-dd-hh-mm'))
Backup-DhcpServer -ComputerName "winsvr-sea-test" -Path "$path"
