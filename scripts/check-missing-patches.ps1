# Check recent Windows patches
Get-HotFix | Sort InstalledOn -Descending | Select -First 20
