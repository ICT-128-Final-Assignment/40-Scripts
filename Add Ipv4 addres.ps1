#Name: Add Ipv4 address
#Author: PAUL QUIBAN

#synopsis: Create new IPv4 address

$ip = Read-Host " Enter ipv4 address to be add"
$int = Read-Host " Enter interfaceindex value"
$gate = Read-Host " Enter defaultgateway"
New-NetIPAddress -InterfaceIndex $int -IPAddress $ip -PrefixLength 24 -DefaultGateway $gate 
