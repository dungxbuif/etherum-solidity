var ChainList = artifacts.require("./ChainList.sol");

//test suitee 
contract("ChainList", function (accounts) {
   it("should be init with empty values", function () {
      return ChainList.deployed().then(function (instance) {
         return instance.getArticle();
      }).then(function (data) {
         asseert.equal(data[0], 0x0, "seller must be empty")
         asseert.equal(data[1], "", "article name must be empty")
         asseert.equal(data[2], "", "article description must be empty");
      })
   })
});