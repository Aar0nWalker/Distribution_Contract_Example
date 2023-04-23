// SPDX-License-Identifier: MIT
pragma solidity ^0.8.19;

import "@openzeppelin/contracts/token/ERC721/IERC721.sol";
import "@openzeppelin/contracts/access/Ownable.sol";

contract Distribution is Ownable {

    IERC721 importNFT;
    event SendReward(uint);
    event Received(address, uint);

    constructor(address _importNFT) {
        importNFT = IERC721(_importNFT);
    }

    function distribute(uint256 holdersCount) public onlyOwner {
        uint256 value = address(this).balance/holdersCount;
        for (uint i=0; i<holdersCount; i++) {
            payable(importNFT.ownerOf(i)).transfer(value);
        }
        emit SendReward(value);
    }

    receive() external payable {
        emit Received(msg.sender, msg.value);
    }

    function checkBalance() public view returns (uint256) {
        return address(this).balance;
    }
}