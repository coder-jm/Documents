// SPDX-License-Identifier: MIT
pragma solidity ^0.8.4;

contract Bank {
    //mapp the balance in the account
    mapping(address => uint) public accounts;
    //modifier to check funds
    modifier hasFunds(uint amount) {
        require(amount <= accounts[msg.sender] , "You have insufficient funds to make the transaction");
        _;
    }
    //deposit function
    function deposit() public payable {
        accounts[msg.sender] += msg.value;
    }
    //withdraw function
    function withdraw(uint _amount) public hasFunds(_amount) {
        payable (msg.sender).transfer(_amount);
    }
    //checkAssets function
    function checkAssets() public view returns(uint256) {
        return address(this).balance;
    }

}