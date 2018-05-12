#!/bin/bash

sudo curl https://sh.rustup.rs -sSf | sh

sudo apt install pkg-config libssl-dev cmake

cargo install glit exa
