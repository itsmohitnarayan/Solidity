//SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.5.0 <0.9.0;

contract A{
    string[] public cities = ['Prague','Pryagraj'];

    function f_memory()public view{
        string[]memory s1 = cities;
        //string s2; -> error
        s1[0] = 'Patna';
    }
    function f_storage()public {
        string[]storage s1 =cities;
        //string s2; ->error
        s1[0] = 'Patna';
    }
}