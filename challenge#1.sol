//Consider this 

// //SPDX-License-Identifier: GPL-3.0

// pragma solidity >=0.5.0 <0.9.0;

// contract CryptosToken{
//     string name = "Cryptos";
//     uint supply;
// }

//Change the state variable name to be declared as a public constant.

//Declare a setter and a getter function for the supply state variable.

//SPDX-License-identifier: GPL-3.0

pragma solidity >=0.5.0 <0.9.0;

contract CryptosToken{
    string constant public  name = "Crypto";
    uint supply;

    function setSupply(uint s)public {
        supply = s;
    }
    function getSupply()public view returns(uint){
        return supply;
    }
}