// SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.7.0 <0.9.0;


contract ControlStructures { 
  string public status;

  event notifyStatus(string status);

  constructor(bool _initialResult)  {
    if(_initialResult){
      status = "The condition its true";
    } else {
      status = "The condition its false";
    }
  }

  function changeStatus(bool _newStatus) public {
    if(_newStatus){
      status = "The condition its true";
    } else {
      status = "The condition its false";
    }

    emit notifyStatus("The status have changed");
  }

}


