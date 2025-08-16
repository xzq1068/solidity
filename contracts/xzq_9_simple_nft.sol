// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;


// 导入 OpenZeppelin ERC721 标准合约
import "https://github.com/OpenZeppelin/openzeppelin-contracts/blob/master/contracts/token/ERC721/ERC721.sol";


contract SimpleNFT is ERC721 {

    uint256 public nextTokenId; //NFT 唯一id
    uint256 public maxPerAddress=5; //每个地址最多铸造数量

    //铸造事件
    event Minted(address indexed to,uint tokenId);

    mapping (address=>uint256) public mintedCount; //每个地址已铸造数量
        constructor() ERC721("SimpleNFT", "SNFT") {

        }

     function mint() public {
        require(mintedCount[msg.sender] < maxPerAddress, "Exceeded maximum mint per address");

        uint256 tokenId = nextTokenId;

        nextTokenId++;

        mintedCount[msg.sender]+=1;

        _safeMint(msg.sender, tokenId);

        emit Minted(msg.sender, tokenId);
     }   

     //查询某个地址拥有的NFT数量
     function getMintedCount(address owner) public view returns (uint256) {
            return mintedCount[owner];
     }
}