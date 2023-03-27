// This is a fully deployable basic smart contract on the testnet!

// SPDX-License-Identifier: MIT
pragma solidity 0.8.8;                                                            //header declaration
// pragma solidity ^0.8.0;
// pragma solidity >=0.8.0 <0.9.0;

contract SimpleStorage {                                                          //contract declaration (just like 'class' in languages like C++, JavaScript)

    uint256 favoriteNumber;                                                       //variable declaration

    struct People {                                                               //struct
        uint256 favoriteNumber;
        string name;
    }
    // uint256[] public anArray;
    People[] public people;                                                       //array

    mapping(string => uint256) public nameToFavoriteNumber;                       //mapping

    function store(uint256 _favoriteNumber) public {                              //function
        favoriteNumber = _favoriteNumber;
    }
    
    function retrieve() public view returns (uint256){                            //view function (gas not applicable)
        return favoriteNumber;
    }

    function addPerson(string memory _name, uint256 _favoriteNumber) public {     //function calling an array and struct 
        people.push(People(_favoriteNumber, _name));
        nameToFavoriteNumber[_name] = _favoriteNumber;
    }
}
