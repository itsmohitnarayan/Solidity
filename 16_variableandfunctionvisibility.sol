//SPDX-License-Identifier: GPL-3.0
 
pragma solidity >=0.6.0 <0.9.0;

contract A {
    int public x = 10;
    int private y = 20;

    function get_y() public view returns (int) {
        return y;
    }

    function f1() private view returns (int) {
        return x;
    }

    function f2() public view returns (int) {
        int a;
        a = f1();
        return a;
    }

    function f3() internal view returns (int) {
        return x;
    }

    function f4() external view returns (int) {
        return x;
    }

    function f5() public view returns (int) {
        // You can assign a value to b or remove it if not needed.
        int b = 30;
        return b;
    }
}

contract B is A {
    int public xx = f3();
}

contract C {
    A public contract_a = new A();

    function getContractAX() public view returns (int) {
        // Use a getter function to access the value of x in contract A.
        return contract_a.f4();
    }
}
