const Web3 = require('web3');
const contract = require('truffle-contract');

// Connect to the Ethereum blockchain
const web3 = new Web3(new Web3.providers.HttpProvider('http://localhost:8545'));

// Load the contract ABI and bytecode
const DebitCardRewardsABI = require('./DebitCardRewardsABI.json');
const DebitCardRewardsBytecode = require('./DebitCardRewardsBytecode.json');

// Create a contract object
const DebitCardRewardsContract = contract(DebitCardRewardsABI);
DebitCardRewardsContract.options.bytecode = DebitCardRewardsBytecode;

// Set the provider for the contract
DebitCardRewardsContract.setProvider(web3.currentProvider);

// Deploy the contract
DebitCardRewardsContract.new().then(instance => {
  console.log(`Contract deployed at address: ${instance.address}`);
});
