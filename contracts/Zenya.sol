// SPDX-License-Identifier: MIT
pragma solidity ^0.8.4;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import "@openzeppelin/contracts/access/Ownable.sol";

contract Zenya is ERC20, Ownable {

    //state variable
    uint public _totalSupply = 1000000;
    // uint256 public __totalSupply;
    // mapping (address => uint256) public __balanceOf;
    // string public standardPrefix = "Your total supply is ";
    // string public standardSuffix = " ether";

    constructor() ERC20("Zenya", "ZNY") {
        _mint(msg.sender, 1000000 * 10 ** decimals());
    }
    
    // function totalSupply()  public returns (uint256 _totalSupply) {
    //     __totalSupply = 1000000;
    //     _totalSupply = __totalSupply;
    // }

    
    // function balanceOf(address addr) public view returns (uint256 balance){
    //     return __balanceOf[addr];
    // }

    // function printTotalSupply() public view returns (string memory){
    //     return string(abi.encodePacked(standardPrefix, totalSupply_, standardSuffix));
    // }

    function buyToken(address receiver, uint256 amountPurchased) public payable{
        
        //create a variable to track the fee of purchase
        uint256 fee = amountPurchased * 1000;

        uint256 balance_ =  balanceOf(receiver);
        //reduce token balance of receiver by fee
        balance_ -= fee;

        //increase token balance of receiver by tokens bought
        balance_ += amountPurchased;

        //increase total supply by tokens bought
        _totalSupply = _totalSupply + amountPurchased;
    }
}