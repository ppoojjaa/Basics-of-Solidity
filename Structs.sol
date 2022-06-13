//SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract tryingStructs{
    struct NFTs{
        string name;
        uint256 dna;
    }
    NFTs[] public arr;

    function addNfts(string memory _name, uint256 _dna) public{
        
        //The long way 
        // NFTs memory newNFTs;
        //creating a block in struct called newNFTs; this will have its own name and dna. Like creating a object with properties in JS 
        // newNFTs.name = _name;
        // newNFTs.dna =_dna;
        // arr.push(newNFTs);
        NFTs memory newNFTs = NFTs(_name,_dna); // memory variable
        arr.push(newNFTs); //pushed on the blockchain storage
    }

    function getNFTName(uint _id) public view returns(string memory){
        return arr[_id].name;
    }

}
