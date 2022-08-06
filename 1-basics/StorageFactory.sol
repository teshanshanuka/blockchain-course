// SPDX-License-Identifier: GPL
pragma solidity ^0.8.0;

import "./SimpleStorage.sol";

contract StorageFactory{
    SimpleStorage[] public ssArr;
    function createNewSimpleStorageContract() public {
        SimpleStorage ss = new SimpleStorage();
        ssArr.push(ss);
    }

    function getStorageSize() public view returns(uint256) {
        return ssArr.length;
    }

    function sfStore(uint256 idx, uint256 storageNumber) public {
        // Address or ABI (Application Binary Interface) needed 
        SimpleStorage ss = SimpleStorage(address(ssArr[idx]));
        ss.store(storageNumber);
    }

    function sfGet(uint256 idx) public view returns(uint256) {
        SimpleStorage ss = SimpleStorage(address(ssArr[idx]));
        return ss.get();
    }
}
