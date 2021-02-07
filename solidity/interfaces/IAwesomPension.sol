// SPDX-License-Identifier: UNLICENSED
pragma solidity >0.4.0 <=0.8.0; 
pragma experimental ABIEncoderV2;

interface IAwesomPension {
    
    
    /** Management Functions */ 
  
    function payPremium()  payable external returns (uint256 _paymentReference);
    
    function makeOverPayment() payable external returns (uint256 _paymentReference); 
    
    function upgradePolicy() payable external returns (uint256 _paymentReference);
    
    function cancelPolicy()  external returns (uint256 _cancellationReference, uint256 _refundAmount, address _deductionsBreakdown); 

    
    /** Product data */
    function getPolicyProductData() external returns (uint256 _policyDuration, uint256 _policyInterestRate, uint256 _minimumMonthlyContribution, uint256 _maxPayoutOnMaturity);
    
    
     /** Monitoring Functions */
    function getStartDate() external returns (uint256 _startDate);
    
    function getMaturityDate() external returns (uint256 _maturityDate);
    
    function getAPPotBalance() external returns (uint256 _potBalance);
    
    function getAPPotAverageMonthlyInterest() external returns (uint256 _monthlyInterest);
    
    function getPaymentsOnTime() external returns(uint256 _paymentsOnTimeCount);
    
    function getPaymentsLeft() external returns(uint256 _paymentsMissed);
    
    function isMature() external returns (bool _mature);
    
    function getAnnuityAmount() external returns (uint256 _annuityAmount);
    
    function creditAnnuityAmount(uint256 _annuityAmount) external payable returns (uint256 _creditReference);
    
}