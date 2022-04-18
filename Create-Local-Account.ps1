#Name: New User account 
#Author: PAUL QUIBA
#synopsis: creates a local user account Administrator 

$Name = Read-Host " Enter an account name"
$Desc = Read-Host "Enter a description"
$Password = Read-Host -AsSecureString 
$fullname = Read-Host "Enter full name"



New-LocalUser -Name $Name -Description $Desc -AccountNeverExpires -FullName $fullname -Password $Password 
Write-host "New user account $Name created"
