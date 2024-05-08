// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import {Script, console2} from "forge-std/Script.sol";
import {Token} from "../src/Solmate.sol";

contract TokenScript is Script {
    Token public token;

    function setUp() public {
        address alice = address(0x1);
    }

    function run() public {
        uint256 deployerPrivateKey = vm.envUint("PRIVATE_KEY");
        address owner = vm.envAddress("OWNER");
        address tokenAddress = vm.envAddress("TOKEN");
        token = Token(tokenAddress);

        address receiver = 0xe0213D9Da1149CD8C4788d553e34cF061eFDaFF5;

        vm.startBroadcast(deployerPrivateKey);
        
        token.transfer(receiver, 1_000 ether);
        // token = new Token(owner, 'OnChainPoints', 'POINTS', 18, 1_000_000_000, 1_000_000_000); // notape version
        // token = new Token('OnChainPoints', 'POINTS', 18); // solmate version
        
        vm.stopBroadcast();
    }
}
