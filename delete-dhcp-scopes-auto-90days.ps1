$path = "D:\DHCP-SCOPES-AUTO-BCKUP"
#After 90 days Example
Get-ChildItem -Path "$path" -Directory -recurse| where {$_.LastWriteTime -le $(get-date).AddDays(-90)} | Remove-Item -recurse -force

#If you want to delete after 90 minutes uncomment below line
#Get-ChildItem -Path "$path" -Directory -recurse| where {$_.LastWriteTime -le $(get-date).AddMinutes(-90)} | Remove-Item -recurse -force
#If you want to delete after 90 hours uncomment below line
#Get-ChildItem -Path "$path" -Directory -recurse| where {$_.LastWriteTime -le $(get-date).AddHours(-90)} | Remove-Item -recurse -force
