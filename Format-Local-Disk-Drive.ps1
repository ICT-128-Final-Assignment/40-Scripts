#Name: Clear Disk
#Author: PAUL QUIBAN

#synopsis: Reformat Computer Harddrive
Get-Disk
$Disknumber = Read-Host "Select Disk number "
Clear-Disk -Number $Disknumber -RemoveData -RemoveOEM -confirm  