Get-Process |
Where-Object { $_.CPU -gt 300 } |
Select Name, Id, CPU |
Sort-Object CPU -Descending
