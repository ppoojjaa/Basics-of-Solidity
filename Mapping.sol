// SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.4.0 <0.9.0;

contract myMapping{
    mapping(uint256 => address) public nfts;
    uint256 counter=0;
    
    //interacting with mapping variables ; getting back value of the nft ; techically unncessary because the mapping function is public and calls itself 
    function getOwnerOfNft(uint256 _id) public view returns(address){ //returns the address of the nft
        return nfts[_id];
    }

    //passing address to set the address to the counter variable
    function mintNfts(address _address) public{ //update nft value of that counter, of that key to the new address 
        nfts[counter] = _address;
        counter++;
    }
}
