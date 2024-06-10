// SPDX-License-Identifier: MIT

pragma solidity ^0.8.19;

import {Ownable} from "@openzeppelin/contracts/access/Ownable.sol";

contract Box is Ownable {
    uint256 private s_number;

    event NumberChanged(uint256 newNumber);

    function store(uint256 newValue) public onlyOwner {
        s_number = newValue;
        emit NumberChanged(newValue);
    }

    function getNumber() public view returns (uint256) {
        return s_number;
    }
}
