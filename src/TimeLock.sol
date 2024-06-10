// SPDX-License-Identifier: MIT

pragma solidity ^0.8.19;

import {TimelockController} from "@openzeppelin/contracts/governance/TimelockController.sol";

/**
 * @title TimeLock
 * @author Tim Sigl
 * @notice This contract owns the governor contract to prevent early execution of proposal by adding a delay to execution
 */
contract TimeLock is TimelockController {
    constructor(uint256 minDelay, address[] memory proposers, address[] memory executors)
        TimelockController(minDelay, proposers, executors, msg.sender)
    {}
}