// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import "forge-std/Test.sol";
import "../src/ERC721TestDrop.sol";
import "../src/ITestFeeManager.sol";

contract ERC721TestDropTest is Test {

    ERC721TestDrop public erc;
    ITestFeeManager public feesMange;
    // address address1 = address(0x1);
    // address address2 = address(0x2);



    function setUp() public {
        erc = new ERC721TestDrop();
        // feesMange = new ITestFeeManager();
    }

//      function setUp() public virtual {
          
//        utils = new Utils();
//        users = utils.createUsers(2);
//        owner = users[0];
//        vm.label(owner, "Owner");
//        dev = users[1];
//        vm.label(dev, "Developer");

//        erc = new ERC721TestDrop();


//    }

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
    //     //  assertEq(value , "hi there");
    //     emit log("hi");
    // }

     struct SalesConfiguration {
        /// @dev Public sale price (max ether value > 1000 ether with this value) 
        uint104 publicSalePrice;
        /// @notice Purchase mint limit per address (if set to 0 === unlimited mints)
        /// @dev Max purchase number per txn (90+32 = 122)
        uint32 maxSalePurchasePerAddress;
        /// @dev uint64 type allows for dates into 292 billion years
        /// @notice Public sale start timestamp (136+64 = 186)
        uint64 publicSaleStart;
        /// @notice Public sale end timestamp (186+64 = 250)
        uint64 publicSaleEnd;
        /// @notice Presale start timestamp [{publicSalePrice : 10 ,maxSalePurchasePerAddress : 3 , publicSaleStart : 1680248157 ,publicSaleEnd : 1680334557 ,presaleStart : 1680248157 ,presaleEnd : 1680334557 ,presaleMerkleRoot : 0xAb8483F64d9C6d1EcF9b849Ae677dD3315835cb2}]
        /// @dev new storage slot [10 , 3 , 1680680157 , 1680766557 , 1680507357 , 1680593757 ]
        uint64 presaleStart;
        /// @notice Presale end timestamp
        uint64 presaleEnd;
        /// @notice Presale merkle root
        // bytes32 presaleMerkleRoot;
    }

    function test_intialise() public{

        feesMange = 0x78731D3Ca6b7E34aC0F824c42a7cC18A495cabaB ;
        
        // emit log_address(address1);

       ERC721TestDrop.SalesConfiguration memory a ;

        a.publicSalePrice = 10;
        a.maxSalePurchasePerAddress = 3;
        a.publicSaleStart = 1680680157;
        a.publicSaleEnd = 1680766557 ;
        a.presaleStart = 1680507357 ;
        a.presaleEnd = 1680593757 ;
        

        erc.initialize("suraj" , "sj" , "www.google.com" , "imagename.png" , 0x5B38Da6a701c568545dCfcB03FcB875f56beddC4 , 2 , a , 100 , 2 , contract ITestFeeManager);
    }

    // function test_adminMint() public{
    //     erc.adminMint(0x78731D3Ca6b7E34aC0F824c42a7cC18A495cabaB , 1);
    // }

    // function test_totalMinted() public {
    //     uint256 a = erc.totalMinted();

    //     emit log_uint(a);
    // }

}
