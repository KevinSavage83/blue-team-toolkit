# Disable a specific AD user account
param([string]$Username)
Import-Module ActiveDirectory
Disable-ADAccount -Identity $Username
Write-Output "Account disabled: $Username"
