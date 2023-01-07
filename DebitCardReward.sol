pragma solidity ^0.5.0;

import "https://github.com/OpenZeppelin/openzeppelin-solidity/contracts/math/SafeMath.sol";
import "https://github.com/OpenZeppelin/openzeppelin-solidity/contracts/token/ERC20/ERC20.sol";

contract DebitCardRewards is ERC20 {
    using SafeMath for uint256;

    // The address of the contract owner
    address public owner;

    // The mapping of debit card holders to their usage count
    mapping(address => uint256) public usageCount;

    // The reward amount in ERC20 tokens
    uint256 public rewardAmount;

    // The event to emit when a debit card holder earns a reward
    event RewardEarned(address cardHolder, uint256 amount);

    constructor(uint256 _rewardAmount) public {
        owner = msg.sender;
        rewardAmount = _rewardAmount;
    }

    // The function to increment the usage count for a debit card holder
    function useCard() public {
        usageCount[msg.sender] = usageCount[msg.sender].add(1);
        if (usageCount[msg.sender] == 50) {
            reward(msg.sender, rewardAmount);
        }
    }

    // The function to reward a debit card holder with ERC20 tokens
    function reward(address _cardHolder, uint256 _amount) private {
        require(_amount > 0, "The reward amount must be positive.");
        _cardHolder.transfer(_amount);
        RewardEarned(_cardHolder, _amount);
    }
}

pragma solidity ^0.5.0;

import "https://github.com/OpenZeppelin/openzeppelin-solidity/contracts/token/ERC20/ERC20.sol";
import "https://github.com/OpenZeppelin/openzeppelin-solidity/contracts/math/SafeMath.sol";

contract DebitCardRewards is ERC20 {
    using SafeMath for uint256;

    // The address of the contract owner
    address public owner;

    // The mapping of addresses to their usage count
    mapping(address => uint256) public usageCount;

    // The event to emit when an address has reached the usage threshold
    event ThresholdReached(address user);

    constructor() public {
        owner = msg.sender;
    }

    // The function to track debit card usage
    function trackUsage() public {
        require(msg.sender != address(0), "Invalid address.");
        usageCount[msg.sender] = usageCount[msg.sender].add(1);
        if (usageCount[msg.sender] >= 50 && usageCount[msg.sender] % 50 == 0) {
            // Reward the user with an ERC20 token
            uint256 reward = 10;
            balanceOf[msg.sender] = balanceOf[msg.sender].add(reward);
            totalSupply = totalSupply.add(reward);
            ThresholdReached(msg.sender);
        }
    }

    // The function to reset the usage count for all addresses
    function resetUsage() public onlyOwner {
        for (address user : usageCount) {
            usageCount[user] = 0;
        }
    }
}

