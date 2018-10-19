pragma solidity >=0.4.0 <0.6.0;
contract basiccontract{
    string public name;
    
    function set(string x) public {
        name = x;
    }

    function get() public view returns (string) {
        return name;
    }
}