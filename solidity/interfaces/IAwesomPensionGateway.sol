// SPDX-License-Identifier: UNLICENSED
pragma solidity >0.4.0 <=0.8.0; 
pragma experimental ABIEncoderV2;
/**
 * This interface is responsible for accessing the Awesom Pensions dApp 
 * @author Taurai Ushewokunze 
 */

interface IAwesomPensionGateway {  
    
    function buyAwesomPension(address _policyAPProductAddress, uint256 _initialPremium, address _policyHolder) external payable returns (uint256 _paymentReference, address _pensionUIAddress);

    function cancelAwesomPension(address _policyAddress, address _policyHolder ) external returns (uint256 _cancellationReference, uint256 _cancellationCharge);
    
    function findAwesomPension(address _policyHolderAddress) external returns (address _pensionUIAddress);
    
    function getAvailableAPProductPolicys() external view returns (address [] memory  _policyAvailableAPProductAddresses);
}