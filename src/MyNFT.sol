// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

import "@openzeppelin/contracts/token/ERC721/ERC721.sol";
import "@openzeppelin/contracts/access/Ownable.sol";

contract MyNFT is ERC721, Ownable {
    uint256 private _nextTokenId;

struct NFTMetadata {
    string firstName;
    string secondName;
    uint256 timestamp;
}

mapping(uint256 => NFTMetadata) private _tokenMetadata;

    constructor(address initialOwner) ERC721("ReptileTrophy", "RTK")
 Ownable(initialOwner) {
        // The Ownable constructor automatically sets the owner to msg.sender
        _nextTokenId = 0;
    }

    function safeMint(address to) public onlyOwner {
        uint256 tokenId = _nextTokenId++;
        _safeMint(to, tokenId);
    }

    function safeMint(
    address to, 
    string memory firstName, 
    string memory secondName
) public onlyOwner {
    uint256 tokenId = _nextTokenId++;
    _safeMint(to, tokenId);
    _tokenMetadata[tokenId] = NFTMetadata({
        firstName: firstName,
        secondName: secondName,
        timestamp: block.timestamp
    });
}

function getNFTMetadata(uint256 tokenId) public view returns (NFTMetadata memory) {
    require(_nextTokenId > tokenId);
    return _tokenMetadata[tokenId];
}

}