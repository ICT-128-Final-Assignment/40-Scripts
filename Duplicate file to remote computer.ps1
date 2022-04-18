#Name: Duplicate file to remote computer
#Author: PAUL QUIBAN

#synopsis: Copy files from one directory to another from remote computer
$name = Read-Host "Enter computer name"
$location1 = Read-Host "Enter path of the item to be copied"
$location2 = Read-Host "Enter destination path to store file"
$Act1 = New-PSSession -ComputerName $name 
Copy-Item -Path $location1 -Destination $location2 -ToSession $Act1
