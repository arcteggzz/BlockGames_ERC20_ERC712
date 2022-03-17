// SPDX-License-Identifier: MIT
pragma solidity ^0.8.4;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";

contract Zenya is ERC20 {

    //initializa state variable
    uint256 public zenyaPerEth = 1000 * 10**decimals();

    constructor() ERC20("Zenya", "ZNY") {
        _mint(msg.sender, 1000000 * 10 ** decimals());
    }

    function buyToken(address receiver) public payable{
        //create a variable to track the fee of purchase
        uint256 amountMintable = (msg.value * zenyaPerEth) / 10**decimals();
        //call mint function to transfer funds to correct address
        _mint(receiver, amountMintable);
    }
}