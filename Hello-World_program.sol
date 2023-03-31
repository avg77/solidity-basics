//SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract HelloWorld 
{   
    function print() public pure returns (string memory) 
    {       
        return 'Hello World! This is my first simple Smart Contract';             
    } 

    //Alternate method:-

    string hello = "Hello World! This is my first simple Smart Contract";
    function display() public view returns (string memory)
    {
        return hello;
    }
}
