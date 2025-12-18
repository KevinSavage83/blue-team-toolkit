# Detect newly created local users
Get-LocalUser | Where-Object { $_.Enabled -eq $true }
