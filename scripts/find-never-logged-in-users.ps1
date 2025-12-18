Import-Module ActiveDirectory

Get-ADUser -Filter * -Properties LastLogonDate |
Where-Object { $_.LastLogonDate -eq $null } |
Select Name, SamAccountName, Enabled
