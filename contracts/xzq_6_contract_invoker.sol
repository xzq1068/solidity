// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;


contract B{
    uint256 public x;

    function setX(uint256 _x)public {
        x=_x;
    }
}

contract A{
    function callB(address bAddress,uint256 value) public {
        B(bAddress).setX(value);
    }
}