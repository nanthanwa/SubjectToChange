const PrivateStorage = artifacts.require("PrivateStorage");

module.exports = function (deployer) {
  deployer.deploy(PrivateStorage);
};
