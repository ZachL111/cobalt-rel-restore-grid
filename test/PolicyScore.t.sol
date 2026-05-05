// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

import "../src/PolicyScore.sol";

contract PolicyScoreTest {
    function test_case_1() public pure {
        PolicyScore scorer = new PolicyScore();
        PolicyScore.Signal memory signal = PolicyScore.Signal(73, 99, 15, 14, 13);
        require(scorer.score(signal) == 157, "score mismatch");
        require(scorer.accepted(signal) == false, "decision mismatch");
    }
    function test_case_2() public pure {
        PolicyScore scorer = new PolicyScore();
        PolicyScore.Signal memory signal = PolicyScore.Signal(61, 104, 20, 19, 4);
        require(scorer.score(signal) == 80, "score mismatch");
        require(scorer.accepted(signal) == false, "decision mismatch");
    }
    function test_case_3() public pure {
        PolicyScore scorer = new PolicyScore();
        PolicyScore.Signal memory signal = PolicyScore.Signal(78, 102, 15, 20, 11);
        require(scorer.score(signal) == 130, "score mismatch");
        require(scorer.accepted(signal) == false, "decision mismatch");
    }
}
