//SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract firstContract{
    string public name;
    
    //constructor can only be called once; doesnt require a name ; one contract can only have one construtor 
    constructor(string memory _name){
        name = _name;
    }
    
}

contract trial2 is firstContract{
    constructor(string memory _name) firstContract(_name){}
}
