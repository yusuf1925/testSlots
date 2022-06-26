<?php
header('Content-Type: application/json');
header('Access-Control-Allow-Origin: *');
function checkIfMult($input,$toBeChecked){
    if(!($toBeChecked*$input == 0)){
        return !( $toBeChecked % $input );
      }
    else return false;
 }
 function Palindrome($string){ 
    $lower=strtolower($string);
    if (strrev($lower) == $lower and strlen($string)>1 and strlen($string)<500){ 
        return true; 
    }
    else{
        return false;
    }
} 

$lijst=array(0,1,2,4,6,12,-12,-6,-4,12121,-1221,-4.1,-6.6,-12.3,-12.6,12.3, 12.6,9223372036854775809,"civic","Civic","!,+,;%&((&%;,+,!");

for($i=0;$i<count($lijst);$i++){
    if(gettype($lijst[$i])=='integer'){
        $by4 =(checkIfMult(4,$lijst[$i]));
        $by6 =(checkIfMult(6,$lijst[$i]));
    }
    
    $myObj = new stdClass();
    $myObj->id = $i+1;
    $myObj->actualInput = $lijst[$i];
    $myObj->isPalindrome = Palindrome($lijst[$i]);
    $myObj->isMultipliedBy4 = $by4;
    $myObj->isMultipliedBy6 = $by6;
    $myObj->isMultipliedBy4or6 =($by4 or $by6);
    $myObj->isMultipliedBy4and6=($by4 and $by6);
    $myObj->dataType=gettype($lijst[$i]);
  
    $result[] = $myObj;
}
$x = new stdClass();
$x->data = $result;

$response = json_encode($x);

echo $response;
?>