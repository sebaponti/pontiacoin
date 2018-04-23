const PontiaCoinCrowdsale = artifacts.require('./PontiaCoinCrowdsale.sol');
const PontiaCoin = artifacts.require('./PontiaCoin.sol');

module.exports = function(deployer, network, accounts) {
  const openingTime = web3.eth.getBlock('latest').timestamp + 2; // two secs after the last block is added.
  const closingTime = openingTime + 86400 * 40; // 40 days
  const rate = new web3.BigNumber(1000);
  const wallet = accounts[1];

  return deployer
    .then(() => {
      return deployer.deploy(PontiaCoin);
    })
    .then(() => {
      return deployer.deploy(
        PontiaCoinCrowdsale,
        openingTime,
        closingTime,
        rate,
        wallet,
        PontiaCoin.address
      );
    });
}

