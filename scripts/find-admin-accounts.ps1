<#
.SYNOPSIS
Identifies users with administrative privileges in Active Directory.
#>

Import-Module ActiveDirectory

$AdminGroups = @(
    "Domain Admins",
    "Enterprise Admins",
    "Administrators"
)

foreach ($Group in $AdminGroups) {
    Write-Output "`nMembers of $Group:"
    Get-ADGroupMember -Identity $Group | Select Name, SamAccountName
}
