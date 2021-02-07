// SPDX-License-Identifier: UNLICENSED
pragma solidity >0.4.0 <=0.8.0; 
pragma experimental ABIEncoderV2;

import "https://github.com/aave/protocol-v2/blob/ice/mainnet-deployment-03-12-2020/contracts/interfaces/ILendingPoolAddressesProvider.sol";
import "https://github.com/aave/protocol-v2/blob/ice/mainnet-deployment-03-12-2020/contracts/interfaces/ILendingPool.sol";

contract AaveBroker { 
    
    address administrator;
    
    ILendingPool lendingPool; 
    ILendingPoolAddressProvider lendingPoolAddressProvider; 
    
    
    constructor(address _administrator,
                address _lendingPoolAdressProvider) { 
            lendingPoolAddressProvider(_lendingPoolAdressProvider);
            lendingPool = ILendingPool(lendingPoolAddressProvider);
    }
    
    function deposit(address _policyPotAddress, address _aaveAssetAddress, uint256 _depositAmount) external payable returns (uint256 _amountCredit) { 
        lendingPool.deposit(_aaveAssetAddress, _depositAmount, _policyPotAddress, 0);
        return _depositAmount; 
    } 
    
    function withdraw(address _policyAddress, address _aaveAssetAddress ) external returns (uint256 _amountReturned) {
        uint256 _amount = lendingPool.withdraw(_aaveAssetAddress, type(uint256).max, _policyAddress);
        return _amount; 
    }

}