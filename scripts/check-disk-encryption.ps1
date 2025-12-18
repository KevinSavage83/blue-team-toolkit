# Check BitLocker encryption status
Get-BitLockerVolume | Select MountPoint, VolumeStatus, ProtectionStatus
