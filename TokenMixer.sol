// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

/**
 * @title TokenMixer
 * @notice 믹싱 기능 — 예치(deposit) 후 다른 주소로 출금(withdraw)
 * @dev 토큰 주소를 받아 해당 TRC20 토큰 믹싱
 */
contract TokenMixer {
    // 고정 금액 (decimals 18 기준 1000개 — USDT TeatherUSD)
    uint256 public constant FIXED_AMOUNT = 1000 * 10**18;

    // 토큰 인터페이스
    address public token;

    // commitment(비밀 해시) → 예치 여부
    mapping(bytes32 => bool) public commitments;

    // nullifier(일회용) → 출금 여부 (이중 출금 방지)
    mapping(bytes32 => bool) public nullifiers;

    // 사용된 commitment (1 deposit = 1 withdraw)
    mapping(bytes32 => bool) public usedCommitments;

    // 풀 잔액
    uint256 public poolBalance;

    event Deposit(address indexed from, bytes32 indexed commitment);
    event Withdraw(address indexed to, bytes32 indexed nullifier);

    constructor(address _token) {
        require(_token != address(0), "Invalid token");
        token = _token;
    }

    /**
     * @notice 예치 — 비밀 해시(commitment)와 함께 토큰 입금
     * @param _commitment keccak256(abi.encodePacked(secret)) — 사용자가 비밀값으로 생성
     */
    function deposit(bytes32 _commitment) external {
        require(!commitments[_commitment], "Commitment already used");
        commitments[_commitment] = true;

        _transferIn(msg.sender, FIXED_AMOUNT);
        poolBalance += FIXED_AMOUNT;

        emit Deposit(msg.sender, _commitment);
    }

    /**
     * @notice 출금 — nullifier와 수신 주소로 토큰 인출
     * @param _secret 예치 시 사용한 비밀값 (commitment = keccak256(abi.encodePacked(_secret)))
     * @param _recipient 수신 주소
     */
    function withdraw(bytes32 _secret, address _recipient) external {
        bytes32 commitment = keccak256(abi.encodePacked(_secret));
        bytes32 nullifier = keccak256(abi.encodePacked(_secret));

        require(commitments[commitment], "Invalid commitment");
        require(!usedCommitments[commitment], "Already withdrawn");
        require(!nullifiers[nullifier], "Nullifier already used");

        usedCommitments[commitment] = true;
        nullifiers[nullifier] = true;
        poolBalance -= FIXED_AMOUNT;

        _transferOut(_recipient, FIXED_AMOUNT);

        emit Withdraw(_recipient, nullifier);
    }

    /**
     * @notice 풀 잔액 조회
     */
    function getPoolBalance() external view returns (uint256) {
        return poolBalance;
    }

    function _transferIn(address from, uint256 amount) internal {
        (bool success, ) = token.call(
            abi.encodeWithSignature("transferFrom(address,address,uint256)", from, address(this), amount)
        );
        require(success, "Transfer failed");
    }

    function _transferOut(address to, uint256 amount) internal {
        (bool success, ) = token.call(
            abi.encodeWithSignature("transfer(address,uint256)", to, amount)
        );
        require(success, "Transfer failed");
    }
}
