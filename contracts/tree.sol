// SPDX-License-Identifier: MIT
pragma solidity 0.8.6;

import "@openzeppelin/contracts/token/ERC1155/ERC1155.sol";

contract MyTreeCollectiblesIII is ERC1155 {
address contractOwner;
    constructor() ERC1155("https://raw.githubusercontent.com/Dev-FindHolding/lab-erc1155-tree/main/metadata-arboles/{id}.json") {
        contractOwner=msg.sender;
        _mint(msg.sender, 1 /* Id Arbol01 */, 10 /* Cantidad */, "");
        _mint(msg.sender, 2 /* Id Arbol02 */, 20 /* Cantidad */, "");
        _mint(msg.sender, 3 /* Id Arbol03 */, 20 /* Cantidad */, "");
        _mint(msg.sender, 4 /* Id Arbol04 */, 20 /* Cantidad */, "");
    }

    function _mymint(uint cant, uint tipo)public {
    require(msg.sender==contractOwner,"No tienes permisos para crear nuevos Arboles NFT");
    _mint(msg.sender, tipo /* Id Arbol */, cant /* Cantidad */, "");
    }


struct t_AnnualMaintenance {
    uint year;
    bool payment;
    }
enum t_Rarity{
  common,
  rare,
  epic,
  legendary,
  mythical
 } 

struct t_Tree {
    uint idTree;
    t_Rarity rarity;
    uint volume;
    string geolocation;
    string realPhotoUrl;
    string fantasyPhotoUrl;
    t_AnnualMaintenance[14] payment;
    }




}

//https://raw.githubusercontent.com/Dev-FindHolding/lab-erc1155-tree/main/metadata-arboles/0000000000000000000000000000000000000000000000000000000000000001.json?token=GHSAT0AAAAAABWSN23GT4VQUVDEL6E5O3XGYXRJTBQ
//https://raw.githubusercontent.com/Dev-FindHolding/lab-erc1155-tree/main/metadata-arboles/0000000000000000000000000000000000000000000000000000000000000002.json?token=GHSAT0AAAAAABWSN23GS737OOM77QJCDZOWYXRJUJQ
