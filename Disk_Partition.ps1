#Name: Disk Partition 
#Author: PAUL QUIBAN

#synopsis create a Create a Disk Partition on an existing Disk on PC

$Disk = Read-Host "Enter the Disk number to be partitioned"
$Amount = Read-Host "Enter the amount of disk to be partitioned in the Target Drive in GB"
$Size = $Amount*1GB
$letter = Read-Host "Enter a Designated Letter for the new partitioned drive"
New-Partition -DiskNumber $Disk -Size $Size -AssignDriveLetter $letter 