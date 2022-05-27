# How to create a Basic Storage Contract
[Dev Skill Tree](https://app.learney.me/maps/devskilltree) node [Basic Storage Contract](https://app.learney.me/maps/devskilltree?concept=27)

## Writing a solidity contract
The smart contract is written in solidity.

1. You can use any editor you like to make the contract. For this tutorial we recommend the online IDE [remix.ethereum.org]
   - Never used remix before? Checkout [Solidity Basics and Remix Tutorial, Lesson #1](https://www.youtube.com/watch?v=5dcRMHUhA20)
2. Go to https://remix.ethereum.org
3. Check out the "Solidity Compiler", and "Deploy and Run Transactions" tabs. If they are not present, enable them in the plugin manager
4. Create a new solidity file in remix, named `mood.sol`
5. Write the contract
   - Specify the solidity version
   ``` 
    pragma solidity ^0.8.14;
   ```
   - Define the contract 
   ``` 
    contract MoodContract{
    
    }
   ```
   - Inside the contract create a variable called mood
   ```
    string mood;
   ```
   - Next, create Read and Write functions 
   ```
    function setMood(string memory mymood) public {
        mood = mymood;
    }

    function getMood() public view returns (string memory){
        return mood;
    }
   ```
   - And that's it! Find the full source code for [mood.sol](contracts/mood.sol) in this repo. 
6. Deploy the contract on the Rinkeby Testnet. 
   - Make sure your Metamask is connected to the Testnet.
   - Make sure you select the right compiler version to match the solidity contract. (In the compile tab)
   - Compile the code using the "Solidity Compiler" tab. _Note that it may take a moment to load the compiler_
   - Deploy the contract under the "Deploy and Run Transactions" tab
   - Under the Deployed Contracts section, you can test out your functions on the Remix Run tab to make sure your contract works as expected!

<p align="middle">
<blockquote class="imgur-embed-pub" lang="en" data-id="a/ZTREsRx" data-context="false" ><a href="//imgur.com/a/ZTREsRx"></a></blockquote><script async src="//s.imgur.com/min/embed.js" charset="utf-8"></script>
</p>

***Be sure to deploy on Rinkeby testnet via Remix under the `Injected Web3` environment and confirm the deployment transaction in Metamask***

Make a new temporary file to hold:
   - The deployed contract's address
      - Copy it via the copy button next to the deployed contracts pulldown in remix's **Run** tab
   - The contract ABI ([what is that?](https://solidity.readthedocs.io/en/develop/abi-spec.html))
      - Copy it via the copy button under to the contract in remix's **Compile** tab (also in Details)

## Information about our Contract
- We have a `MoodContract` instance created at [0x2b177f16D33F541c1AfF0B77B30E6440B95A5f14 address]( https://rinkeby.etherscan.io/address/0x2b177f16D33F541c1AfF0B77B30E6440B95A5f14) on Rinkeby.
- Our the contract is verified and you can find its ABI on etherscan.io as well

#### This illustrates an important point: you can also build a dApp _without needing to write the Ethereum contract yourself_! If you want to use an existing contract written and already on Ethereum!

## Credits
The content of this tutorial is the smart contract part from [Basic Front End dApp](https://github.com/BlockDevsUnited/BasicFrontEndTutorial).

