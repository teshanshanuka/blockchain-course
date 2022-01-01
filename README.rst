###############################################
Solidity, Blockchain, and Smart Contract Course
###############################################

From `this youtube tutorial <https://youtu.be/M576WGiDBdQ>`_.

*****
Intro
*****

1. Bitcoin first took blockchain to mainstream
2. Ethereum allows smart contracts, decentralized autonomous organizations, decentralized applications ...etc.
3. **Oracles** bring data into a blockchain/ execute external computations for blockchain
4. **Chainlink** is a decentralized oracle network which provides data and external computation to smart contracts
5. Hybrid smart contracts combine on-chain and off-chain components

:Note:
   Dapp = Smart contract = Decentralized app

Advantages
==========

1. Decentralized - No single authority has control over the network
2. Transparency and flexibility - Everyone has to play by the same rules, everyone sees what's happening
3. Speed and efficiency
4. Security and immutability - Can't be tampered
5. Removal of counterparty risk - Remove conflict of interest
6. Trust minimized agreements -  Math based agreements

Important timestamps
====================

1. Creating an ETH wallet - `28:50 <https://youtu.be/M576WGiDBdQ?t=1730>`_
2. How blockchain works - `44:12 <https://youtu.be/M576WGiDBdQ?t=2652>`_

   * Demo from `andersbrownworth.com <https://andersbrownworth.com/blockchain/blockchain>`_



ETH transactions
================

* Gas: Measure of computation use
* Gas price: How much it costs per unit of gas
* Gas limit: Max amount of gas in a transaction
* GWEI is a denomination of ETH

    | 1 ETH = 10 :sup:`18` WEI = 10 :sup:`9` GWEI

* Transaction fee = Gas used x Gas price

    | i.e. 21000 gas @ 1GWEI per gas = 21000GWEI

********************
How Blockchain Works
********************

**An example from `<https://andersbrownworth.com/blockchain/blockchain>`_ using sha256**

*Block chain:*

* A block has a block number, nonce, data, the previous hash and a hash
* The hash of a block should fulfill a specific criteria to be a valid block. *This is the blockchain problem* (e.g. All
  hashes should start with 0000)
* Mining is the process of finding the solution to the blockchain problem
* If data of a block is changed, the hash will be updated and will no longer fulfill the criteria
* Now to keep the blockchain's integrity, one will need to re-mine all the blocks following the changed block which is
  next to impossible
* If a peer A updated the hashes somehow in their ledger, other peers who are keeping a ledger won't agree with peer A.
  Majority will agree on the correct unchanged ledger record

*Tokens:*

* Tokens are blocks with transaction history data

:Note:

   ETH runs on Keccak-256 hashing


