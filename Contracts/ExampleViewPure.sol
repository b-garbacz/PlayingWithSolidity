// SPDX-License-Identifier: MIT 
pragma solidity ^0.8.7;

contract ExampleViewPure{
    uint public myStorageVar;

    //view function - read only function which ensures that state variables(like defined above) can't be modified after calling them. 
    //view: Accessing state variables. Imo best way to write getter
    function getMyStorageVar() public view returns(uint){
        return myStorageVar;
    }
    // pure function - don't read/modify the state variables, but it receives the given parameters and calculate them(or do orther operations) and returns it. 
    //pure: Not accessing state variables
    function getAddidion(uint a, uint b) public pure returns(uint) {
        return a + b;
    }
    // Best wau to write setters where we can't return anything!!!!
    function  setmyStorageVar(uint _myStorageVar)public{
        myStorageVar = _myStorageVar;
    }
}