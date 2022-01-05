// SPDX-License-Identifier: MIT
pragma solidity >=0.8.0 <0.9.0;

contract FirstContract {
    // struct
    struct Person {
        string name;
        uint256 age;
    }

    //array dynamic length
    Person[] peoples;

    // map
    mapping(string => uint256) mapPersons;

    // this function only for use inside this contract
    function test1() internal {
        Person memory p1 = Person({name: "jon", age: 20});
        // add element to array
        peoples.push(p1);
    }

    function test2() private {
        Person memory p2 = Person({name: "jack", age: 25});
        // add element to map
        mapPersons[p2.name] = p2.age;
    }

    // this use for call from outside of contract
    function test3() external returns (uint256) {
        Person memory p3 = Person({name: "jack", age: 25});
        // add element to map
        mapPersons[p3.name] = p3.age;
        // return age of jack
        return mapPersons["jack"];
    }

    // view function can not change state of contract
    function test4(string memory name) public view returns (uint256) {
        // return age if person with this name exists
        return mapPersons[name];
    }
}
