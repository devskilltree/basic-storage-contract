# How to create a Basic Storage Contract
[Dev Skill Tree](https://app.learney.me/maps/devskilltree) node [Basic Storage Contract](https://app.learney.me/maps/devskilltree?concept=27)

## Writing a solidity contract
The smart contract is written in solidity.

1. You can use any editor you like to make the contract. For this tutorial we recommend the online IDE [remix.ethereum.org]
   - Never used remix before? Checkout [Solidity Basics and Remix Tutorial, Lesson #1](https://www.youtube.com/watch?v=5dcRMHUhA20)
2. Go to remix.ethereum.org
3. Check out the "Solidity Compiler", and "Deploy and Run Transactions" tabs. If they are not present, enable them in the plugin manager
4. Create a new solidity file in remix, named `mood.sol`
5. Write the contract
   - Specify the solidity version
   ``` 
    pragma solidity ^0.8.1;
   ```
   - Define the contract 
   ``` 
    contract MoodDiary{
    
    }
   ```
   - Inside the contract create a variable called mood
   ```
    string mood;
   ```
   - Next, create Read and Write functions 
   ```
    //create a function that writes a mood to the smart contract
    function setMood(string memory _mood) public{
        mood = _mood;
    }
    
    //create a function the reads the mood from the smart contract
    function getMood() public view returns(string memory){
        return mood;
    }
   ```
   - And that's it! your code 
   like [this](https://github.com/BlockDevsUnited/BasicFrontEndTutorial/blob/master/contracts/mood.sol)

6. Deploy the contract on the Ropsten Testnet. 
   - Make sure your Metamask is connected to the Ropsten Testnet.
   - Make sure you select the right compiler version to match the solidity contract. (In the compile tab)
   - Compile the code using the "Solidity Compiler" tab. _Note that it may take a moment to load the compiler_
   - Deploy the contract under the "Deploy and Run Transactions" tab
   - Under the Deployed Contracts section, you can test out your functions on the Remix Run tab to make sure your contract works as expected!

<p align="middle">
<blockquote class="imgur-embed-pub" lang="en" data-id="a/ZTREsRx" data-context="false" ><a href="//imgur.com/a/ZTREsRx"></a></blockquote><script async src="//s.imgur.com/min/embed.js" charset="utf-8"></script>
</p>

***Be sure to deploy on Ropsten via Remix under the `Injected Web3` environment and confirm the deployment transaction in Metamask***

Make a new temporary file to hold:
   - The deployed contract's address
      - Copy it via the copy button next to the deployed contracts pulldown in remix's **Run** tab
   - The contract ABI ([what is that?](https://solidity.readthedocs.io/en/develop/abi-spec.html))
      - Copy it via the copy button under to the contract in remix's **Compile** tab (also in Details)

## Information about our Contract
- We have a `MoodDiary` contract instance created [at this transaction](https://ropsten.etherscan.io/tx/0x8da093fdc4ae3e1b469dfff97b414a9800c9fdd8c1c897b6b746faf43aa3b7f8)


- Here is the contract ([on etherscan](https://ropsten.etherscan.io/address/0xc5afd2d92750612a9619db2282d9037c58fc22cb))
  - We also verified our source code to [ropsten.etherscan.io](https://ropsten.etherscan.io/address/0xc5afd2d92750612a9619db2282d9037c58fc22cb#code) as an added measure for you to verify what the contract is exactly, and also the ABI is available to _the world_! :grin:


- The ABI is also in [this file](https://github.com/BlockDevsUnited/BasicFrontEndTutorial/blob/master/Mood_ABI.json)


#### This illustrates an important point: you can also build a dApp _without needing to write the Ethereum contract yourself_! If you want to use an existing contract written and already on Ethereum!


## Aknowledgements
The content of this tutorial is the smart contract part from [Basic Front End dApp](https://github.com/BlockDevsUnited/BasicFrontEndTutorial).

