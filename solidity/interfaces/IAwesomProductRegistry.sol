pragma solidity >0.4.0 <=0.8.0; 
pragma experimental ABIEncoderV2;


interface IAwesomPensionProductRegistry { 
    
    
    function registerProduct()  external returns (address _productAddress);
    

    function deActivateProduct(address _productAddress) external returns (bool _active);
    
    
    function getActiveProducts() external returns (address [] memory _productAddressList);

}