#Name: Uninstall application
#Author: PAUL QUIBAN

#synopsis: Removed programs installed in drive
 
Get-WmiObject -Class Win32_Product | Select-Object -Property Name#Display all intalled application in computer 
$selectapp = Get-WmiObject -Class Win32_Product | Where-Object{$_.Name -eq "$appname"}
$appname = Read-Host "Enter application name to be removed"  # Select application in the list to be removed
$uninstallapp = $selectapp.Uninstall()  