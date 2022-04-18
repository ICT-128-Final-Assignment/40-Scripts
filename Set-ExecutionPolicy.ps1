#Name: Set-up execution policy
#Author: PAUL QUIBAN

#synopsis: Configure the execution policy for powershell
Get-ExecutionPolicy 
$policy = Read-Host " select execution policy : Restricted ,Unrestricted ,AllSigned,Bypass,RemoteSigned"
Set-ExecutionPolicy $policy -Scope CurrentUser -Force -confirm 