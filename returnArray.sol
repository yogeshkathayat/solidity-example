pragma solidity ^0.4.11;

contract ArrayOfBytes32 {
    address creator;
    bytes32[5] bytesArray; // size must be fixed

    function ArrayRR() 
    {
        creator = msg.sender;
        uint8 x = 0;
        while(x < bytesArray.length)
        {
            bytesArray[x] = "myString"; 
            x++;
        }
       
    }

    function getArray() constant returns (bytes32[5])
    {
        return bytesArray;
    }

    function getValue(uint8 x) constant returns (bytes32)
    {
        return bytesArray[x];
    }
}
