udemy.com/course/getting-started-with-ethereum-solidity-development

truffle init
truffle develop
truffle develop --log

migrate --compile-all --reset
migrate

Greetings.address //Kiem tra adress
`web3.eth.accounts` doi thanh `web3.eth.getAccounts()` //Interact with eth node
`web3.eth.getAccounts().then(function(acc){ accounts = acc })` // Gan bien accounts
`Greetings.deployed().then(function(instance){app = instance;})` //Get instance of function exposed by contracts
`app.setGreetings("Hello Dũng Bùi",{from: accounts[0]})`
`truffle migrate --compile-all --reset --network ganache` // Deploy Contract to ganache ==> Migrate network to Ganache
`truffle console --network ganache` //linked to network called ganache
