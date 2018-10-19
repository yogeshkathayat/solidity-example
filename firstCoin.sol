pragma solidity >=0.4.0 <0.6.0;

contract Firstcoin{
     
    address public owner;
    
    mapping(address=>uint) public balances;

    event sent(address from, address to, uint amount);
    
    constructor() public{
        owner = msg.sender;
    }

    function transfer(address reciever, uint amount) public{
        require(msg.sender == owner,"Invalid sender.");
        require(amount < 1e60,"Amount should be less then 1e60.");
        balances[reciever] += amount;
        balances[msg.sender] -= amount;
    }

    function transferFrom(address reciever, uint amount) public{
        require(balances[msg.sender] >= amount,"Insufficient balance.");
        balances[msg.sender] -= amount;
        balances[reciever] += amount;
        emit sent(msg.sender,reciever,amount);
    }
         
}