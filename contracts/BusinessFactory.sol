pragma solidity >=0.8.0;

// SPDX-License-Identifier: MIT

import "@openzeppelin/contracts/access/Ownable.sol";
import "@openzeppelin/contracts/token/ERC20/IERC20.sol";
import "./Organization.sol";

contract BusinessFactory is Ownable {
    uint32 constant public version = 1;

    IERC20 public libra;
    uint256 public organizationEstablishFee = 10 ether;

    mapping(address => string) public identification;
    mapping(address => bool) public organizationExistance;
    address[] public registeredOrganizations;

    constructor() {

    }

    function establishOrganization(string calldata _name, uint256 _shares, string calldata _identity) public returns(address) {
       // establish organization
       
    }

    function getOrganizationIdentification(address organizationContract) public view returns(string memory) {
        return identification[organizationContract];
    }

    // OWNER FUNCTIONS

    function setOrganizationFee(uint256 _fee) public onlyOwner {
        organizationEstablishFee = _fee;

        emit OrganizationFeeChanged(msg.sender, _fee);
    }

    event OrganizationFeeChanged(address indexed changer, uint256 fee);
}