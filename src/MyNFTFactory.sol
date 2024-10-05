// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "./MyNFT.sol";

contract MyNFTFactory {
    MyNFT[] public nftContracts;

    event NFTContractCreated(address indexed nftAddress);

    function createNFTContract() public {
        MyNFT nft = new MyNFT(msg.sender);
        nftContracts.push(nft);
        emit NFTContractCreated(address(nft));
    }

    function getNFTContracts() public view returns (MyNFT[] memory) {
        return nftContracts;
    }
}
