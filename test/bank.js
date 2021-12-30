const Bank = artifacts.require("Bank.sol");

contract("Bank", () => {
    it("checkAssets" , async () => {
        const instance = await Bank.deployed()
        const assets = await instance.checkAssets()
        assert.equal(assets , 0)
    })
})