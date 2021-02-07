// SPDX-License-Identifier: UNLICENSED
pragma solidity >0.4.0 <=0.8.0; 
pragma experimental ABIEncoderV2;


interface IAPInvestmentStrategy {
    
    
    function getInvestementScheme(uint256 _earningsTarget, string memory _sourceMarket, uint256 _potSize) external returns (uint256 _holdDuration, uint256 _holdLimit, string memory _targetMarket, uint256 _minPotSize, uint256 _earningProjection); 
}