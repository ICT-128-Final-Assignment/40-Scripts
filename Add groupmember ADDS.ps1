#Name: Add groupmember :ADDS
#Author: PAUL QUIBAN

#synopsis: Join a member into a group in Active Directory
$name = Read-Host "Enter group name" # Domain group
$member = Read-Host "Enter a member name"

Add-ADGroupMember -Identity $name -Members $member #Join a member to a group
Get-ADGroupMember $name | ft SamAccountName ,Name,ObjectClass # Verify ouput