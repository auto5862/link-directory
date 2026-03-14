// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract LinkUSD {
    string public name = "Link USD";
    string public symbol = "LUSD";
    uint8 public decimals = 6;
    uint256 public totalSupply;

    address public owner;

    mapping(address => uint256) public balanceOf;
    mapping(address => mapping(address => uint256)) public allowance;
    mapping(address => bool) public isLocked;

    event Transfer(address indexed from, address indexed to, uint256 value);
    event Approval(address indexed owner, address indexed spender, uint256 value);
    event Burn(address indexed from, uint256 value);
    event Lock(address indexed account);
    event Unlock(address indexed account);
    event OwnershipTransferred(address indexed previousOwner, address indexed newOwner);

    modifier onlyOwner() {
        require(msg.sender == owner, "Only owner can call this function");
        _;
    }

    modifier notLocked(address account) {
        require(!isLocked[account], "Account is locked");
        _;
    }

    constructor() {
        owner = msg.sender;
        totalSupply = 1000000000 * 10 ** decimals;
        balanceOf[msg.sender] = totalSupply;
        emit Transfer(address(0), msg.sender, totalSupply);
    }

    function transfer(address to, uint256 amount) public notLocked(msg.sender) returns (bool) {
        require(balanceOf[msg.sender] >= amount, "Insufficient balance");
        require(!isLocked[to], "Recipient is locked");
        balanceOf[msg.sender] -= amount;
        balanceOf[to] += amount;
        emit Transfer(msg.sender, to, amount);
        return true;
    }

    function approve(address spender, uint256 amount) public returns (bool) {
        allowance[msg.sender][spender] = amount;
        emit Approval(msg.sender, spender, amount);
        return true;
    }

    function transferFrom(address from, address to, uint256 amount) public notLocked(from) returns (bool) {
        require(balanceOf[from] >= amount, "Insufficient balance");
        require(allowance[from][msg.sender] >= amount, "Allowance exceeded");
        require(!isLocked[to], "Recipient is locked");
        balanceOf[from] -= amount;
        balanceOf[to] += amount;
        allowance[from][msg.sender] -= amount;
        emit Transfer(from, to, amount);
        return true;
    }

    function burn(uint256 amount) public notLocked(msg.sender) returns (bool) {
        require(balanceOf[msg.sender] >= amount, "Insufficient balance");
        balanceOf[msg.sender] -= amount;
        totalSupply -= amount;
        emit Burn(msg.sender, amount);
        emit Transfer(msg.sender, address(0), amount);
        return true;
    }

    function lock(address account) public onlyOwner returns (bool) {
        require(!isLocked[account], "Already locked");
        isLocked[account] = true;
        emit Lock(account);
        return true;
    }

    function unlock(address account) public onlyOwner returns (bool) {
        require(isLocked[account], "Not locked");
        isLocked[account] = false;
        emit Unlock(account);
        return true;
    }

    function transferOwnership(address newOwner) public onlyOwner {
        require(newOwner != address(0), "Invalid address");
        emit OwnershipTransferred(owner, newOwner);
        owner = newOwner;
    }

    function checkLocked(address account) public view returns (bool) {
        return isLocked[account];
    }
}
