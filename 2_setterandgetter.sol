//SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.5.0 <0.9.0;

contract property{
    int public price;
    string public location = "London";

    function setPrice (int _price) public{
        price =_price;

    }
    function getPrice() public view returns(int){
        return price;
    }
    function setLocation(string memory _location) public{
        location = _location;
    }
}