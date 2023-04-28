//SimpleStorage contract:-

//SPDX-License-Identifier: MIT
pragma solidity ^0.8.18;

contract SimpleStorage
{
   uint256 public avi;

   function store(uint256 _avi) public virtual         // 'virtual' keyword must be specified when inheriting a contract
   {
       avi = _avi;
   }
}

//ExtraStorage contract (inherited contract from SimpleStorage):-

//SPDX-License-Identifier: MIT
pragma solidity ^0.8.18;

import "./SimpleStorage.sol";                          // basically copying the entire contents of SimpleStorage into ExtraStorage

contract ExtraStorage is SimpleStorage                 // 'is' keyword to be used for inheriting a contract
{
   function store(uint256 _avi) public override        // 'override' keyword overrides the previous function created in SimpleStorage
   {
       avi = _avi + 5;
   }
}
