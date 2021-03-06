//SPDX-License-Identifier: Unlicense
pragma solidity ^0.7.5;

contract Sidekick {
    function sendAlert(address hero, uint enemies, bool armed) external {
        // TODO: alert the hero!
        hero.call(abi.encodeWithSignature("alert(uint256,bool)", enemies, armed));
    }
}

contract Hero {
    Ambush public ambush;

    struct Ambush {
        bool alerted;
        uint enemies;
        bool armed;
    }

    function alert(uint enemies, bool armed) external {
        ambush = Ambush(true, enemies, armed);
    }
}
