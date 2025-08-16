// SPDX-License-Identifier: MIT
pragma solidity ^0.8.13;


contract Voteing{
    mapping (string=>uint256) public votes;

    mapping (address=>bool) public voter;

    function vote(string memory key) public {
        require(!voter[msg.sender],"Already voted");
        votes[key]+=1;
        voter[msg.sender]=true;
    }
}