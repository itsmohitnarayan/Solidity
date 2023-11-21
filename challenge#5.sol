// Consider the solution from the previous challenge.

// //SPDX-License-Identifier: GPL-3.0
 
// pragma solidity >=0.6.0 <0.9.0;
 
// contract Deposit{
    
//     receive() external payable{}

//     function getBalance() public view returns (uint) {
//         return address(this).balance;
//     }
// }


// Add a function that transfers the entire balance of the contract to another address.

// Deploy and test the contract on Rinkeby Testnet.

//PDX=License-Identifier: GPL-3.0

pragma solidity >=0.5.0 <0.9.0;

contract Deopsit{
    receive()external payable{}
    function getBalance()public view returns(uint){
        return address(this).balance;
    }
    function trandferBalance(address payable recipient)public{
        uint balance = getBalance();
        recipient.transfer(balance);
    }
}