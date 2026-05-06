// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

import "../src/DomainReview.sol";

contract DomainReviewTest {
    function testDomainReviewLane() public {
        DomainReview lens = new DomainReview();
        DomainReview.Item memory item = DomainReview.Item(54, 43, 9, 72);
        require(lens.score(item) == 196, "domain score mismatch");
        require(lens.lane(item) == 2, "domain lane mismatch");
    }
}
