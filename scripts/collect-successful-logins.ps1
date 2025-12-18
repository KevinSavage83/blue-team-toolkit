# Collect successful login events
Get-WinEvent -FilterHashtable @{LogName='Security'; Id=4624} -MaxEvents 100 |
Select TimeCreated, Message
