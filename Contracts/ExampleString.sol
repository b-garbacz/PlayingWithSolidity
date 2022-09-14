// SPDX-License-Identifier: MIT 
pragma solidity ^0.8.7;

contract ExampleString{

    string public myString ="test";//UTF8 
    bytes public  myBytes ="test2";

    function setMyString(string memory _myString) public{
        myString = _myString;
    }

    //It is not possible to compare strings in solidity, and we should try to avoid them because:
    /*
        1. we can'tManipulate them 
        2. strings are expensive to store and work(Incresed gas costs ) in Solidity.
        3. Solidity don't have native functions to operate with them. 
    */
    function compareTwoStrings(string memory _myString)public view returns(bool){
        return keccak256(abi.encodePacked(myString)) == keccak256(abi.encodePacked(_myString));//we have to compare hashes of our strings
    }
    function getBytesLength() public view returns(uint){
        return myBytes.length;

    }
}