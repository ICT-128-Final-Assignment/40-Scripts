#Name: Disk Partition 
#Author: PAUL QUIBAN

#synopsis: Delete local user account
wmic useraccount get name
$name = Read-Host "Enter account name to be remove"
Remove-LocalUser -Name "$name" -Confirm