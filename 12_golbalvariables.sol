// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.5.0 <0.9.0;

contract GolbalVariables{
    address public owner;
    uint public sentValue;

    constructor(){
        owner=msg.sender;
    }
    function changeOwner()public {
        owner=msg.sender;
    }
    function sendEther()public payable{
        sentValue=msg.value;
    }
    function getbalance() public view returns(uint){
        return address(this).balance;
    }
    function howmuchGas()public view returns(uint){
        uint start = gasleft();
        uint j=1;
        for(uint i=1; i<20; i++){
            j*=i;
        }
        uint end = gasleft();
        return start-end;
    }
}