//SPDX-License-Identifier: MIT
pragma solidity ^0.5.0;

contract Base {
   uint public data;
   constructor(uint _data) public {
      data = _data; 

   }
}
contract Derived is Base {
    uint public num;

   constructor(uint _info) Base(_info * _info) public {
       num = _info;
   }

}
