# List local administrators
Get-LocalGroupMember -Group "Administrators" | Select Name, ObjectClass
