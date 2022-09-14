// SPDX-License-Identifier: MIT 
pragma solidity ^0.8.7;
//https://ethereum-blockchain-developer.com/2022-02-solidity-basics-blockchain-messenger/05-ethereum-addresses/
//Important concepts"
/* "
    1. The Smart contract is stored under its own address
    2. The Smart contract can store an address in the variable "someAddress", which can be its own address but can be any other address as well
    3. All information on the blockchain is public, so we can retrieve the balance of the address stored in the variable "someAddress"
    4. The Smart Contract can transfer funds from his own address to another address. But it cannot transfer the funds from another address.
    5. Transferring Ether is fundamentally different than transferring ERC20 Tokens or NFT
    "
*/
contract ExampleAddress{
    //address - Holds a 20 byte value (size of an Ethereum address).
    //address payable -Same as address, but with the additional members transfer and send.
    // example address 0x5B38Da6a701c568545dCfcB03FcB875f56beddC4
    //examople of second address 0xAb8483F64d9C6d1EcF9b849Ae677dD3315835cb2
    address  public someAddress; // 0 address is default  0x00000000000000000000

    function setSomeAddress(address _someAddress) public{
        someAddress = _someAddress;
    }

    function getAddresBalance()public view returns(uint){
        return someAddress.balance;
    }
}