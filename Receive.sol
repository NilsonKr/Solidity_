//SPDX-License-Identifier: GPL-3.0 
pragma solidity >=0.7.0 <0.9.0;

contract Transfers {
  uint valueReceived;


  //Fallback function --> https://www.tutorialspoint.com/solidity/solidity_fallback_function.htm
  fallback() external payable {

  }

  receive() external payable{
    valueReceived = msg.value;
  }

  function chargeContract() public payable {
    valueReceived = msg.value;
  }
} 