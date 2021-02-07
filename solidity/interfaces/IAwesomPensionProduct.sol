// SPDX-License-Identifier: UNLICENSED
pragma solidity >0.4.0 <=0.8.0; 
pragma experimental ABIEncoderV2;

/**
 * This is the pension product interface 
 * 
 */ 


interface IAwesomPensionProduct { 
    
    function getAwesomPensionClass() external returns (string memory _apClassName);
    
    function getDuration() external returns (uint256 _durationYears);
    
    function getMinimumMonthlyInterest() external returns (uint256 _minimumMonthlyInterest);
    
    function getMimimumMonthlyContribution() external returns (uint256 _minimumMonthlyContribution);
    
    function getMaxMonthlyPayoutOnMaturity() external returns (uint256 _maxMonthlyPayoutOnMaturity);
    
    function isActive() external returns (bool _active);
    
}