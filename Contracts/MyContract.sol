//SPDX-License-Identifier: MIT


pragma solidity ^0.8.17;
contract MyContract {
    string public ourString ="Hello World";

    function updateOurString(string memory _updateString) public payable {
        if (msg.value == 1 ether){
            ourString = _updateString;
        }else{
            payable(msg.sender).transfer(msg.value); // return ether if msg.value != 1 ether 
        }
        
    }

}