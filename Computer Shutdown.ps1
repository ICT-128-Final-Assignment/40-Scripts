#Name: Computer Shutdown
#Author: PAUL QUIBAN

#synopsis: Stop computer operation
$pcname = Read-Host "Enter computer name" 
Stop-Computer -ComputerName $pcname -Force -Confirm