pragma solidity ^0.4.22;

import "./PontiaCoin.sol",
import 'zeppelin-solidity/contracts/crowdsale/emission/MintedCrowdsale.sol';
import 'zeppelin-solidity/contracts/crowdsale/validation/TimedCrowdsale.sol';

contract PontiaCoinCrowdsale is TimedCrowdsale, MintedCroudsale {

    function constructor
        (
            uint256 _openingTime,
            uint256 _closingTime,
            uint256 _rate,
            address _wallet,
            MintableToken _token
        )
        public
        Crowdsale(_rate, _wallet, _token)
        TimeCrowdsale(_openingTime, _closingTime) {

        }
}
