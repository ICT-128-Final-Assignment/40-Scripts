#Name: Enable Firewall profile 
#Author: PAUL QUIBAN

#synopsis: Configure firewall status using command
Get-NetFirewallProfile | Format-Table Name, Enabled,LogFileName 
$name = Read-host " Enter Profile name : example : Domain,Public,Private"
Set-NetFirewallProfile -Profile $name -Enabled True
     