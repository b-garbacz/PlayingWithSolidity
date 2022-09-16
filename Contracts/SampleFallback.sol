// SPDX-License-Identifier: MIT 
pragma solidity ^0.8.17;

//https://blockchain-academy.hs-mittweida.de/courses/solidity-coding-beginners-to-intermediate/lessons/solidity-2-sending-ether-receiving-ether-emitting-events/topic/fallback-function-and-receive-ether-function/
contract SampleFallback{
    uint public lastValueSend;
    string public lastFunctionCalled;
    uint  public myUint;
    function setMyUint(uint _myUint) public {
        myUint =_myUint;

    }
    //"The receive() method is used as a fallback function if Ether are sent to the contract and no calldata are provided"
    receive() external payable{
        lastValueSend= msg.value;
        lastFunctionCalled ="receive";
    }
    //"The fallback() function is used if a smart contract is called and no other function matches (not even the receive() function)."
    fallback() external payable{
        lastValueSend = msg.value;
        lastFunctionCalled = "fallback";

    }
}