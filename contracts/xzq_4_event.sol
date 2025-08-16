// SPDX-License-Identifier: MIT
pragma solidity ^0.8.13;


contract EventExample{
    event Sent(address form,address to,uint256 amount);


    function send(address to,uint256 amount) public {
        emit Sent(msg.sender, to, amount);
    }
}