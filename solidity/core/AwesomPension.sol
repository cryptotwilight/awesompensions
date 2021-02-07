// SPDX-License-Identifier: UNLICENSED
pragma solidity >0.4.0 <=0.8.0; 
pragma experimental ABIEncoderV2; 

import "./interfaces/IAwesomPensionProduct.sol";
import "./interfaces/IAwesomePension.sol";
import "./interfaces/IAwesomPensionPot.sol";
import "./AwesomPensionPot.sol";

contract AwesomPension is IAwesomePension { 
    
    
    address policyHolder; 
    address policyAdministrator; 
    address systemAdministrator; 
    
   IAwesomPensionProduct policyProduct; 
    
    AwesomPensionPot pot; 
    uint256 startDate; 
    uint256 maturityDate; 
    bool mature; 
    uint256 _lastAnnuityPayment; 
    
    IAwesomPensionPot pensionPot; 
    
    constructor (address _policyHolder, 
                 address _policyAdministrator, 
                 address _systemAdministrator, 
                 address _policyProduct,
                 address _oneInchBrokerAddress, 
                 address _aaveBrokerAddress, 
                 address _chainlinkAddress) {
                     
        policyHolder =_policyHolder;
        policyAdministrator = _policyAdministrator;
        systemAdministrator = _systemAdministrator;
        
        policyProduct = IAwesomPensionProduct(_policyProduct);
        
        pot = new AwesomPensionPot(address(this), _oneInchBrokerAddress, _aaveBrokerAddress, _chainlinkAddress);
        startDate = block.timestamp; 
        maturityDate = startDate + policyProduct.getDuration() * 365 * 24 * 60 * 60 * 1000;
        
    } 
    
        /** Management Functions */ 
  
    function payPremium(uint256 _premium) payable external returns (uint256 _paymentReference){
        require(msg.value == _premium);
        pot.creditPensionPot(msg.value);
        
    }
    function makeOverPayment(uint256 _overPayment) payable external returns (uint256 _paymentReference){
        require(msg.value == overPayment);
        pot.creditPensionPot(msg.value);
        
    }
    
    function upgradePolicy() payable external returns (uint256 _paymentReference){
        
    }
    
    function cancelPolicy()  external returns (uint256 _cancellationReference, uint256 _refundAmount, address _deductionsBreakdown){
        
    }

    
    /** Product data */
    function getPolicyProductData() external returns (uint256 _policyDuration, uint256 _policyInterestRate, uint256 _minimumMonthlyContribution, uint256 _maxPayoutOnMaturity){
        
    }
    
    
     /** Monitoring Functions */
    function getStartDate() external returns (uint256 _startDate){
        return startDate; 
    }
    
    function getMaturityDate() external returns (uint256 _maturityDate){
        return maturityDate; 
    }
    
    function getAPPotBalance() external returns (uint256 _potBalance){
        pot.getAPPotBalance();
    }
    
    function getAPPotAverageMonthlyInterest() external returns (uint256 _monthlyInterest){
        pot.getAPPotAverageMonthlyInterest();
    }
    
    function getPaymentsOnTime() external returns(uint256 _paymentsOnTimeCount){
        
    }
    
    function getPaymentsLeft() external returns(uint256 _paymentsMissed){
        
    }
    
    function isMature() external returns (bool _mature){
        return mature; 
    }
    
    function getAnnuity() external returns (uint256 _annuityAmount){
        if(lastAnnuityPayment == 0) {
            return policyProduct.getAnnuity(); 
        }
        return lastAnnuityPayment; 
    }

    function creditAnnuityAmount(uint256 _annuityAmount) external payable returns (uint256 _creditReference){
         
    }
    
    

}