// SPDX-License-Identifier: UNLICENSED
pragma solidity >=0.8.13;

import "openzeppelin-contracts/contracts/token/ERC20/ERC20.sol";
import "openzeppelin-contracts/contracts/access/Ownable.sol";

contract Token is ERC20, Ownable {
    constructor() ERC20("Simps Token", "SIMP") Ownable(msg.sender) {
        _mint(msg.sender, 1_000_000_000 ether);
    }

    function burn(uint256 amount) public {
        _burn(msg.sender, amount);
    }
}

