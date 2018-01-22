pragma solidity ^0.4.12;

import "./lib/BurnableToken.sol";
import "./lib/UpgradeableToken.sol";

contract Pump is BurnableToken, UpgradeableToken {

  string public name;
  string public symbol;
  uint public decimals;

  function Pump(address _owner)  UpgradeableToken(_owner) {
    name = "Pump";
    symbol = "PMP";
    totalSupply = 3000000000000000;
    decimals = 8;

    balances[_owner] = totalSupply;
  }
}