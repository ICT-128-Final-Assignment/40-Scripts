#Name: WindwosDefender
#Author: PAUL QUIBAN

#synopsis Check windows defender status and perform MPscan on drives.

$Check = Read-Host " Check windefender status, press enter"
$def = "Windefend"
#Set the Windows Defender into running state
#Note if the PC is running anti-virus software , the Windows Defender would be on Stopped State
set-MpPreference -DisableRealtimeMonitoring $false # Set Windefender to Running state
#Check Windows defender status
Get-Service $def, SecurityHealthService, wscsvc| Select Name,DisplayName, Status
#Allow Windows scan in PC
$type = Read-Host " Input scan type : QuickScan or FullScan" 
Start-MpScan -ScanType $type

 