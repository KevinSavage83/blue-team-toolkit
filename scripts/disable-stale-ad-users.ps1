# Disable AD users inactive for 90 days
Import-Module ActiveDirectory
$DaysInactive = 90
$Time = (Get-Date).AddDays(-$DaysInactive)
Get-ADUser -Filter {Enabled -eq $true -and LastLogonDate -lt $Time} -Properties LastLogonDate |
ForEach-Object {
    Disable-ADAccount $_.SamAccountName
    Write-Output "Disabled: $($_.SamAccountName)"
}
