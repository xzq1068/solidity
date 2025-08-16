// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract MyToken{
    string public name="myToken";
    string public symbol="MTK";
    uint256 public totalSupply=1000;

    mapping(address=>uint256) public balanceOf;

    constructor(){
        balanceOf[msg.sender]=totalSupply;
    }

    function transfer(address to,uint256 amount) public {
        require(balanceOf[msg.sender] >= amount,"Not enough balance");
        balanceOf[msg.sender] -=amount;
        balanceOf[to] +=amount;
    }
    
}