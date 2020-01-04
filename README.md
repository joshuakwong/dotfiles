# Dotfiles

### Usage
```
./install
```

### Files
1. `.zshrc`
2. `.vimrc` and `.vim/`
3. `.tmux/`
    - I didn't write tmux conf, I cloned it from <https://github.com/gpakosz/.tmux>, when the script runs it tries to fork the latest version, if it exists it will overwrite the current version, otherwise it will just use whatever version I last cloned.
    - I'm a lazy bastard and refuse to deal with git submodules so I removed the `.git/` file from `.tmux/`, I have no intention to take credit for the tmux conf, please let me know if you do not like it, I will remove it at once.
