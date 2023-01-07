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

# To deploy the smart contract, you will need to have a local Ethereum blockchain setup or access to a testnet or mainnet.

Once you have that set up, you will need to use a Solidity compiler, such as Remix, to compile the Solidity code and generate the contract ABI and bytecode.

Next, you will need to use a Web3 provider, such as MetaMask, to connect to the Ethereum blockchain and send a transaction to deploy the contract. You will need to have some Ether in your account to pay for the deployment transaction.

Once the contract is deployed, you can use the contract ABI and the contract address to interact with the contract from your Web3.js code. You can do this by creating an instance of the contract using the Web3.js contract object and calling its methods.
