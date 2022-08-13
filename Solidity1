pragma solidity ^0.8.7;

contract Constructor {

    string public tokenName;
    uint public totalSupply;

    constructor(string memory name, uint number) {
        //it only works once.
        tokenName = name;
        totalSupply = number;
    }

    //constant, immutable

    uint public constant number = 2000;
    //The constant data does not change.

    uint public immutable number;
    constructor(uint num) {
        //We can put data from the constructor structure with immutable, but we can't intervene afterwards.
        number = num;
    }

}
