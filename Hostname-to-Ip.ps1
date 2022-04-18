#Name: IP-to-Hostname
#Author: PAUL QUIBAN

#synopsis: Translate ip address to its domain name

$ip = Read-Host "Enter DNS name to be translated"
Resolve-DnsName -Name $ip | Select-Object -Property Name, Ipaddress
