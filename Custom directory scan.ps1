#Name: Custom scan 
#Author: PAUL QUIBAN

#synopsis: Scan a particular directory in the drives


$location = Read-Host "Enter location path to be scanned , e.g : C:\File"
Start-MpScan -ScanPath CustomScan -ScanPath $location 