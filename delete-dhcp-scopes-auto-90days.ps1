$path = "D:\DHCP-SCOPES-AUTO-BCKUP"
Get-ChildItem -Path "$path" -Directory -recurse| where {$_.LastWriteTime -le $(get-date).AddDays(-90)} | Remove-Item -recurse -force