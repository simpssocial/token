// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import "forge-std/Test.sol";
import {console2} from "forge-std/Script.sol";
import {Token} from "../src/Token.sol";

contract TokenTests is Test {
    Token public token;
    address simp1 = address(0x1);
    address simp2 = address(0x2);
    address simp3 = address(0x3);
    address owner = address(0x4);

    function setUp() public {
        vm.prank(owner);
        token = new Token();
    }

    function testtName() public view {
        assertEq(token.name(), "Simps Token");
    }

    function testSymbol() public view {
        assertEq(token.symbol(), "SIMP");
    }

    function testDecimals() public view {
        assertEq(token.decimals(), 18);
    }

    function testTotalSupply() public view {
        assertEq(token.totalSupply(), 1_000_000_000 ether);
    }

    function testBalanceOf() public {
        assertEq(token.balanceOf(owner), 1_000_000_000 ether);
    }

    function testTransfer() public {
        vm.prank(owner);
        token.transfer(simp1, 100 ether);
        uint256 balance = token.balanceOf(owner);
        assertEq(token.balanceOf(owner), 1_000_000_000 ether - 100 ether);
        assertEq(token.balanceOf(simp1), 100 ether);
    }

    function testTransferFrom() public {
        vm.prank(owner);
        token.approve(simp1, 100 ether);
        vm.prank(simp1);
        token.transferFrom(owner, simp1, 100 ether);
        assertEq(token.balanceOf(owner), 1_000_000_000 ether - 100 ether);
        assertEq(token.balanceOf(simp1), 100 ether);
    }

    function testAllowance() public {
        vm.prank(owner);
        token.approve(simp1, 100 ether);
        assertEq(token.allowance(owner, simp1), 100 ether);
    }

    function testBurn() public {
        vm.prank(owner);
        token.burn(100 ether);
        assertEq(token.balanceOf(owner), 1_000_000_000 ether - 100 ether);
        assertEq(token.totalSupply(), 1_000_000_000 ether - 100 ether);
    }
    /*
    function testBurnFrom() public {
        vm.prank(owner);
        token.approve(simp1, 100 ether);
        vm.prank(simp1);
        token.burnFrom(owner, 100 ether);
        assertEq(token.balanceOf(owner), 1_000_000_000 ether - 100 ether);
        assertEq(token.totalSupply(), 1_000_000_000 ether - 100 ether);
    }
    */

    function testTransferOwnership() public {
        vm.prank(owner);
        token.transferOwnership(simp1);
        assertEq(token.owner(), simp1);
    }

    function testRenounceOwnership() public {
        vm.prank(owner);
        token.renounceOwnership();
        assertEq(token.owner(), address(0));
    }

    function testOwnable() public {
        assertEq(token.owner(), owner);
    }
}
