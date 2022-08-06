// SPDX-License-Identifier: GPL
pragma solidity ^0.8.0;

// This is a contract
contract SimpleStorage {
    uint256 public myNumber = 5;

    function store(uint256 _num) public {
        myNumber = _num;
    }

    function get() public view returns(uint256) {
        return myNumber;
    }
}

// I can have another contract here
contract OtherStorage{
    uint8 myUint;  // this initializes to 0
    bool myBool = true;
    string myName = "TeshanSJ";
    int128 myInt = -10;
    address myAddress = 0x5B38Da6a701c568545dCfcB03FcB875f56beddC4;
    bytes32 myBytes = "cat";


    function storeS(int128 _num) private {
        myInt = _num;
    }

    // pure does not view nor modify state. i.e. it can only use what is provided to it to run. 
    // view cannot modify state, but can look it up.
    // if you call view or pure functions externally, you do not pay a gas fee.

    function getAddr() external view returns(address) { // external functions can be called from only external contracts
        return myAddress;
    }

    function mult2(int _num) public pure returns(int){
        return _num*2;
    }

    struct Person{
        string name;
        uint16 age;
    }

    // A dynamic array (Person[10] here would be static size)
    Person[] private people;

    // string param should be `memory` or `storage` to specify where the string would reside
    function addPerson(string memory name, uint16 age) public {
        people.push(Person({name: name, age: age}));
        // Or people.push(Person(name, age));
    }
}
