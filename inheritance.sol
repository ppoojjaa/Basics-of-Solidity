//SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract myContract{
    uint256 public num = 20; 
    bool private paused = true;
    uint256 internal time = block.timestamp;

    function myFun() public view{
        uint256 localnum = 90;
        address senderAddress = msg.sender;
    }

} 

//Inheritance
contract iNeedVariables is myContract{
    uint256 public awesomeNum = 100;
    //the private variables of the parent contract cannt be accessed in the inherited contract
    uint256 public thisTime = time;
}
