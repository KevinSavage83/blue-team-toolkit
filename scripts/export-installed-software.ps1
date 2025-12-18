# Export installed software inventory
Get-ItemProperty HKLM:\Software\Microsoft\Windows\CurrentVersion\Uninstall\* |
Select DisplayName, DisplayVersion |
Export-Csv installed_software.csv -NoTypeInformation
