#Name: Build a simple VM 
#Author: PAUL QUIBAN

#synopsis create a simple virtual machine with no VHD disk and is set to boot from CD or ISO.


$VMName = Read-Host "Enter a New Virtual Machine Name"
[int64] $RAM = Read-Host "Enter a value of RAM (Note:Recommended Range 1GB-4GB)" 
[int64] $startmemory = $RAM*1GB
$Gen = Read-Host "Select Generation Enter value 1 or 2"
$switchtype = Read-Host " Select switch type (Internal ,Private, Default Switch, External)"
$Version = Read-Host "Select a version : input 9.0 or 10.0"

New-VM -Name $VMName -Generation $Gen -MemoryStartupBytes $startmemory -BootDevice CD -NoVHD -SwitchName $switchtype -Version $Version