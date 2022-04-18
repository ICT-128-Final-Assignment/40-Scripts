#Name: Create folder in Public Desktop
#Author: PAUL QUIBAN

#synopsis: Create directoy in Desktop

$Filename = Read-Host "Enter a folder name" 

New-Item -Name "$Filename" -Path "C:\Users\Public\Desktop"  -ItemType "Directory" -Confirm
