#Name: Remove ip address
#Author: PAUL QUIBAN
#synopsis: Delete an ip address in the system that is manually configured

$rev = Read-Host "Enter IP address to be remove"
$gate = Read-Host "Enter IP defaultgateway to be remove"
$length = Read-Host "Enter prefix length"
Remove-NetIPAddress -IPAddress $rev -DefaultGateway $gate -PrefixLength $length -PrefixOrigin Manual #remove ip address command