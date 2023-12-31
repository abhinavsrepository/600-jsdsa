// MyContract.sol
pragma solidity ^0.8.0;

contract MyContract {
    uint256 public myVariable;

    function setVariable(uint256 _value) public {
        myVariable = _value;
    }
}
