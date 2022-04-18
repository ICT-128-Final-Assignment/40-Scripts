#Name: Disable user account
#Author: PAUL QUIBAN

#synopsis: Change account status 
$name = Read-Host "Enter computer name" #PC name
$user = Read-Host "Enter account name" #User name
$status = Read-Host "Enter status e.g : Administrator,Guest,DefaultAccount"
Invoke-Command -ComputerName $name -ScriptBlock { Disable-LocalUser $user } -Credential $status #command to disable user account
