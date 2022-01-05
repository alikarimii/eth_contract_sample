// SPDX-License-Identifier: MIT
pragma solidity >=0.8.0 <0.9.0;

contract FirstContract {
    bool firstBool = false;
    // default is zero
    uint256 firstUint;
    string fisrtString = "some text";

    // struct
    struct Person {
        string name;
        uint256 age;
    }
    Person p1 = Person({name: "jon", age: 20});
    //array dynamic length
    Person[] peoples;
    // array fix length(2)
    Person[2] otherPeoples;
    // map
    mapping(string => uint256) mapPersons;

    address account1 = 0x876bec98825F0287FdFA8E2029e22f5aA0D2D82F;
}
