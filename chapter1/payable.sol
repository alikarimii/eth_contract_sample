// SPDX-License-Identifier: MIT
pragma solidity >=0.8.0 <0.9.0;

contract FundMe {
    mapping(address => uint256) addressToAmountFunded;

    function fund() public payable {
        addressToAmountFunded[address(msg.sender)] += msg.value;
    }
}
