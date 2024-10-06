## Foundry

**Foundry is a blazing fast, portable and modular toolkit for Ethereum application development written in Rust.**

Foundry consists of:

-   **Forge**: Ethereum testing framework (like Truffle, Hardhat and DappTools).
-   **Cast**: Swiss army knife for interacting with EVM smart contracts, sending transactions and getting chain data.
-   **Anvil**: Local Ethereum node, akin to Ganache, Hardhat Network.
-   **Chisel**: Fast, utilitarian, and verbose solidity REPL.

## Documentation

https://book.getfoundry.sh/

## Usage

### Build

```shell
$ forge build
```

### Test

```shell
$ forge test
```

### Format

```shell
$ forge fmt
```

### Gas Snapshots

```shell
$ forge snapshot
```

### Anvil

```shell
$ anvil
```

### Deploy

```shell
$ forge script script/Counter.s.sol:CounterScript --rpc-url <your_rpc_url> --private-key <your_private_key>
```

### Cast

```shell
$ cast <subcommand>
```

### Help

```shell
$ forge --help
$ anvil --help
$ cast --help
```

0x36C02dA8a0983159322a80FFE9F24b1acfF8B570

It's fine that we're publishing urls and account keys in .env.example because those are test accounts with no actual real money.

### Command
forge create \
  --rpc-url $your_rpc_url \
  --private-key $your_private_key \
  src/MyNFT.sol:MyNFT \
  --constructor-args $your_address

forge create --rpc-url $your_rpc_url --private-key $your_private_key src/MyNFT.sol:MyNFT --constructor-args $your_address
forge create --rpc-url 127.0.0.1:8545 --private-key 0xac0974bec39a17e36ba4a6b4d238ff944bacb478cbed5efcae784d7bf4f2ff80 src/MyNFT.sol:MyNFT --constructor-args 0xf39Fd6e51aad88F6F4ce6aB8827279cffFb92266
your_rpc_url=127.0.0.1:8545
your_private_key=0xac0974bec39a17e36ba4a6b4d238ff944bacb478cbed5efcae784d7bf4f2ff80
your_address=0xf39Fd6e51aad88F6F4ce6aB8827279cffFb92266
deployed to: 
0xe7f1725E7734CE288F8367e1Bb143E90bb3F0512
cast send <CONTRACT_ADDRESS> "safeMint(address,string,string)" <TO_ADDRESS> <FIRST_NAME> <SECOND_NAME> --private-key <PRIVATE_KEY> --rpc-url http://127.0.0.1:8545

cast send 0xe7f1725E7734CE288F8367e1Bb143E90bb3F0512 "safeMint(address,string,string)" 0xf39Fd6e51aad88F6F4ce6aB8827279cffFb92266 "Alice" "Billy" --private-key 0xac0974bec39a17e36ba4a6b4d238ff944bacb478cbed5efcae784d7bf4f2ff80 --rpc-url http://127.0.0.1:8545
