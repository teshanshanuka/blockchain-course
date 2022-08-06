// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

// importing from npm @chainlink/contracts - https://www.npmjs.com/package/@chainlink/contracts
import "@chainlink/contracts/src/v0.8/interfaces/AggregatorV3Interface.sol";

// from: https://remix.ethereum.org/#url=https://docs.chain.link/samples/PriceFeeds/PriceConsumerV3.sol
// We get the ABI for AggregatorV3Interface smart contract (we should get the ABI to interact with a smart contract)
// If we do not import the chainlink interface, we can specify the interface ourselves and use the 
// interface AggregatorV3Interface {
//   function decimals() external view returns (uint8);

//   function description() external view returns (string memory);

//   function version() external view returns (uint256);

//   function getRoundData(uint80 _roundId)
//     external
//     view
//     returns (
//       uint80 roundId,
//       int256 answer,
//       uint256 startedAt,
//       uint256 updatedAt,
//       uint80 answeredInRound
//     );

//   function latestRoundData()
//     external
//     view
//     returns (
//       uint80 roundId,
//       int256 answer,
//       uint256 startedAt,
//       uint256 updatedAt,
//       uint80 answeredInRound
//     );
// }


contract FundMe {
    mapping (address => uint256) public addr2amountFunded;
    // We can find pricefeeds here https://docs.chain.link/docs/ethereum-addresses/
    AggregatorV3Interface agg_ = AggregatorV3Interface(0x8A753747A1Fa494EC906cE90E9f37563A8AF630e);

    function fund() public payable {  // A payable function
        // We need a min funding amount
        // And we need the funding to be in 'USD'
        addr2amountFunded[msg.sender] += msg.value;
    }

    function getVersion() public view returns(uint256) {
        return agg_.version();
    }

    function getPrice() public view returns(uint256) {
      (,int256 answer,,,) = agg_.latestRoundData();  // is in gwei
      return  uint256(answer * 1e9);
    }

    function getConversionRate(uint256 ethAmount) public view returns (uint256) {
      uint256 ethInUSD = getPrice() * ethAmount / 1e18;  // to convert wei to eth
      return ethInUSD;
    }
}
