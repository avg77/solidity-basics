//SPDX-License-Identifier: MIT
pragma solidity ^0.8.7;

contract SimpleStorage
{
    // using structs

     struct Avi
     {
         int256 Aviral;                                       //definition
         string name;
     }
     Avi public student = Avi({Aviral : 7, name : "Aviral"}); //declaration

    //using arrays

     Avi[] public gupta;       //dynamic array as array size is not declared
}
