// SPDX-License-Identifier: MIT
pragma solidity ^0.8.8;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import "@openzeppelin/contracts/access/Ownable.sol";

contract CandyToken is ERC20, Ownable {

    constructor() ERC20("CANDY", "CANDY") {
        _mint(msg.sender, 2100000000 * 10**decimals());
    }

    function decimals() public view virtual override returns (uint8) {
        return 8;
    }

}
