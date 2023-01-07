//Here is a Web3.js code that connects the smart contract to a UI/UX

const contractAddress = '0x123456...'; // Replace with the contract address
const contractAbi = [{...}]; // Replace with the contract ABI

// Initialize the contract instance
const contract = new web3.eth.Contract(contractAbi, contractAddress);

// Set the default account to use
web3.eth.defaultAccount = '0xabcdef...'; // Replace with the address of the user's account

// Call the trackUsage function
contract.methods.trackUsage().send({
  from: web3.eth.defaultAccount
}).then(function(receipt) {
  console.log(receipt);
});

// Call the resetUsage function
contract.methods.resetUsage().send({
  from: web3.eth.defaultAccount
}).then(function(receipt) {
  console.log(receipt);
});

// Listen for ThresholdReached events
contract.events.ThresholdReached({
  fromBlock: 0
}, function(error, event) {
  console.log(event);
});
