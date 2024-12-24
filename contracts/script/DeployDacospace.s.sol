// SPDX-License-Identifier: MIT
pragma solidity ^0.8.19;

import {Script, console} from "forge-std/Script.sol";
import {Oned} from "../src/Oned.sol";

contract DeployDacospace is Script {
    function run() external {
        // Load the deployer's private key from the environment variables
        uint256 deployerPrivateKey = vm.envUint("ACCOUNT_PRIVATE_KEY");

        // Start broadcasting the transaction using the deployer's private key
        vm.startBroadcast(deployerPrivateKey);

        // Deploy the Greeter contract
        Oned oned = new Oned();

        // End broadcasting the transaction
        vm.stopBroadcast();

        // Log the address of the deployed contract
        console.log("Oned deployed to:", address(oned));
    }
}
