# Identify stopped critical services
Get-Service | Where-Object { $_.Status -ne 'Running' } |
Select Name, Status
