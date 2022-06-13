// SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.4.0 <0.9.0;

contract tryingEnums{
    enum Rarity{
        original, //0
        rare,  //1
        super_rare //2
    }

    Rarity public rarityvar;

    constructor(){
        rarityvar = Rarity.rare;
    }

    //take something and set the arrity to super rare
    function makeSuperRare() public{
        rarityvar = Rarity.super_rare;

    }

}
