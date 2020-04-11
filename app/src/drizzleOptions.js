import Web3 from "web3";
import PrivateStorage from "./contracts/PrivateStorage.json";

const options = {
  web3: {
    block: false,
    customProvider: new Web3("ws://localhost:8545"),
  },
  contracts: [PrivateStorage],
  events: {
    PrivateStorage: ["Broadcast"],
  },
};

export default options;
