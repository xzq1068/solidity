// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;


contract SimpleBank{

    mapping (address=>uint256) public balances;

    //存款 （给合约转账）
    function deposit() public payable {
        balances[msg.sender] +=msg.value;
    }
    
     //取款
    function withdraw(uint256 amount) public {
        
        require(balances[msg.sender] >= amount,"Not enough balance");
        
        balances[msg.sender]-=amount;
        
        payable(msg.sender).transfer(amount);
    }

    //查看自己的余额
    function showSelfBalance() public view returns(uint256){
        return balances[msg.sender];
    }
}