// SPDX-License-Identifier: MIT 
pragma solidity ^0.8.7;

contract ExampleUint{
    uint public myUint; // 0 is default. If we will define value at start then it will cost more gas.
    uint256 public myUint256=1; // 0 - (2^{256})-1 
    uint8 public myUint8=254; //0 - (2^{8})-1 
    int public myInt = -10;// -2^{128} - +2^{128}-1
    /*
    uint8
    uint16
    uint32
    uint64
    uint128
    uint256
    
    int8
    int16 ...etc
    We must controle sizes of our variables
    */
    function setmyUint(uint _myUint) public {
        myUint = _myUint;
    }
    function incrementuint8()public{ //When 255 bits are exceeded, an error is returned from EVM
        myUint8++;
    }

    function incrementInt()public{
        myInt++;
    }

        function decrementUint256()public{ // When we will try to decrement 0 then an error is returned from EVM 
        myUint256--;
    }
    
}