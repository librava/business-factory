pragma solidity >=0.8.0;

// SPDX-License-Identifier: MIT

///
/// Organization Contract
/// Designed for working smoothly with Librava standards.
/// version 0.0.1.1 -> UINT num : 1
///

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";

abstract contract Organization is ERC20 {

    string public identity;

    constructor(string memory _identity) {
        identity = _identity;
    }

    
}