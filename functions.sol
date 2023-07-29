//SPDX-License-Identifier: MIT
pragma solidity ^0.8.7;

contract SimpleStorage
{
    //Functions

    int256 public Aviral;

    function store(int _Aviral) public       //four types of access specifiers:
    {                                        //Public, Private, External and Internal
        Aviral = _Aviral;                    //Internal is the default access specifier   
        Aviral = Aviral + 1;                 //More the no. of statements, functions, more will be the gas fee  
    }

    // 'view' and 'pure' keywords in functions:-
    //pure - used when neither read or write has to be performed on a state variable
    //view - used when you need to read on a state variable
    
    // -> function to call, show or retrieve the value that we give to 'int _Aviral' in the previous function

    function retrieve() public view returns(int)    //when we use view or pure keyword, gas is not applicable because we're just viewing a transaction already created on a blockchain and not making any changes to it
    {                                               //however, if we call the function that use view or pure keyword in a gas calling function (function on which gas is applicable), then gas is charged on that function
        return Aviral;
    }

    function add() public pure returns(int)
    {
        return (1+1);
    }
}
