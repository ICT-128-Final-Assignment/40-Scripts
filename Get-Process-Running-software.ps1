#Name: Running Application
#Author: PAUL QUIBA
#synopsis: Show running process in desktop

Get-Process | Where-Object {$_.mainWindowTitle} | Format-Table Id, Name, mainWindowtitle -AutoSize