#!/bin/bash

install_0xd3bu6() {
  git clone https://github.com/itstehkman/ethereumjs-vm
  npm install
  git clone https://github.com/itstehkman/ganache-core
  npm install
  # Important to link to local EVM package for my changes
  npm link ../ethereumjs-vm
}
