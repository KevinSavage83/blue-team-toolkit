# Detect connected USB devices
Get-PnpDevice -PresentOnly | Where-Object { $_.InstanceId -match "USB" }
