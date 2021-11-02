$path = mkdir D:\DHCP-SCOPES-AUTO-BCKUP\dhcp-backup$([datetime]::now.ToString('yyyy-MM-dd-hh-mm'))
Backup-DhcpServer -ComputerName "dcdhcp02" -Path "$path"