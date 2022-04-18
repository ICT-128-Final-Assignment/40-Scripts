#Name: IP-to-Hostname
#Author: PAUL QUIBAN

#synopsis: Translate ip address to its domain name

$ip = Read-Host "Enter ip to be translated"
Resolve-DnsName $ip | Select-Object -Property NameHost, Type , TTL
