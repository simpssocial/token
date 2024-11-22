// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import {Script, console2} from "forge-std/Script.sol";
import {Token} from "../src/Token.sol";

contract TokenScript is Script {
    function setUp() public {
    }

    function run() public {
        string memory chain = vm.envString("CHAIN");
        console2.log("Chain:", chain);

        if (keccak256(abi.encodePacked((chain))) == keccak256(abi.encodePacked(("base-sepolia")))) {
            uint256 deployerPrivateKey = vm.envUint("PRIVATE_KEY_BASE_SEPOLIA");
            address tokenAddress = vm.envAddress("TOKEN_BASE_SEPOLIA");
            Token token = Token(tokenAddress);
            address receiver = 0x72ED6e8789Fe2f25B4F163394b09cA0C4ADc8ebD;
            vm.startBroadcast(deployerPrivateKey);        
            token.transfer(receiver, 39_571 ether);        
            vm.stopBroadcast();
        }
        
        if (keccak256(abi.encodePacked((chain))) == keccak256(abi.encodePacked(("anvil")))) {
            uint256 deployerPrivateKey = vm.envUint("PRIVATE_KEY_ANVIL");
            address tokenAddress = vm.envAddress("TOKEN_ANVIL");
            Token token = Token(tokenAddress);
            address receiver = 0xccA528bB79EAb5f87e87336E95ab7eBE6Adec902;
            vm.startBroadcast(deployerPrivateKey);        
            token.transfer(receiver, 1_000 ether);        
            vm.stopBroadcast();
        }
        
    }
}
