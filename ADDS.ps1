
#Name: ADDS
#Author: PAUL QUIBAN

#synopsis: Install ADDS on winserver 2022 via virtual machine

$biosname = Read-Host "Enter a biosname"
$Domainnam = Read-Host "Enter Domain name"

Add-WindowsFeature AD-Domain-Services -IncludeManagementTools
Import-Module ADDSDeployment
Install-ADDSForest `
-CreateDnsDelegation:$false `
-DatabasePath "C:\Windows" `
-DomainMode "WinThreshold" `
-DomainName "$Domainname" `
-DomainNetbiosName "$biosname" `
-ForestMode "WinThreshold" `
-InstallDns:$true `
-LogPath "C:\Windows\" `
-NoRebootOnCompletion:$false `
-SysvolPath "C:\Windows" `
-Force:$true