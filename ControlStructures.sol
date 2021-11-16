// SPDX-Liscence-Identifier: GPL-3.0

pragma solidity >=0.7.0 <0.9.0;


contract ControlStructures { 
  uint[] public numsList;

  string public resultCondition;

  constructor(bool _initialResult)  {

    if(_initialResult){
      resultCondition = "The condition its true";
    } else {
      resultCondition = "The condition its false";
    }

    for(uint i = 0; i < 10; i++){
      numsList.push(i);
    }

  }
}


