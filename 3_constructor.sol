// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.5.0 <0.9.0;

contract Property {
    int public price;
    string public location;
    address immutable public owner;
    int immutable public area = 100;

    constructor(int _price, string memory _location) {
        price = _price;
        location = _location;
        owner = msg.sender;
    }

    function setPrice(int _price) public {
        price = _price;
    }

    function setLocation(string memory _location) public {
        location = _location;
    }
}
