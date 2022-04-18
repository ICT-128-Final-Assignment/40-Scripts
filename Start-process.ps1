#Name: Start-process
#Author: PAUL QUIBAN

#synopsis: Open process

$app = Read-Host "Enter application to run" #Enter process name to be run by the system example : Notepad, Powershell,MsWord,etc...
Start-Process -FilePath "$app" -Verb RunAs