// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;


contract Bank{

    mapping (address=>uint256) public  balances;
    uint public maxWithdraw=100 wei;

    //存款
    function deposit() public payable {
        balances[msg.sender] +=msg.value;  
    }

    //取款
    function withdraw(uint256 amount) public {
        require(amount<= maxWithdraw,"Exceeds limit");
        require(balances[msg.sender]>=amount,"Not enough blance");

        balances[msg.sender] -=amount;
        payable (msg.sender).transfer(amount);
    }
}