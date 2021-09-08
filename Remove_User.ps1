#captures username sent to script
Param($username)
write-host "Removing user: $username"
#removes the user profile
Get-CimInstance -Class Win32_UserProfile | Where-Object {$_.LocalPath.split('\')[-1] -eq "$username"} | Remove-CimInstance
write-host "The user: $username was removed"
