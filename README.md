# Distribution_Contract_Example

<p align="left">
  <img src="https://img.shields.io/badge/Solidity-0.8.19-informational" alt="Solidity Version">
  <img src="https://img.shields.io/badge/License-MIT-success" alt="License">
</p>
  
<h3>About</h3>

There is a simple distribution template. IERC721 acts as a distribution mark. Contract provides only one fuction - partial funds transfer.

<h3>Core stuff</h3>

Contract can receive native tokens. I've used NFTs as distribution mark. IERC721 don't provide NFTs count standartly, then we need to input it manually and parse addresses.

<h3>To do:</h3>

- Add audit report
- Add tests
- Gas optimisation
- Add events
- Add custom token distribution
