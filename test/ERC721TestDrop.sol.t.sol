// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import "forge-std/Test.sol";
import "../src/ERC721TestDrop.sol";

contract ERC721TestDropTest is Test {
    ERC721TestDrop public erc;

    function setUp() public {
        erc = new ERC721TestDrop();
    }

    // function test_abc() public {
    //     string memory value = erc.abc("hi rj");
    //     //  assertEq(value , "hi there");
    //     emit log(value);
    // }

    // function testcontractURI() public {
    //     string memory value = erc.contractURI();
    //     //  assertEq(value , "hi there");
    //     emit log(value);
    // }

    function text_intialise() public{
        
    }

}
