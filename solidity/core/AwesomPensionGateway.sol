// SPDX-License-Identifier: UNLICENSED
pragma solidity >0.4.0 <=0.8.0; 
pragma experimental ABIEncoderV2; 

import "./interfaces/IAwesomPensionGateway.sol";
import "./AWesomPension.sol";

contract AwesomPensionGateway is IAwesomPensionGateway {
    
    
    address administrator; 
    
    address[] apProductRegistry; 
    
    address activePolicyList; 
    
    mapping(address=>address) policyAddressByPolicyHolder; 
    mapping(address=>bool) policyHeldStatusByPolicyHolder; 
    
    constructor(address _administrator) { 
        administrator = _administrator; 
        
    }
    
    
    function buyAwesomPension(address _policyAPProductAddress, uint256 _initialPremium, address _policyHolder) external payable returns (uint256 _paymentReference, address _pensionUIAddress){
        require(isInAPRegistry(_policyAPProductAddress), '00 - unrecognized product'); // must be a registered product
        require(msg.sender == _policyHolder); // only policyholder can take out policy
        require(msg.value == _initialPremium); // initial premium must be paid
        require(!ownsPolicy(_policyHolder), '01 - policy already held'); // must not already own a policy
            
        
        
        
    }

    function cancelAwesomPension(address _policyAddress, address _policyHolder ) external returns (uint256 _cancellationReference, uint256 _cancellationCharge){
        
    }
    
    function findAwesomPension(address _policyHolderAddress) external returns (address _pensionUIAddress){
        
    }
    
    function getAvailableAPProductPolicys() external view returns (address [] memory  _policyAvailableAPProductAddresses){
        return apProductRegistry; 
    }
    
    
    function ownsPolicy(address _policyHolder) internal pure returns (bool _found){
        return policyHeldStatusByPolicyHolder[_policyHolder];
    }
    
    function isInAPRegistry(address _apProductAddress) internal pure returns (bool _found) {
        for(uint256 x = 0; uint256 < apProductRegistry.length; x++) {
            if(apProductRegistry[x] == _apProductAddress) {
                return true; 
            }
        }
        return false; 
    }
    
    
}