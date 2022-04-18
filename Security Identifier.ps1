#Name: Security Identifier
#Author: PAUL QUIBAN

#synopsis: Display the Local SID for users account

$user = Read-Host "Enter username"
$account = New-Object System.Security.Principal.NTAccount($user)
$data = $account.Translate([System.Security.Principal.SecurityIdentifier])
$data.Value