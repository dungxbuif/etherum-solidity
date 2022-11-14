pragma solidity ^0.5.16;

contract Greetings {
    string message;

    constructor() public {
        message = "I'm ready!";
    }

    function setGreetings(string memory _message) public {
        message = _message;
    }

    function getGreetings() public view returns (string memory) {
        return message;
    }
}
