# DebitCardRewarder
# Debit Card Rewards

This smart contract tracks the usage of debit cards and rewards users with ERC20 tokens when their usage exceeds a certain threshold. The contract is implemented using Solidity and is compatible with the Ethereum blockchain.

# Features

Tracks the usage of debit cards and emits an event when an address has reached the usage threshold
Rewards users with ERC20 tokens when their usage exceeds the threshold
Allows the contract owner to reset the usage count for all addresses
How to Use

> To track debit card usage, call the trackUsage() function. This function increments the usage count for the caller's address by 1. If the usage count reaches 50 and is divisible by 50, the user is rewarded with 10 ERC20 tokens and the ThresholdReached event is emitted.

> To reset the usage count for all addresses, call the resetUsage() function. This function can only be called by the contract owner.

# Requirements

Solidity 0.5.0 or higher
OpenZeppelin 2.3.0 or higher

# To deploy the smart contract, you will need to use a tool like Truffle or Remix.

>To use Truffle, follow these steps:

1.Install Truffle by running npm install -g truffle

2.Create a new Truffle project by running truffle init

3.Create a new file for your smart contract in the contracts directory, and copy the Solidity code into it
In the Truffle configuration file (truffle-config.js), set the network you want to deploy to (e.g. development, mainnet, etc.)

4.Run truffle compile to compile the smart contract

5.Run truffle migrate to deploy the smart contract to the network

>To use Remix, follow these steps:

1.Go to https://remix.ethereum.org

2.Copy the Solidity code into the code editor

3.Click the "Create" button to create a new contract

4.Click the "Deploy" button to deploy the contract to the network

5.Once the contract is deployed, you can use the Web3.js code to interact with it by replacing the contractAddress and contractAbi variables with the actual contract address and ABI of the deployed contract. You will also need to make sure that you have a Web3 provider set up (e.g. Metamask), and that you are connected to the same network as the contract.
