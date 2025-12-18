# Identify privileged AD accounts
Import-Module ActiveDirectory
$Groups = @("Domain Admins","Enterprise Admins","Administrators")
foreach ($Group in $Groups) {
    Write-Output "Members of $Group"
    Get-ADGroupMember $Group | Select Name, SamAccountName
}
