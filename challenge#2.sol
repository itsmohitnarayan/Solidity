// SPDX-License-Identifier: GPL-3.0-or-later
// pragma solidity >=0.5.0 <0.9.0;

// contract CryptosToken{
//     string constant public  name = "Crypto";
//     uint supply;

//     function setSupply(uint s)public {
//         supply = s;
//     }
//     function getSupply()public view returns(uint){
//         return supply;
//     }
// }

//Add a public state variable of type address called owner.

//Declare the constructor and initialize all the state variables in the constructor. The owner should be initialized with the address of the account that deploys the contract.

//solution-->

//SPDX-License_identifier: GPL-3.0

pragma solidity >=0.5.0 <0.9.0;

contract CryptosToken{
    string constant public  name = "Crypto";
    uint supply;
    address public owner;

    constructor(uint _supply){
        supply = _supply;
        owner = msg.sender;
    }

    function setSupply(uint s)public {
        supply = s;
    }
    function getSupply()public view returns(uint){
        return supply;
    }
}

