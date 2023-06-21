//SPDX-License-Identifier: Unlicense
pragma solidity ^0.8.0;

contract Whitelist {
    uint8 public maxWhitelistedAddresses;

    mapping(address => bool) public whitelistedAddresses;

    uint public numAddresseswhitelisted;

    constructor(uint8 _maxWhitelistedAddresses){
        maxWhitelistedAddresses = _maxWhitelistedAddresses;
    }

    function addAddressToWhitelist() public{
        require(!whitelistedAddresses[msg.sender], "Sender has already been whitelisted");
        require(numAddresseswhitelisted < maxWhitelistedAddresses, "More addresses cant be added, limit reached");
        whitelistedAddresses[msg.sender] = true;
        numAddresseswhitelisted +=1;

    }
}
