// SPDX-License-Identifier: MIT
pragma solidity ^0.8.17;

import "@openzeppelin/contracts/token/ERC721/ERC721.sol";

contract RetrieveBalances {
    struct TokenBalance {
        address token;
        uint256 balance;
    }

function getBalances(address walletAddress, address[] memory tokenAddresses) public view returns (TokenBalance[] memory) {
        uint len = tokenAddresses.length;
        TokenBalance[] memory balances = new TokenBalance[](len);

        for (uint i = 0; i < len; i++) {
            balances[i].token = tokenAddresses[i];
            
        }

        return balances;
    }   
}