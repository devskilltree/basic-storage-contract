// SPDX-License-Identifier: GPL-3.0

pragma solidity 0.8.14;

contract MoodContract {

    string mood;

    function setMood(string memory mymood) public {
        mood = mymood;
    }

    function getMood() public view returns (string memory){
        return mood;
    }
}
