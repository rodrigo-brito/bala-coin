// SPDX-License-Identifier: MIT
pragma solidity ^0.8.2;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import "@openzeppelin/contracts/access/Ownable.sol";

contract BalaToken is ERC20, Ownable {
    constructor() ERC20("Bala Token", "BALA") {
        _mint(0x2226FFe4aBD2Afa84bf7222C2b17BBC65F64555A, 1000000 * 10 ** decimals());
    }

    function mint(address to, uint256 amount) public onlyOwner {
        _mint(to, amount);
    }
}