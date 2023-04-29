pragma solidity ^0.8.0;

abstract contract BridgeSDK {
    address private constant BRIDGE_CORE_ADDRESS =
        0xa6115196F79E6ee3B7990D3e0AcA0c3627C43743;
    event Nonce (
        bytes nonce
    );
    function bridgeCall(
    
        uint256 chainid,
        address contractAddress,
        bytes memory data
    ) public payable virtual returns (bytes memory datas) {
        bytes memory encodedData = abi.encodeWithSignature(
            "bridgeCall(uint256,address,bytes)",
            chainid,
            contractAddress,
            data
        );
        (bool success, bytes memory datas) = BRIDGE_CORE_ADDRESS.call{value: msg.value}(
            encodedData
        );
        
        require(success, "BridgeSDK: external call failed");
        emit Nonce(datas);
        return datas;
    }
}
