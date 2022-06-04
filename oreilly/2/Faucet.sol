// wersja kompilatora
pragma solidity ^0.4.19;

contract Faucet {
    // przekazuje ethery na dowollny adres
    function  withdraw(uint withdraw_amount) public {
        // ograniczenie kwoty
        require(withdraw_amount < 10000000000000000);

        // przekazywanie srodkow na adres
        msg.sender.transfer(withdraw_amount);
    }

    function () public payable {}
}