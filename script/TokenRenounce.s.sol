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

        if (keccak256(abi.encodePacked((chain))) == keccak256(abi.encodePacked(("anvil")))) {
            uint256 deployerPrivateKey = vm.envUint("PRIVATE_KEY_ANVIL");
            address tokenAddress = vm.envAddress("TOKEN_ANVIL");
            Token token = Token(tokenAddress);
            vm.startBroadcast(deployerPrivateKey);        
            token.renounceOwnership();
            vm.stopBroadcast();
        }

        if (keccak256(abi.encodePacked((chain))) == keccak256(abi.encodePacked(("base-sepolia")))) {
            uint256 deployerPrivateKey = vm.envUint("PRIVATE_KEY_BASE_SEPOLIA");
            address tokenAddress = vm.envAddress("TOKEN_BASE_SEPOLIA");
            Token token = Token(tokenAddress);
            vm.startBroadcast(deployerPrivateKey);        
            token.renounceOwnership();
            vm.stopBroadcast();
        }

        if (keccak256(abi.encodePacked((chain))) == keccak256(abi.encodePacked(("base")))) {
            uint256 deployerPrivateKey = vm.envUint("PRIVATE_KEY_BASE");
            address tokenAddress = vm.envAddress("TOKEN_BASE");
            Token token = Token(tokenAddress);
            vm.startBroadcast(deployerPrivateKey);        
            token.renounceOwnership();
            vm.stopBroadcast();
        }
        
    }
}
