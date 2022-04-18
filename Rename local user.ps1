#Name: Rename local user
#Author: PAUL QUIBAN

#synopsis: Change the name of user accounts in the system


$start = Read-Host "Press enter to display local users"
#displays all user accounts
get-localUser 
$accountname = Read-Host "Enter accountname , e.g : Administrator,DefaultAccount,Guest"
$new = Read-Host "Enter new name" 
#Change name
Rename-LocalUser -Name $accountname -Newname $new
#Note should be in admin account