// forge script script/TokenDeploy.s.sol --rpc-url $RPC_URL --broadcast --chain-id 8453 --verify -vvvv


// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import {Script, console2} from "forge-std/Script.sol";
import {Token} from "../src/Token.sol";

contract TokenScript is Script {
    Token public token;

    function setUp() public {
        address alice = address(0x1);
    }

    function run() public {
        // uint256 deployerPrivateKey = vm.envUint("PRIVATE_KEY");
        // uint256 deployerPrivateKey = 0xa791501506012a1e5b2adac59e73c50ca91ee8e860e89195427df76cc50f6a00; // sniff wiff joe
        // uint256 deployerPrivateKey = 0xf0ab95e53f62ebd1640fc232632df6ad1b943c12f8f6b1d3c7905366cae03796; // rinse the bots
        // uint256 deployerPrivateKey = 0x5cd48f28052b5f4f7716d4720b262e6763363ef9c495c288de53e27af5442624; // rinse the bots 2
        // uint256 deployerPrivateKey = 0xa4b398a0b3de29fee7ceeefbaf873ff1f05a932ee42ca07c50b1df60482532c2; // rinse the bots 3
        // uint256 deployerPrivateKey = 0x1f845d6c37f5c1cb988b40bab7b8530eca8d5a8b384b923f73a047201ec19e57; // rinse the bots 5
        // uint256 deployerPrivateKey = 0x70c432ff383501d1df04f0de490b4d735f67b66ee32a86d951ee3e7691952622; // rinse the bots 6
        uint256 deployerPrivateKey = 0x34934ec42c134a979a0babf6b51ab69fcf5b2bd03c81e25c3790c06a4f0178b8; // Metamask base chain sepolia account
        // address owner = vm.envAddress("OWNER");
        // address owner = address(0x05d2D64fEdd7C11B5Bc43BCb7A62F5d9c1d5C34d); // sniff wiff joe
        // address owner = address(0x45Ed42a88c8d165D71bC4992d260b57c92d027b6); // rinse the bots
        // address owner = address(0xFa53c0B61F0C3da8275fFfFab8980D74A33F5e9A); // rinse the bots 2
        // address owner = address(0x133B228ED3F7a8eE3FB505Aa9F342E2EeC4f8B3B); // rinse the bots 3
        // address owner = address(0x16B33C58E7f5aCae9C2089401d3891995d324373); // rinse the bots 5
        // address owner = address(0xCB334A7A028345aD4afd590bB9306F615eD04E13); // rinse the bots 6
        address owner = address(0xe0213D9Da1149CD8C4788d553e34cF061eFDaFF5); // Metamask base chain sepolia account

        vm.startBroadcast(deployerPrivateKey);

        // token = new Token(owner, 'Based Pepe', 'PEPE', 18, 1_000_000_000, 1_000_000_000); // notape version
        // token = new Token(owner, 'Presale Token', 'PRESALE', 18, 1_000_000_000, 1_000_000_000); // notape version
        // token = new Token(owner, 'Sniff Wiff Joe', 'SNIFF', 18, 1_000_000_000, 1_000_000_000); // sniff wiff joe
        // token = new Token(owner, 'Rinse my balls', 'RINSE', 18, 1_000_000_000, 1_000_000_000); // Rinse my balls
        // token = new Token(owner, 'Easter bunny', 'BUNNY', 18, 1_000_000_000, 1_000_000_000); // Rinse my balls 2
        // token = new Token(owner, 'Bunny On Base', 'BUNNY', 18, 1_000_000_000, 1_000_000_000); // Rinse the bots 6
        // token = new Token('OnChainBlobs', 'BLOBS', 18); // solmate version
        token = new Token(owner, 'Sepolia Simpin', 'SIMPIN', 18, 1_000_000_000, 1_000_000_000); // Sepolia Simp test
        
        vm.stopBroadcast();
    }
}
