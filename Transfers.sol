//SPDX-License-Identifier: GPL-3.0 
pragma solidity >=0.7.0 <0.9.0;

contract Transfers {

  constructor() payable {}

  function transferWithTransfer(address _to, uint ammount) public {
    payable(_to).transfer(ammount);
  }

  function transferWithSend(address _to, uint ammount) public returns (bool) {
    bool response = payable(_to).send(ammount);
    return response;
  }

  function transferWithCall(address _to, uint ammount) public returns (bool, bytes memory) {
    (bool response, bytes memory data) = payable(_to).call{value: ammount}("");
    return (response, data);
  }
} 