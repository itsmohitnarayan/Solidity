// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.5.0 < 0.9.0;

contract property{
    int public price =100;
    string constant public location = "India";

    //price = 100; this is not permitted in solidity

    function f1() public pure returns (int){
        int x=5;
        x= x * 2;

        return x;
    } 
}