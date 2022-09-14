// SPDX-License-Identifier: MIT 
pragma solidity ^0.8.7;
contract ExampleCounter{
    uint8 public myUint8 =(2**8)-1;
    uint256 public myUint256;
    //It only works for Solidity 0.8.x versions. Integers will roll-over(lower or higer) by using unchecked{}expression
    function incrementuint8() public {
        unchecked{
            myUint8++;
        }
    }

    function decrementUint256()public{
        unchecked{
            myUint256--;
        }
    }
}
