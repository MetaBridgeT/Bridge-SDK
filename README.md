
# Metabridge SDK

The Metabridge SDK is a cross-chain messaging SDK that allows contracts to communicate with each other on different blockchain networks. This SDK is built on top of the Theta Metachain Architectureand allows for seamless communication across different blockchain networks.

## How it works

The Metabridge SDK provides a way for contracts to call functions on other contracts that exist on different blockchain networks. When a contract calls a function using the Metabridge SDK, the SDK creates a transaction that is sent to a bridge contract on the source chain. The bridge contract then forwards the transaction to a corresponding bridge contract on the destination chain, which then executes the function call on the target contract.

The Metabridge SDK uses a set of standardized messages and transaction formats to ensure compatibility across different blockchain networks. This allows for secure and efficient cross-chain communication without the need for complex custom solutions.

## Installation

To install the Metabridge SDK, follow these steps:

1.  Clone the repository to your local machine:


`import "https://github.com/MetaBridgeT/Bridge-SDK/blob/main/contracts/BridgeSdk.sol";` 

2.  Install the dependencies:

`npm install` 

3.  Compile the contracts:

`npm run compile` 

4.  Test the contracts:

`npm run test` 

## Usage

To use the Metabridge SDK in your Solidity contracts, you must first import the `BridgeSDK.sol` file from the `contracts` directory:


`import "./BridgeSdk.sol";` 

Next, you can inherit from the `BridgeSDK` contract in your own contract:


`contract MyContract is BridgeSDK {
    // ...
}` 

Once you have inherited from the `BridgeSDK` contract, you can use the `bridgeCall` function to call functions on contracts that exist on different blockchain networks.

The `bridgeCall` function takes the following parameters:

-   `uint256 _destChainId`: The chain ID of the destination blockchain network.
-   `address _destContract`: The address of the contract on the destination blockchain network.
-   `bytes memory _data`: The function signature and parameters to be passed to the contract on the destination blockchain network.

Here is an example of how to use the `bridgeCall` function:




`


	function myFunction() public returns (bytes memory datas) {
    // Call bridgeCall function on BridgeSDK contract
    // 11155111 is the chain id of the destination chain
    // 0x5C3159dDD2fe0F9862bC7b7D60C1875fa8F81337 is the contract address on the destination chain
    // abi.encodeWithSignature("callme()") is the function signature and parameters
    bytes memory datas = bridgeCall(11155111, 0x5C3159dDD2fe0F9862bC7b7D60C1875fa8F81337, abi.encodeWithSignature("callme()"));
    return datas;
}

` 

In this example, we have a contract called `MyContract` that inherits from the `BridgeSDK` contract. The `myFunction` function uses the `bridgeCall` function to call a function called `callme` on a contract on a different blockchain network. The parameters for `bridgeCall` include the chain ID of the destination chain, the contract address on the destination chain, and the function signature and parameters.

## Contributing

We welcome contributions to the Metabridge SDK! To contribute, please fork the repository and submit a pull request with your changes. Before submitting a pull request, please make sure to test your changes thoroughly and adhere to the project's
