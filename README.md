# 🤖 Neovim Config 🤖
![nvim in action](https://raw.githubusercontent.com/TaureHorn/nvim_config/main/nvim_config-screenshot.jpg)
My first attempt at putting together a config for neovim as a fully functional IDE.

Initially followed a guide on youtube by [ThePrimeagen](https://www.youtube.com/watch?v=w7i4amO_zaE&t=151s&pp=ygUNdGhlcHJpbWVhZ2VuIA%3D%3D) and mixed in with some plugins in other popular out of the box nvim configs like NvChad and CosmicNvim.

Mostly just posting it here to have a nice backup option :)

## Installation
Install this repo into local config
```
git clone https://github.com/TaureHorn/nvim_config/ ~/.config/nvim
```

Install [Packer.nvim](https://github.com/wbthomason/packer.nvim) using the provider one liner which should look something like this;
```
git clone --depth 1 https://github.com/wbthomason/packer.nvim\
 ~/.local/share/nvim/site/pack/packer/start/packer.nvim
 ```

Sync and install plugins with packer in neovim. First open the packer file in neovim.
```
nvim ~/.config/nvim/lua/silence/packer.lua
```
With packer.lua open in neovim `:so` and then `:PackerSync` and you're done!
