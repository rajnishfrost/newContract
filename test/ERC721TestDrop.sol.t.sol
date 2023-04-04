// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import "forge-std/Test.sol";
import "../src/ERC721TestDrop.sol";
import "../src/ITestFeeManager.sol";

contract ERC721TestDropTest is Test {

    ERC721TestDrop public erc;
    ITestFeeManager public feesMange;


    function setUp() public {
        erc = new ERC721TestDrop();
    }

    // funcemit log(value);
    // }

    // function testcontractURI() public {
    //     string memory value = erc.contractURI();
    //     //  assertEq(value , "hi there");
    //     emit log(value);
    // }tion test_abc() public {
    //     string memory value = erc.abc("hi rj");
    //     //  assertEq(value , "hi there");
    //     emit log(value);
    // }

    // function testcontractURI() public {
    //     string memory value = erc.contractURI();
    //     //  assertEq(value , "hi there"); 0x4b1f4E927afbA64a826249bBbA405140d093E036 0xc54b40Db78B668d90E24Ca748FcF48966c5F36eB 0x659c55Af1C9035F14C10f5b3765D8469dECB09a8
    //     emit log("hi");
    // }


    function test_intialise() public{
       ERC721TestDrop.SalesConfiguration memory a ;
        a.publicSalePrice = 10;
        a.maxSalePurchasePerAddress = 3;
        a.publicSaleStart = 1680680157;
        a.publicSaleEnd = 1680766557 ;
        a.presaleStart = 1680507357 ;
        a.presaleEnd = 1680593757 ;

        address[] memory _to = new address[](2);
        _to[0] = 0x4b1f4E927afbA64a826249bBbA405140d093E036;
        _to[1] = 0xc54b40Db78B668d90E24Ca748FcF48966c5F36eB;
        

        erc.initialize("suraj" , "sj" , "www.google.com" , "imagename.png" , 0x5B38Da6a701c568545dCfcB03FcB875f56beddC4 , 2 , a , 100 , 2 , ITestFeeManager(0x5B38Da6a701c568545dCfcB03FcB875f56beddC4));
        // uint256 payAndMint = erc.payAndMint{ value : 20}(2);
        uint256 adminMint = erc.adminMint(0x5B38Da6a701c568545dCfcB03FcB875f56beddC4 , 10);
        // uint256 adminMint2 = erc.adminMint(0x4b1f4E927afbA64a826249bBbA405140d093E036 , 10);
        // uint256 airdropMint = erc.airdropAdminMint(_to , 5);
        // uint256 balanceOf2 = erc.balanceOf(0x659c55Af1C9035F14C10f5b3765D8469dECB09a8);
        // erc.approve(0x4b1f4E927afbA64a826249bBbA405140d093E036 , adminMint);
        vm.startPrank(0x5B38Da6a701c568545dCfcB03FcB875f56beddC4);
        erc.transferFrom(0x5B38Da6a701c568545dCfcB03FcB875f56beddC4 , 0x4b1f4E927afbA64a826249bBbA405140d093E036 , adminMint);
        // erc.ownerOf(adminMint); 
        // uint256 balanceOf = erc.balanceOf(0x4b1f4E927afbA64a826249bBbA405140d093E036);
        // string memory value = erc.symbol();
        // emit log_uint(adminMint2);
        // emit log_uint(balanceOf);
        emit log_address(erc.ownerOf(2));
    }

    // function test_adminMint() public{
    //     uint256 adminMint = erc.adminMint(0x5B38Da6a701c568545dCfcB03FcB875f56beddC4 , 1);
    //     // uint256 balanceOf2 = erc.balanceOf(0x5B38Da6a701c568545dCfcB03FcB875f56beddC4);
    //     emit log_uint(adminMint);
    // }

    // function test_totalMinted() public {
    //     uint256 a = erc.totalMinted();

    //     emit log_uint(a);
    // }

    // function test_symbol() public {
    //     string memory value = erc.symbol();
    //     emit log(value);
    // }

}
