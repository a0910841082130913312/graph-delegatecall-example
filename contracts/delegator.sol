// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.7.0 <0.9.0;

contract Delegator {
    uint256 public i;
    constructor() {
        i = 0;
    }
    receive() external payable {}
    function delegate() public {
        address storageContract = 0x0; // placeholder
        storageContract.delegatecall(abi.encodeWithSignature("increment(uint256)", 10));
    }
}