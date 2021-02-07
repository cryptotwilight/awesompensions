// SPDX-License-Identifier: UNLICENSED
pragma solidity >0.4.0 <=0.8.0; 
pragma experimental ABIEncoderV2;

interface IAwesomPensionPot {
 
 
    function creditPensionPot(uint256 _amount) payable external returns (uint256 _paymentReference);
 
    function runInvestmentScheme() external returns (uint256 _statusCode);
    
    function changeInvestmentStrategy(address _newStrategy)  external returns (uint256 _statusCode);

    function emptyPot() external returns (uint256 _paymentReference);
    
    function getPotBalance() external returns (uint256 _balance);
    
    function getAverageMonthlyInterest() external returns (uint256 _interestPercentage);
}