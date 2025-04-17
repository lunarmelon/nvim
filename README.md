# My Neovim configuration

My Neovim configuration [based on this template](https://github.com/hendrikmi/neovim-kickstart-config)

## Installation

- Backup your current configuration

```bash
# Required
mv ~/.config/nvim{,.bak}

# Optional but recommended
mv ~/.local/share/nvim{,.bak}
mv ~/.local/state/nvim{,.bak}
mv ~/.cache/nvim{,.bak}

```

- Clone the repo

```bash
git clone https://github.com/lunarmelon/nvim.git ~/.config/nvim

```

- Remove the `.git` folder so you can add it to your own repo later

```bash
rm -rf ~/.config/nvim/.git

```

Keep in mind that this repo is for the configuration of Neovim alone. If you want to check my full dotfiles, you can check them [here](https://github.com/lunarmelon/dotfiles.git)
