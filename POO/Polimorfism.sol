// SPDX-License-Identifier: GPL-3.0
pragma solidity >= 0.8.0 <0.9.0;

//Reference to Utils.sol contract in this directory
interface IMath {
    function isEvenNumber(uint _num) external pure returns (bool);
} 

contract Polymorphism {
    
    function isEvenOrOdd (uint _num, address _mathAddress) external pure returns (string memory){
      //Instance external contract and use its function
        IMath MathUtils = IMath(_mathAddress);
        bool result = MathUtils.isEvenNumber(_num);
        
        if(result) return "It's even number";
        else return "Its odd number";
    }
}