#Name: Join Domain
#Author: PAUL QUIBAN

#synopsis: Setup manual connection for local computer with a domain
$PCname = Read-Host "Enter computer name"
$domain = Read-Host "Enter DomainName"
Add-Computer -Computername $PCname -DomainName $domain -Restart