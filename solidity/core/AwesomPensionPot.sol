// SPDX-License-Identifier: UNLICENSED
pragma solidity >0.4.0 <=0.8.0; 
pragma experimental ABIEncoderV2; 


import "./brokers/ChainlinkBroker.sol";
import "./brokers/OneInchBroker.sol";
import "./brokers/AaveBroker.sol";
import "./IAwesomPension.sol";
import "./IAPInvestementStrategy.sol";

contract AwesomPensionPot is IAWesomPensionPot {
    
    ChainlinkBroker chainlink; 
    OneInchBroker oneInch; 
    AaveBroker aave; 
    IAwesomPension policy; 
    
    
    
    constructor(address _policyAddress, 
                address _oneInchBrokerAddress, 
                address _aaveBrokerAddress, 
                address _chainlinkAddress )  {
        policy = IAwesomPension(_policyAddress);
        chainlink = ChainlinkBroker(_chainlinkAddress);
        oneInch = OneInchBroker(_oneInchBrokerAddress);
        aave = AaveBroker(_aaveBrokerAddress);
    }
    
    
    function getAverageMonthlyInterest() external returns (uint256 _interestPercentage) {
        
    }
    
    
    function runInvestmentScheme() external returns (uint256 _statusCode){
            
    }
    
    
    function changeInvestmentStrategy(address _newStrategy)  external returns (uint256 _statusCode){
        
    }
}