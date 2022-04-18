#Name: Group for ADDS
#Author: PAUL QUIBAN

#synopsis: Create a group under Active directory
$name = Read-Host "Enter group name" # Domain group
$info = Read-Host "Enter a description"

New-ADgroup -Name $name -Description $info -Groupscope Global
