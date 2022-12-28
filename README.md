# Neovim setup, based on theprimeagen's setup

Replaced fugitive with lazygit.

## Install

- Clone repo in ~/.config as `nvim` dir.
- Install packer with `git clone --depth 1 https://github.com/wbthomason/packer.nvim\
 ~/.local/share/nvim/site/pack/packer/start/packer.nvim`
- Open nvim folder with neovim. Here you will get errors for packer not installed, press `q`.
- Source `:so` file - `lua/abhinav/packer.lua` and run `:PackerSync`.
- Restart nvim.
