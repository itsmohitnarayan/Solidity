//SPDX-License-Identifier: GPL-3.0
 
pragma solidity >=0.6.0 <0.9.0;

contract Deposit{
    receive() external payable{
    }
    fallback()external payable{

    }
    function getBalance()public view returns(uint){
        return address(this).balance;
    }
    function sendEther()public payable{
        uint x;
        x++;
    }
    function transferEther(address payable recipient, uint amount)public returns(bool){
        if (amount <= getBalance()){
            recipient.transfer(amount);
            return true;
        }else{
            return false;
        }
    }

}