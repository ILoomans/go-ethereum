import { HardhatUserConfig } from "hardhat/config";
import "@nomicfoundation/hardhat-toolbox";

const config: HardhatUserConfig = {
  solidity: "0.8.18",
  networks: {
    cordaEvmNetwork: {
      url: "http://127.0.0.1:8545",
      accounts: [
        "0x613043e6b5bc6de6c895c7bce9722fb72aba3a54f9fc0833cac6931c1bb9f74b",
        "0xde2276790d32c77fb6c4672474d04883bc5aace376b3dd4845b7818201baa671"
      ]
  }
}
}
export default config