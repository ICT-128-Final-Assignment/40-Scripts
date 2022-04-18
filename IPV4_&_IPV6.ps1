#Name: Disk Partition 
#Author: PAUL QUIBAN

#synopsis  gets information about IPv4 and Ipv6 address of computer

Get-NetIPAddress -AddressFamily IPv4 -AddressState Preferred -PrefixLength 24 | Format-Table 
Get-NetIPAddress -AddressFamily IPv6 -Type Unicast -PrefixLength 128 -InterfaceIndex 21 | Format-Table 
