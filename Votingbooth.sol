// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract VotingBooth {

    // Declare state variables to track votes for each option
    uint256 public votesForYes;
    uint256 public votesForNo;

    // Mapping to track if an address has already voted
    mapping(address => bool) public hasVoted;

    // Function to vote for "Yes"
    function voteYes() public {
        // Ensure the sender hasn't already voted
        require(!hasVoted[msg.sender], "You have already voted.");
        
        // Mark the sender as having voted
        hasVoted[msg.sender] = true;

        // Increment the vote count for "Yes"
        votesForYes++;
    }

    // Function to vote for "No"
    function voteNo() public {
        // Ensure the sender hasn't already voted
        require(!hasVoted[msg.sender], "You have already voted.");
        
        // Mark the sender as having voted
        hasVoted[msg.sender] = true;

        // Increment the vote count for "No"
        votesForNo++;
    }

    // Function to get the current vote tally
    function getVotes() public view returns (uint256 yesVotes, uint256 noVotes) {
        return (votesForYes, votesForNo);
    }
}
