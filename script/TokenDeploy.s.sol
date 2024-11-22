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
            vm.startBroadcast(deployerPrivateKey);
            Token token = new Token();
            vm.stopBroadcast();
            console2.log("Anvil Token Address:", address(token));
        }

        if (keccak256(abi.encodePacked((chain))) == keccak256(abi.encodePacked(("base-sepolia")))) {
            uint256 deployerPrivateKey = vm.envUint("PRIVATE_KEY_BASE_SEPOLIA");
            vm.startBroadcast(deployerPrivateKey);
            Token token = new Token();
            vm.stopBroadcast();
            console2.log("Base Token Address:", address(token));
        }

        if (keccak256(abi.encodePacked((chain))) == keccak256(abi.encodePacked(("sepolia")))) {
            uint256 deployerPrivateKey = vm.envUint("PRIVATE_KEY_SEPOLIA");
            vm.startBroadcast(deployerPrivateKey);
            Token token = new Token();
            vm.stopBroadcast();
            console2.log("Sepolia Token Address:", address(token));
        }
        
        if (keccak256(abi.encodePacked((chain))) == keccak256(abi.encodePacked(("base")))) {
            uint256 deployerPrivateKey = vm.envUint("PRIVATE_KEY_BASE");
            vm.startBroadcast(deployerPrivateKey);
            Token token = new Token();
            vm.stopBroadcast();
            console2.log("Base Token Address:", address(token));
        }

    }
}
