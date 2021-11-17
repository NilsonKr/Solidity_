// SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.7.0 <0.9.0;

contract ModifiersAndErrors {
  address public owner = msg.sender;
  string secret;
  uint magicNumber;


  constructor(string memory _secret, uint _magicNumber){
    magicNumber = _magicNumber;
    secret = _secret;
  }

  modifier onlyOwner {
    require(msg.sender == owner);
    _;
  }

  modifier magicOp(uint num1, uint num2) {
    if(num1 + num2 == magicNumber) _;
    else revert("Sorry, the sum result is not the magic number");
  }


  function getSecret() public view onlyOwner returns (string memory) {
    return secret;
  }

  function getMagicSecret(uint num1, uint num2) public view magicOp(num1,num2) returns (string memory){
    return secret;
  }


}