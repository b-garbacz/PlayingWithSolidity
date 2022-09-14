// SPDX-License-Identifier: MIT 
pragma solidity ^0.8.7;

contract TheBlockchainMessenger{
    uint public counter;
    address public owner;
    string public message;

    constructor(){
        owner = msg.sender;
    }

    function sendMessage(string memory _message) public{
        if(msg.sender == owner){
            message = _message;
            counter++;
        }

    }
}