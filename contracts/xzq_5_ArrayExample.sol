// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;


contract ArrayExample{
    uint256[] public numbers;

    function addNumber(uint256 _num) public {
        numbers.push(_num);
    }

    function removeLast() public{
        numbers.pop();
    }

    function getNumber(uint256 index)public view returns (uint256){
        return numbers[index];
    }

    function length() public view returns (uint256){
        return numbers.length;
    }
}