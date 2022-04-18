#Name: File directory search
#Author: PAUL QUIBAN

#synopsis: Search a file within the drive disk
$location1 = Read-Host "Enter location path" # select the target hard drive
$file = Read-Host "Enter file name" #file name to be search
Get-ChildItem -Path $location1 -Filter $file -Recurse -ErrorAction SilentlyContinue -Force 