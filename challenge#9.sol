// Declare a function that concatenates two strings.

// Note: Since Solidity does not offer a native way to concatenate strings use abi.encodePacked() to do that.
// Read the official doc "https://docs.soliditylang.org/en/latest/abi-spec.html" for examples.

//SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.5.0 <0.9.0;

contract A {
    string public s1;
    string public s2;
    string public new_str;

    function concatenate()public view returns (string memory){
        string memory s3;
        s3= string (abi.encodePacked(s1,s2));
        return s3;
    }
    function concatenate2()public{
        new_str =string(abi.encodePacked(s1,s2));
    }
}