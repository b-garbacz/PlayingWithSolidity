// SPDX-License-Identifier: MIT 
pragma solidity ^0.8.7;

contract ExampleMessageSender{

    address public someAddress;
    function updateSomeAddress()public{
        someAddress = msg.sender; // msg.sender is the address that has called a transaction 
    }
}