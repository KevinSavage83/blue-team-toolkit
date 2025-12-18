# Export AD users to CSV
Import-Module ActiveDirectory
Get-ADUser -Filter * -Properties LastLogonDate |
Select Name, SamAccountName, Enabled, LastLogonDate |
Export-Csv ad_users.csv -NoTypeInformation
