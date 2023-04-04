// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

/*
        imported the required contract to do operations .
        test.sol file is for creating testing environment and can use foundry functions.
        ERC721TestDrop.sol is the main contract where we have the all methods 
        and ITestFeeManager.sol is a interface which is passing as param in initialising the contract 
*/

import "forge-std/Test.sol";
import "../src/ERC721TestDrop.sol";
import "../src/ITestFeeManager.sol";

contract ERC721TestDropTest is Test {

    ERC721TestDrop public erc;
    ITestFeeManager public feesMange;


    function setUp() public {
        //taking intsnce of ERC721TestDrop as erc
        erc = new ERC721TestDrop();
    }

    function test_intialise() public{

        /*
        creating( a) as type of ERC721TestDrop.SalesConfiguration which need to pass in initial as params. it will set
        public sale , price , time etc . 
         */

       ERC721TestDrop.SalesConfiguration memory a ;
        a.publicSalePrice = 10;
        a.maxSalePurchasePerAddress = 3;
        a.publicSaleStart = 1680680157;
        a.publicSaleEnd = 1680766557 ;
        a.presaleStart = 1680507357 ;
        a.presaleEnd = 1680593757 ;

        /*
        creating a address array which  have multiple address for airdropAdminMint   
         */

        address[] memory _to = new address[](2);
        _to[0] = 0x4b1f4E927afbA64a826249bBbA405140d093E036;
        _to[1] = 0xc54b40Db78B668d90E24Ca748FcF48966c5F36eB;
        

        /**
        first step before running any function , we initialize the contract
         */
        
        erc.initialize("albus" , "ab" , "www.google.com" , "imagename.png" , 0x5B38Da6a701c568545dCfcB03FcB875f56beddC4 , 2 , a , 100 , 2 , ITestFeeManager(0x5B38Da6a701c568545dCfcB03FcB875f56beddC4));

        //below this is for any body can pay and mint depending upon the price yo have set above ERC721TestDrop.SalesConfiguration structure
        uint256 payAndMint = erc.payAndMint{ value : 20}(2);

        //this function only admin can mint
        uint256 adminMint = erc.adminMint(0x5B38Da6a701c568545dCfcB03FcB875f56beddC4 , 10);

        //this use for bulk minting on diffrent address only admin can run this function 
        uint256 airdropMint = erc.airdropAdminMint(_to , 5);

        //this function tells how much balance is left of particular address
        uint256 balanceOf2 = erc.balanceOf(0x659c55Af1C9035F14C10f5b3765D8469dECB09a8);

        //this function only can run by admin , who can approve other address
        erc.approve(0x4b1f4E927afbA64a826249bBbA405140d093E036 , adminMint);

        //vm is provided by foundry throught startPranck function you can set msg.sender , below this all functions will run by mention
        //address under startprank
        vm.startPrank(0x5B38Da6a701c568545dCfcB03FcB875f56beddC4);

        //from this you can transferfrom you can transfer tokenid to another
        erc.transferFrom(0x5B38Da6a701c568545dCfcB03FcB875f56beddC4 , 0x4b1f4E927afbA64a826249bBbA405140d093E036 , 5);

        //this will show the symbol you given at time of initializing
        string memory value = erc.symbol();

        //below are the log for diffrent variable type
        emit log_uint(adminMint2);
        emit log_uint(balanceOf);
        emit log_address(erc.ownerOf(6));
    }

}
