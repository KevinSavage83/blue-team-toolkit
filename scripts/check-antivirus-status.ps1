# Check Microsoft Defender status
Get-MpComputerStatus |
Select AntivirusEnabled, RealTimeProtectionEnabled, AMServiceEnabled
