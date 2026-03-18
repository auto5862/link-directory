// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

/**
 * @title MultiTokenMixer
 * @notice USDT + 우리 토큰 같이 섞여 있는 믹서 (한 컨트랙트)
 */
contract MultiTokenMixer {
    uint256 public constant FIXED_AMOUNT = 1000 * 10**6;

    // 토큰 주소들 (공식 USDT, 우리 토큰)
    address[] public tokens;

    // 토큰별: 비밀해시 → 예치 여부
    mapping(address => mapping(bytes32 => bool)) public commitments;

    // 토큰별: 사용됨 (1 deposit = 1 withdraw)
    mapping(address => mapping(bytes32 => bool)) public usedCommitments;

    // 토큰별: 풀 잔액
    mapping(address => uint256) public poolBalance;

    event Deposit(address indexed token, address indexed from, bytes32 indexed commitment);
    event Withdraw(address indexed token, address indexed to, bytes32 indexed nullifier);

    constructor(address _token1, address _token2) {
        require(_token1 != address(0) && _token2 != address(0), "Invalid token");
        tokens.push(_token1);
        tokens.push(_token2);
    }

    /**
     * @notice 예치 — 어떤 토큰인지 + 비밀해시
     */
    function deposit(address _token, bytes32 _commitment) external {
        require(_isValidToken(_token), "Invalid token");
        require(!commitments[_token][_commitment], "Already used");

        commitments[_token][_commitment] = true;
        poolBalance[_token] += FIXED_AMOUNT;

        _transferIn(_token, msg.sender, FIXED_AMOUNT);

        emit Deposit(_token, msg.sender, _commitment);
    }

    /**
     * @notice 출금 — 어떤 토큰인지 + 비밀값 + 수신 주소
     */
    function withdraw(address _token, bytes32 _secret, address _recipient) external {
        require(_isValidToken(_token), "Invalid token");

        bytes32 commitment = keccak256(abi.encodePacked(_secret, _token));
        bytes32 nullifier = keccak256(abi.encodePacked(_secret, _token));

        require(commitments[_token][commitment], "Invalid");
        require(!usedCommitments[_token][commitment], "Already withdrawn");

        usedCommitments[_token][commitment] = true;
        poolBalance[_token] -= FIXED_AMOUNT;

        _transferOut(_token, _recipient, FIXED_AMOUNT);

        emit Withdraw(_token, _recipient, nullifier);
    }

    function getPoolBalance(address _token) external view returns (uint256) {
        return poolBalance[_token];
    }

    function _isValidToken(address _token) internal view returns (bool) {
        for (uint256 i = 0; i < tokens.length; i++) {
            if (tokens[i] == _token) return true;
        }
        return false;
    }

    function _transferIn(address _token, address from, uint256 amount) internal {
        (bool success, ) = _token.call(
            abi.encodeWithSignature("transferFrom(address,address,uint256)", from, address(this), amount)
        );
        require(success, "Transfer failed");
    }

    function _transferOut(address _token, address to, uint256 amount) internal {
        (bool success, ) = _token.call(
            abi.encodeWithSignature("transfer(address,uint256)", to, amount)
        );
        require(success, "Transfer failed");
    }
}
