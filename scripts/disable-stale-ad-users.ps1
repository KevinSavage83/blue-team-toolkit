<#
.SYNOPSIS
Identifies and disables stale Active Directory user accounts.

.DESCRIPTION
This script finds enabled AD user accounts that have not logged in for a defined number of days and disables them.
Used to reduce risk from inactive or orphaned accounts.

.NOTES
Run with appropriate administrative privileges.
Test in a non-production environment first.
#>

$DaysInactive = 90
$Time = (Get-Date).AddDays(-$DaysInactive)

Import-Module ActiveDirectory

$StaleUsers = Get-ADUser -Filter {
    Enabled -eq $true -and LastLogonDate -lt $Time
} -Properties LastLogonDate

foreach ($User in $StaleUsers) {
    Disable-ADAccount -Identity $User.SamAccountName
    Write-Output "Disabled account: $($User.SamAccountName)"
}
