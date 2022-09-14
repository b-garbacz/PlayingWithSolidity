// SPDX-License-Identifier: MIT 
pragma solidity ^0.8.7;

contract ExampleBoolean{
    bool public myBool;


    function setMyBool(bool _myBool)public{
        myBool = _myBool;
    }
    function neqMyBool()public{
        myBool = !myBool;
    }
    function andMyBool(bool _myBool)public{
        myBool = myBool && _myBool;

    }
    function orMyBool(bool _myBool)public{
        myBool = myBool || _myBool;
    }

}