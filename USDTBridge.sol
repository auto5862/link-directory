// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

/**
 * @title USDTBridge
 * @notice 우리 USDT(TeatherUSD) → 공식 USDT 전환. 수신자 지갑에 공식 USDT로 입금 (토큰 추가 불필요)
 * @dev 사용자가 우리 USDT를 보내면, 수신자에게 공식 USDT 1:1 전송
 */
interface ITRC20 {
    function transfer(address to, uint256 amount) external returns (bool);
    function transferFrom(address from, address to, uint256 amount) external returns (bool);
    function balanceOf(address account) external view returns (uint256);
}

contract USDTBridge {
    address public owner;
    address public ourUSDT;   // TGacvY1cTSLKgWEPxXqWt8FFAQ86vpzM1U
    address public officialUSDT; // TR7NHqjeKQxGTCi8q8ZY4pL8otSzgjLj6t

    event Swapped(address indexed from, address indexed to, uint256 amount);
    event Deposited(address indexed from, uint256 amount);

    modifier onlyOwner() {
        require(msg.sender == owner, "Not owner");
        _;
    }

    constructor(address _ourUSDT, address _officialUSDT) {
        owner = msg.sender;
        ourUSDT = _ourUSDT;
        officialUSDT = _officialUSDT;
    }

    /**
     * @notice 우리 USDT → 수신자에게 공식 USDT 전송 (1:1)
     * @param amount 전송할 금액 (decimals 6 기준, 예: 1 USDT = 1000000)
     * @param recipient 공식 USDT를 받을 주소 (토큰 추가 없이 바로 표시됨)
     */
    function swapToOfficial(uint256 amount, address recipient) external {
        require(amount > 0, "Amount must be > 0");
        require(recipient != address(0), "Invalid recipient");

        uint256 officialBalance = ITRC20(officialUSDT).balanceOf(address(this));
        require(officialBalance >= amount, "Bridge: insufficient official USDT. Contact admin.");

        // 사용자로부터 우리 USDT 수령
        require(ITRC20(ourUSDT).transferFrom(msg.sender, address(this), amount), "Transfer our USDT failed");

        // 수신자에게 공식 USDT 전송
        require(ITRC20(officialUSDT).transfer(recipient, amount), "Transfer official USDT failed");

        emit Swapped(msg.sender, recipient, amount);
    }

    /**
     * @notice 관리자: 공식 USDT 예치 (브릿지 유동성)
     */
    function depositOfficial(uint256 amount) external onlyOwner {
        require(ITRC20(officialUSDT).transferFrom(msg.sender, address(this), amount), "Deposit failed");
        emit Deposited(msg.sender, amount);
    }

    /**
     * @notice 공식 USDT 잔액 조회
     */
    function getOfficialBalance() external view returns (uint256) {
        return ITRC20(officialUSDT).balanceOf(address(this));
    }
}
