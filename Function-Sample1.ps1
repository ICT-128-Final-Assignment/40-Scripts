#Name: Function : Return zero condition 
#Author: PAUL QUIBAN

#synopsis: Returns a zero value if a given parameter is an odd number



function Sample1 {
    param(
        [int]$x
    )
    $y = $x
    if ($y % 2 -eq 0) {
        $z = $x   
    }
    else {
        $z = "false"
    }
    return $z   
    }