// SPDX-License-Identifier: MIT
pragma solidity ^0.8.23;

contract CheckInV2 {
    mapping(address => bool) users;
    string private version = "1.0.1";

    function checkIn() public {
        users[msg.sender] = true;
    }

    function check() public view returns (bool) {
        require(users[msg.sender], "User does not check in");
        return true;
    }

    function getVersion() public view  returns (string memory) {
        return version;
    }
}
