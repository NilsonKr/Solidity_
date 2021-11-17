// SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.7.0 <0.9.0;

contract Functions {

  function multiply(uint a, uint b) public pure returns (uint) {
    return internMultiply(a, b);
  }

  function internMultiply(uint a, uint b) internal pure returns (uint) {
    return a * b;
  }

  string secret = "This is a secret shhh!";

  function getSecret() public view returns (string memory) {
    return secret;
  }
}