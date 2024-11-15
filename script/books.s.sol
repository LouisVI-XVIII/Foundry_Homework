// SPDX-License-Identifier: MIT
pragma solidity 0.8.13;

import {Script} from "forge-std/Script.sol";
import {Books} from "../src/Books.sol";

contract Deploy is Script {
    Books public books;

    function run() public {
        vm.startBroadcast();
        books = new Books("Programming Foundry", "Pierre Tidou", 100);
        vm.endBroadcast();
    }
}