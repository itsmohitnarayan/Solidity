//SPDX-license-Identifier : GPL 3.0

pragma solidity >=0.5.0 <0.9.0;

contract Property{
    uint price;
    string public location;

    int constant area = 100;

    constructor (uint _price, string memory _location){
        price = _price;
        location = _location;
        owner = msg.sender;
    }
    function getPrice() public view returns(uint){
        return price;
    }
    function setPrice(uint _price)public{
        int a;
        a = 10;
        price = _price;
    }
    function setLocation(string memory _location)public{
        location = _location;
    }
}