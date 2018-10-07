# 0xd3bu6
live solidity debugging

Debugging solidity sucks. The feedback loop is very slow. Let's make that better. This project is meant to add a read-only REPL to your Solidity code. It works by monkey-patching the EVM (ethereumjs-vm) to emit debug events and ganache-core to interpret them in a REPL.

## How to use
