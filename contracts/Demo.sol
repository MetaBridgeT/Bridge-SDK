pragma solidity ^0.8.0;

import "./BridgeSdk.sol";

contract TestCross is  BridgeSDK{
     constructor() {
        
    }

    function myFunction() public returns (bytes memory datas) {
        // Call bridgeCall function on BridgeSDK contract
        // 11155111 is the chain id of the destination chain
        // 0x5C3159dDD2fe0F9862bC7b7D60C1875fa8F81337 is the contract address on the destination chain
        // abi.encodeWithSignature("callme()") is the function signature and parameters
        bytes memory datas = bridgeCall(11155111, 0x5C3159dDD2fe0F9862bC7b7D60C1875fa8F81337, abi.encodeWithSignature("callme()"));
        return datas;
    }
}
