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