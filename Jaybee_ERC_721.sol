// SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.4.16 <0.9.0;
import "https://github.com/0xcert/ethereum-erc721/src/contracts/tokens/nf-token-metadata.sol";
import "https://github.com/0xcert/ethereum-erc721/src/contracts/ownership/ownable.sol";


contract Jaybee_ERC_721 is NFTokenMetadata,Ownable {
    struct NFTMetadata{
        string name;
        string image;
        string description;
    }

    NFTMetadata MyNFTMetadata;
    constructor(){
        MyNFTMetadata=NFTMetadata("Arthur","https://ipfs.io/ipfs/QmXsgsnyVMYJaabdBTDyhx6tcQeHQUwQHs6Y2mF1N7M5dR","A picture of Arthur");
    }

    function mint(address to,uint256 tokenId)external onlyOwner{
        super._mint(to,tokenId);
        super._setTokenUri(tokenId,MyNFTMetadata.image);
    }
}
// https://ipfs.io/ipfs/QmXsgsnyVMYJaabdBTDyhx6tcQeHQUwQHs6Y2mF1N7M5dR zggv79.jpg