#Name: Disk Partition 
#Author: PAUL QUIBAN

#synopsis: Configure user account group
wmic useraccount get name
$Group = Read-Host " Enter group type : Administrator or Guest "
$Name = Read-Host "Enter the User account name" 
Add-LocalGroupMember -Group $Group -Member $Name -Confirm 

