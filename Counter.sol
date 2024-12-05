// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import "openzeppelin-contracts/contracts/access/Ownable.sol";

contract Counter is Ownable {
    uint256 public number;

    constructor() Ownable(msg.sender) {}

    function setNumber(uint256 newNumber) public onlyOwner {
        number = newNumber;
    }

    function increment() public onlyOwner {
        number++;
    }
}
