# 0xd3bu6
live solidity debugging

Debugging solidity sucks. The feedback loop is very slow. Let's make that better. This project is meant to add a read-only REPL to your Solidity code. It works by monkey-patching the EVM (ethereumjs-vm) to emit debug events and ganache-core to interpret them in a REPL.

## Installation
```bash
source install.sh
cd yourdirectoryofchoice
install_0xd3bu6
```

## How to use
Add these lines of assembly where you want to drop down into a debugger:
```
function setValue(uint _val) {
  // This assembly directive is the equivalent of a debug statement
  assembly {
    sstore(0xDE, 0xB6)
  }
  value = _val;
  otherValue += _val;
}
```

Then go ahead and debug your smart contract. This command will run a custom ganache and EVM locally and allow you to live debug your smart contract.

It will keep track of your ABI for you, and will ask you for the function you want to debug.

```bash
cd ganache-core
node debug.js path/to/contract
```

From there, you will get a custom read-only REPL in the console. You can use `web3` and a custom
`abi` object.

```
0xd3bu6( PC=176 )> help
h = help
e = eval
p = print
n = c = continue
q = quit
m = run read only contract method
Try 'web3.eth.accounts' or 'methods' or 'deployed' for your contract
0xd3bu6( PC=176 )>
```
