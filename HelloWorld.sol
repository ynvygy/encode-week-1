// SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.7.0 <0.9.0;

contract HelloWorld {
    string private text;
    // owners concept
    address[] public owners;

    constructor() {
        text = "Hello World";
        owners.push(msg.sender);
    }

    function helloWorld() public view returns (string memory) {
        return text;
    }

    function setText(string calldata newText) public onlyOwners {
        text = newText;
    }

    function addOwner(address newOwner) public onlyOwners {
        owners.push(newOwner);
    }

    function giveUpOwnership() public onlyOwners {
        // Don't allow the last owner to give up
        require(owners.length > 1, "You can't revoke your ownership");
        for (uint i = 0; i < owners.length; i++) {
            if (msg.sender == owners[i]) {
                owners[i] = owners[owners.length - 1];
                owners.pop();
                break;
            }
        }
    }

    modifier onlyOwners() {
        bool isOwner;
        for (uint i = 0; i < owners.length; i++) {
            if (msg.sender == owners[i]) {
                isOwner = true;
                break;
            }
        }
        require(isOwner, "Caller is not the owner");
        _;
    }
}
