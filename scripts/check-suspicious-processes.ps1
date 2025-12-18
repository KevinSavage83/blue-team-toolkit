# Identify high CPU processes
Get-Process | Where CPU -gt 300 |
Sort CPU -Descending | Select Name, Id, CPU
