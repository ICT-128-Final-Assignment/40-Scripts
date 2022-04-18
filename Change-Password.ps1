#Name: Change-Password
#Author: PAUL QUIBAN

#synopsis: change the password for local user accounts

$start = Read-Host "Press enter to view user accounts"
Get-LocalUser #display all account
$Request = Get-Credential
$user = $Request.UserName #promt to enter username
$password = $Request.Password#promt to enter password
Set-LocalUser -Name $user -Password $password -Confirm #command to process change
