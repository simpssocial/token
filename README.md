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

## Steps

1. deploy Token.sol
    - change names in all contracts
    - change symbol and name
    - remove burnFrom function
2. Generate new addresses - simps-websockets/uniswap
3. Update addresses in automated market maker
    - delete all .env in vercel
    - upload new list of address in vercel .env.addresses
4. Distribut eth to snipe wallets
    - change private key in .env for simps-websocket
    - change public and private keys of snipes

5. Update all snipe servers
    - send new version of .env with new token address and public / private keys
    - ssh to each server. pm2 delete all; cd uniswap; pm2 start ecosystem-uniswap-websocket.config.js

400_000_000
400000000 lp
3eth == buys you 290m = 110m left in pool


4eth === buys you 330m = 70m left in pool

2.5% = 0.56eth

3eth pool = 0.56842 sell pressure
4eth pool = 1 eth of sell pressure

0.5e = 13,273,491
0.5e = 10,417,347

