#Name: CPU information 
#Author: PAUL QUIBAN

#synopsis: Display CPU data
Get-CimInstance -Class Win32_processor | Select-Object Name, Description,CurrentClockSpeed,DeviceID,Manufacturer | Format-table
$cputemperature = get-wmiobject MSAcpi_ThermalZoneTemperature -namespace "root/wmi"
$Kelvin = ( $cputemperature.CurrentTemperature / 10 )
$Celsius = ($Kelvin - 273.15)
$Fahrenheit = ( (9/5) * $Celsius + 32 )
Write-host "CPU temperature: $Celsius Celcius" 

