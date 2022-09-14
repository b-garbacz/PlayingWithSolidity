// SPDX-License-Identifier: MIT 
pragma solidity ^0.8.7;


contract ExampleConstructor{
    address public myAddress;

    // this function is automatically called during smart contract deployment and it cant be called again after that
    // Constructor have access to arguments and to global objects 
    constructor(address _someAddress){ 
        myAddress =_someAddress;
    }

    function setMyAddress(address _myaddress) public {
        myAddress =_myaddress;
    }
    function setMyAddressToMsgSender() public{
        myAddress =msg.sender;
    }
}