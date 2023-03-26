//SPDX-License-Identifier: MIT
pragma solidity ^0.8.7;

contract SimpleStorage
{
    // using structs

     struct Avi
     {
         int256 Num;                                                 //definition
         string name;
     }
     Avi public student = Avi({Num : 7, name : "Aviral"});           //declaration

    //using arrays with functions

     Avi[] public gupta;                                             //dynamic array as array size is not declared

     function addPerson(string memory _name, int256 _Num) public     //three keywords: 'memory', 'calldata' and 'storage' - we have to specify either 'memory' or 'calldata' for struct, arrays and mappings 
     {                                                               //since string is an array of words or bytes, keywords need to be specified before it
         
         gupta.push(Avi(_Num, _name));                               //the array 'gupta' asks us to provide values for struct 'Avi'
         nameToNum[_name] = _Num;
     }

     mapping(string => int256) public nameToNum;                     //mapping (data structure) maps a particular name to a particular value
                                                                     //called in above function 
}
