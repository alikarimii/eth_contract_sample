// SPDX-License-Identifier: MIT
pragma solidity >=0.8.0 <0.9.0;

import "./function.sol";

contract FirstFactory {
    FirstContract[] allContract;

    function createFirstContract() public {
        FirstContract c1 = new FirstContract();
        allContract.push(c1);
    }

    function callTest4FromFirstContract(uint256 index, string memory name)
        public
        view
        returns (uint256)
    {
        return FirstContract(address(allContract[index])).test4(name);
    }
}
