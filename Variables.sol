//SDPX-License-Identifier: GPL-3.0


contract Variables {
  uint balance;
  int unsignedBalance;
  string name; 
  bool isActive; 
  address owner;

  constructor(bool initialStatus){
    owner = msg.sender;
    isActive = initialStatus;
  }
}

contract StructsAndArrays {
  struct Alumn {
    string name;
    uint age;
  }

  Alumn[] public alumns;

  constructor(){
    alumns.push(Alumn("Nilson", 18));
  }
}


contract MappingsAndEnums {
  
  mapping (address => uint) balances;

  enum Status {Active, Paused, Inactive}

  Status balanceStatus;


  constructor(){
    balances[msg.sender] = 100;
    balanceStatus = Status.Active;
  }
}