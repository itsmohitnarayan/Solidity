// Consider this Smart Contract.

// //SPDX-License-Identifier: GPL-3.0

// pragma solidity >=0.5.0 <0.9.0;

// contract Deposit{
    
// }

// Add a function so that the contract can receive ETH by sending it directly to the contract address.

// Return the contract’s balance.

// Deploy and test the contract on Rinkeby Testnet.

//SPDX-License-Identifier: GPL-3.0
 
pragma solidity >=0.6.0 <0.9.0;
 
contract Deposit{
    
    receive() external payable{}

    function getBalance() public view returns (uint) {
        return address(this).balance;
    }
}
