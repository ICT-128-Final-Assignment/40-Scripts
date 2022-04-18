#Name: Stop-running-process
#Author: PAUL QUIBAN

#synopsis: Shutdown selected process ID

$Display = Read-Host "Press enter to show Running Process"
Get-Process | format-list ID,processname
$ID = Read-Host "Enter Process ID "
Stop-Process -ID $ID -Force -Confirm