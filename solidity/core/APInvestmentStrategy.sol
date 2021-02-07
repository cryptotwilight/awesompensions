// SPDX-License-Identifier: UNLICENSED
pragma solidity >0.4.0 <0.9.0; 
pragma experimental ABIEncoderV2; 

import "./interfaces/IAPInvestmentStrategy.sol";
import "./brokers/ChainlinkBroker.sol";


contract APInvestmentStrategy is IAPInvestmentStrategy { 
    
    address administrator; 
    ChainlinkBroker chainlink; 
    
    constructor (address _administrator, 
                 address chainlinkBrokerAddress) public {
        administrator = _administrator; 
    }

    function getInvestementScheme(uint256 _earningsTarget, string memory _sourceMarket, uint256 _potSize) override external returns (uint256 _holdDuration, uint256 _holdLimit, string memory _targetMarket, uint256 _minPotSize, uint256 _earningProjection){
        
    }

}