# 🖼️ Foundry NFT Collection

A modern, developer-friendly NFT project built with [Foundry](https://github.com/foundry-rs/foundry) and Solidity. This repository features two unique NFT contracts: a simple, metadata-driven NFT (`BasicNft`) and an interactive, on-chain mood NFT (`MoodNft`) that changes its appearance based on user interaction.

---

## ✨ Features

- **BasicNft:** Mint NFTs with custom metadata URIs (e.g., IPFS-hosted images).
- **MoodNft:** Mint NFTs that can flip between "happy" and "sad" moods, with on-chain SVG images and metadata.
- **On-Chain SVGs:** MoodNft stores SVG images and metadata fully on-chain, no external dependencies.
- **Gas Optimized:** Efficient minting and state management.
- **Comprehensive Testing:** Built with Foundry’s robust test suite.
- **Automated Scripts:** Easy deployment and interaction scripts.

---

## 🛠️ Getting Started

### Prerequisites

- [Foundry](https://getfoundry.sh/)
- [Node.js & npm](https://nodejs.org/)
- [Git](https://git-scm.com/)

### Installation

```bash
git clone https://github.com/0xAbubakarBL/foundry-nft.git
cd foundry-nft
forge install
```

### Environment Setup

Copy `.env.example` to `.env` and fill in your variables as needed.

---

## 🚩 Usage

### Deploy

- **BasicNft:**
  ```bash
  forge script script/DeployBasicNft.s.sol --broadcast --rpc-url <YOUR_RPC_URL>
  ```
- **MoodNft:**
  ```bash
  forge script script/DeployMoodNft.s.sol --broadcast --rpc-url <YOUR_RPC_URL>
  ```

### Interact

- **Mint BasicNft:**
  ```bash
  forge script script/Interactions.s.sol:MintBasicNft --rpc-url <YOUR_RPC_URL>
  ```
- **Mint MoodNft:**
  ```bash
  forge script script/Interactions.s.sol:MintMoodNft --rpc-url <YOUR_RPC_URL>
  ```
- **Flip MoodNft Mood:**
  ```bash
  forge script script/Interactions.s.sol:FlipMoodNft --rpc-url <YOUR_RPC_URL>
  ```

### Test

```bash
forge test
```

---

## 🌐 Demo

- **MoodNft (Sepolia Testnet):**  
  [0xFa9bA74f86BC1a826EcaF6ce061738b6a61C43c4 on Etherscan](https://sepolia.etherscan.io/address/0xFa9bA74f86BC1a826EcaF6ce061738b6a61C43c4)
- **BasicNft (Sepolia Testnet):**  
  [0x08792647fF9B14a744ACF25ecda283522c2E84B7 on Etherscan](https://sepolia.etherscan.io/address/0x08792647fF9B14a744ACF25ecda283522c2E84B7)

---

## 🧪 Testing

- All tests are in the [`test/`](test/) directory.
- Run all tests with `forge test`.

---

## 🖼️ NFT Previews

- **BasicNft:**  
  ![Pug NFT](img/pug.png)
- **MoodNft:**  
  ![Happy Mood](img/happy.svg) ![Sad Mood](img/sad.svg)

---

## 🔒 Security

- Uses [OpenZeppelin Contracts](https://github.com/OpenZeppelin/openzeppelin-contracts) for best practices.
- Custom errors and modern Solidity patterns for gas savings and clarity.

---

## 🤝 Contributing

Contributions are welcome! Please see [CONTRIBUTING.md](CONTRIBUTING.md) for guidelines.

---

## 📄 License

This project is licensed under the MIT License.

---

## 📬 Contact

- Twitter: [@0xAbubakarBL](https://x.com/0xAbubakarBL)
- Email: 0xAbubakarBL@gmail.com

---

> Built with ❤️ using [Foundry](https://github.com/foundry-rs/foundry) and [OpenZeppelin](https://github.com/OpenZeppelin/openzeppelin-contracts)