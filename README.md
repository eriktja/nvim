# Requirements
- nvim (https://github.com/neovim/neovim/blob/master/INSTALL.md)
- RipGrep
- NerdFont

Use :Lazy to setup

## Recommended to remove old nvim setup
```Bash
rm -rf ~/.local/share/nvim
```


# Keys
```lua
-- <C-n>         --   show neo tree
-- <C-p>         --   find files
-- <leader>ff    --   find files 
-- <leader>fg    --   grep
-- <C-n>         --   Neotree  filesystem 
-- <C-b>         --   Neotree buffers
-- <leader>g     --   Neotree git status

-- for more keys check vim-options/init.lua
```


# TMUX

Tmux plugin manager
```Bash
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
```
move .tmux.conf to home directory
Open tmux and press <prefix> + I to install plugins
