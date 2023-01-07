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
