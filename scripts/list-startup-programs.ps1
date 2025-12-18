# List startup programs
Get-CimInstance Win32_StartupCommand | Select Name, Command, Location
