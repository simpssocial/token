## SIMP token

### install openzeppelin

```shell
$ forge install Openzeppelin/openzeppelin-contracts@v5.0.1
$ anvil --fork-url https://mainnet.infura.io/v3/3a68ccfaf52f4bee9ccb742b030de247
$ anvil --fork-url https://mainnet.base.org	
$ anvil --fork-url https://sepolia.base.org
$ anvil --fork-url https://gateway.tenderly.co/public/sepolia
```


### Deploy to anvil

```shell
$ source .env; CHAIN=anvil forge script script/TokenDeploy.s.sol --rpc-url $RPC_URL_ANVIL --broadcast --chain-id 31337 -vvvv

$ source .env; CHAIN=anvil forge script script/TokenSend.s.sol --rpc-url $RPC_URL_ANVIL --broadcast --chain-id 31337 -vvvv

$ source .env; CHAIN=anvil forge script script/TokenRenounce.s.sol --rpc-url $RPC_URL_ANVIL --broadcast --chain-id 31337 -vvvv

$ source .env; CHAIN=anvil forge script script/DisperseTokens.s.sol --rpc-url $RPC_URL_ANVIL --broadcast --chain-id 11155111 --verify -vvvv
```

### Deploy to base

```shell
$ source .env; CHAIN=base forge script script/TokenDeploy.s.sol --rpc-url $RPC_URL_BASE --broadcast --chain-id 8453 --verify -vvvv

$ source .env; CHAIN=base forge script script/TokenRenounce.s.sol --rpc-url $RPC_URL_BASE --broadcast --chain-id 8453 -vvvv
```

### Deply to base sepolia

```shell
$ source .env; CHAIN=base-sepolia forge script script/TokenDeploy.s.sol --rpc-url $RPC_URL_BASE_SEPOLIA --broadcast --chain-id 84532 --verify -vvvv

$ source .env; CHAIN=base-sepolia forge script script/TokenSend.s.sol --rpc-url $RPC_URL_BASE_SEPOLIA --broadcast --chain-id 84532 --verify -vvvv

$ source .env; CHAIN=base-sepolia forge script script/TokenRenounce.s.sol --rpc-url $RPC_URL_BASE_SEPOLIA --broadcast --chain-id 84532 -vvvv
```

### Deply to sepolia

```shell
$ source .env; CHAIN=sepolia forge script script/TokenDeploy.s.sol --rpc-url $RPC_URL_SEPOLIA --broadcast --chain-id 11155111 --verify -vvvv

$ source .env; CHAIN=sepolia forge script script/DisperseTokens.s.sol --rpc-url $RPC_URL_SEPOLIA --broadcast --chain-id 11155111 --verify -vvvv
```
