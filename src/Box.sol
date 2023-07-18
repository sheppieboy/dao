// SPDX-License-Identifier: MIT
pragma solidity 0.8.18;

import "@openzeppelin/contracts/access/Ownable.sol";

contract Box is Ownable {
    uint256 private number;

    event NumberChanged(uint256 number);

    function store(uint256 newNumber) public onlyOwner {
        number = newNumber;
        emit NumberChanged(newNumber);
    }

    function getNumber() external view returns (uint256) {
        return number;
    }
}
