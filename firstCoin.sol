pragma solidity >=0.4.0 <0.6.0;

contract yogacoin{
     
    address public minter;
    
    mapping(address=>uint) public balances;

    event sent(address from, address to, uint amount);
    
    constructor() public{
        minter = msg.sender;
    }

    function mint(address reciever, uint amount) public{
        require(msg.sender == minter,"Invalid sender.");
        require(amount < 1e60,"Amount should be less then 1e60.");
        balances[reciever] += amount;
        balances[msg.sender] -= amount;
    }

    function transfer(address reciever, uint amount) public{
        require(balances[msg.sender] >= amount,"Insufficient balance.");
        balances[msg.sender] -= amount;
        balances[reciever] += amount;
        emit sent(msg.sender,reciever,amount);
    }
         
}