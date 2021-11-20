// SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.7.0 <0.9.0;

contract Library {

    function isEvenNumber(uint _num) external pure returns (bool) {
        if(_num % 2 == 0){
            return true;
        }else {
            return false;
        }
    }
}