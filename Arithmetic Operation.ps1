#Name: Math arithmethic 
#Author: PAUL QUIBAN

#synopsis: Perform basic math operation using ( +,-,*,/,% :)

$Restart = "yes"
while( $Restart -eq "yes")
{
[int]$Rationalnumber1 = Read-Host "Enter a 1st number"
[int]$Rationalnumber2 = Read-Host "Enter a 2nd number"

$Mathoperator = Read-Host " Select math operator : +,-,*,/,% :"

Switch($Mathoperator)
{
    +
   {
      $Rationalnumber1 + $Rationalnumber2 # addition
    }
    -
   {
      $Rationalnumber1 - $Rationalnumber2 # subtraction
    }
    *
   {
      $Rationalnumber1 * $Rationalnumber2 # Multiplication
    }
    /
   {
      $Rationalnumber1 / $Rationalnumber2 # Division
    }
    %
   {
      $Rationalnumber1 % $Rationalnumber2 # Remainder
    }
    }
    $Restart = "yes" 
    $Restart = Read-host "Restart operation :yes or no " # perform another operation option

}

