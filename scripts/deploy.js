const hre = require("hardhat");
const { ethers } = hre;

async function main() {
  const accounts = await ethers.getSigners();
  const minter = accounts[0];
  const buyer = accounts[1];
  console.log('minter accounts', minter.address);
  console.log('buyer accounts', buyer.address);

  const salaryInfo = await ethers.getContractFactory("SalaryInfo")
  // const erc20 = await ethers.get("SalaryInfo")
  const contract = await salaryInfo.connect(minter).deploy();
  console.log("contract address: ", contract.target);
  // console.log("owner:", owner);
  // console.log("address:", address);
}

// We recommend this pattern to be able to use async/await everywhere
// and properly handle errors.
main().catch((error) => {
  console.error(error);
  process.exitCode = 1;
});
