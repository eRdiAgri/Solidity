pragma solidity ^0.8.7;

contract Mapping {

    mapping(address => bool) public _registered;
    mapping(address => int256) public _amount;

    function register(int256 amount) public {
        //Detect registrations
        require(!_registered[msg.sender], "Register error!");

        _registered[msg.sender] = true;
        _amount[msg.sender] = amount;
    }


    function Registered() public view returns(bool) {
        return _registered[msg.sender];
    }


    function deleteRegistered() public {
        require(Registered(), "Tuser is not registered.");
        delete(_registered[msg.sender]);
        delete(_amount[msg.sender]);
    }

}
