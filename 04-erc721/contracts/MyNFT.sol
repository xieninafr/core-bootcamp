// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.20;

import "@openzeppelin/contracts/token/ERC721/ERC721.sol";
import "@openzeppelin/contracts/token/ERC721/extensions/ERC721URIStorage.sol";
import "@openzeppelin/contracts/token/ERC721/extensions/ERC721Burnable.sol";
import "@openzeppelin/contracts/access/Ownable.sol";

contract FALCON is ERC721URIStorage {
    uint256 tokenId;

    constructor() ERC721("FALCON", "FCN") {}

    function mint() external {
        _safeMint(msg.sender, tokenId);
        _setTokenURI(
             tokenId,
             "https://raw.githubusercontent.com/xieninafr/core-bootcamp/refs/heads/main/04-erc721/metadata.json"
         );
         tokenId++;
    }
}