#Name: Resize disk partition 
#Author: PAUL QUIBAN

#synopsis: Resizes a partition and the underlying file system.
Get-Disk 
Get-Partition | format-table 
$Disknumber = Read-Host "Enter Disk number"
$Partitionnumber = Read-Host " Enter Partition number"
$disksize = Read-host "Enter disk size to be partitioned"
$size = $disksize*1gb
Resize-Partition -DiskNumber $Disknumber -PartitionNumber $Partitionnumber -Size $size -Confirm


