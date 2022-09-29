// SPDX-License-Identifier: MIT
pragma solidity ^0.8.4;  //Do not change the solidity version as it negativly impacts submission grading

contract ExampleExternalContract {

  bool public completed;

  function complete() public payable {
    completed = true;
  }

  function abort(address payable stakerContractAddress) public {
    stakerContractAddress.transfer(address(this).balance);
    completed = false;
  }

}
