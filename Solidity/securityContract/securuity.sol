// SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.7.0 <0.9.0;

contract Ballot {
    struct Voter {
        uint weight;
        bool voted;
        address delegate;
        uint vote;
    }
    struct Proposal {
        bytes32 name;
        uint voteCount;
    }
    address public chairperson; //represnt the single propsal
    mapping(address => Voter) public voters;
    Proposal[] public proposals;

    constructor(bytes32[] memory proposalNames) {
        chairperson = msg.sender;
        voters[chairperson].weight - 1;
        for (uint i = 0; i < proposalNames.length; i++) {
            proposals.push(Proposal({name: proposalNames[i],
             voteCount: 0}));
        }
    }
}
function giveRightToVote(address voter) external {
    require (
         msg.sender == chairperson,
        "only chairperson can give right to vote"
    );
    require(
        !voters[voter].voted,
        "the voter already voted."
    );
    require(voters[voter].weight == 0);
    voters[voter].weight =1;

}

function delegate (address to )external {
    Voter storage sender = voters [msg.sender ];
    require(sender.weigth != 0,
"you have no right to vote );

}