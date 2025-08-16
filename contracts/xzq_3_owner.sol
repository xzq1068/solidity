// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract OwnableExample{
    address public owner;

    constructor(){
        owner=msg.sender; //部署者是owner
    }

    modifier onlyOwner(){
        require(msg.sender==owner,"Not owner");
        _;
    }

    string public secret;

    function setSecret(string memory _secret) public onlyOwner{
        secret=_secret;
    }
}