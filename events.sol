//SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract events{
    //The indexed parameters for logged events will allow you to search for these events using the indexed parameters as filters.
    //Stores the parameter as topic.

    event CreatedNFTs(address indexed user, uint256 id, uint256 dna);

    function createNFTs(uint256 _id, uint256 _dna) public{
        //create the nft and save to storage 

        emit CreatedNFTs(msg.sender,_id,_dna);
    }


}
