pragma solidity ^0.5.16;

contract ChainList {
    //state variables
    address payable seller;
    address payable buyer;
    string name;
    string description;
    uint256 price;

    event LogSellArticle(address indexed _seller, string _name, uint256 _price);

    event LogBuyArticle(
        address indexed _seller,
        address indexed _buyer,
        string _name,
        uint256 _price
    );

    function sellArticle(
        string memory _name,
        string memory _description,
        uint256 _price
    ) public {
        seller = msg.sender;
        name = _name;
        description = _description;
        price = _price;

        emit LogSellArticle(seller, name, price);
    }

    function getArticle()
        public
        view
        returns (
            address _seller,
            address _buyer,
            string memory _name,
            string memory _description,
            uint256 _price
        )
    {
        return (seller, buyer, name, description, price);
    }

    function buyArticle() public payable {
        require(seller != address(0x0));
        require(buyer == address(0x0));
        require(msg.sender != seller);
        require(msg.value == price);
        buyer = msg.sender;
        seller.transfer(msg.value);
        emit LogBuyArticle(seller, buyer, name, price);
    }
}
