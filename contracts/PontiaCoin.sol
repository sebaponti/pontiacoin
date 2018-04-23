pragma solidity ^0.4.22;

import 'zeppelin-solidity/contracts/token/ERC20/MintableToken.sol';

contract PontiaCoin is MintableToken {
    string public name = "PONTIACOIN";
    string public symbol = "POC";
    uint8  public decimals = 18;
}
