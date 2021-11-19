//SPDX-License-Identifier: GPL-3.0 
pragma solidity >=0.7.0 <0.9.0;


contract OwnerContract {
  address owner = msg.sender;
  string private ownerName;

  constructor(string memory _ownerName) {
    ownerName = _ownerName;
  }

  function getOwner() public view virtual returns(string memory){
    return ownerName;
  }

  modifier onlyOwner {
    require(msg.sender == owner);
    _;
  }
}


interface MoneyBoxInterface {
  
  function deposit(uint amount) external returns (uint);

  function retire(uint amount) external returns (uint);
}

contract MoneyBox is OwnerContract, MoneyBoxInterface {
  uint money; 

  //Pass parameters to super constructors
  constructor(string memory _ownerName) OwnerContract(_ownerName) {}

  //Call to an already existing function
  function getOwner() public view override returns(string memory){
    return super.getOwner();
  }

  //Implements the interface and inherited modifier
  function deposit(uint value) public override onlyOwner returns (uint){
    money += value;
    return money;
  }

  function retire(uint amount) external returns (uint){
    require(money >= amount, "You dont have enough money");
    money -= amount;
    return money;
  }
} 