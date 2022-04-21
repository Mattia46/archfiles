# Arch dotfiles for config

### Dependencies
rsync git curl alacritty dunst neovim vim picom rofi rofi-emoji rofi-calc zsh nitrogen redshift openssh xclip i3
firefox noto-fonts papirus-icon-theme scrot 

### Steps
* Install Arch with xorg env
* Install above deps

### From terminal
```bash
cd $HOME
git clone --separate-git-dir=$HOME/.archfiles https://github.com/mattia46/archfiles.git tmpdotfiles
rsync --recursive --verbose --exclude '.git' tmpdotfiles/ $HOME/
rm -r tmpdotfiles

alias dots='/usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'
dots config --local status.showUntrackedFiles no
```

### To expand:
```
# dwm: Window Manager
git clone --depth=1 https://github.com/Bugswriter/dwm.git ~/.local/src/dwm
sudo make -C ~/.local/src/dwm install

# st: Terminal
git clone --depth=1 https://github.com/Bugswriter/st.git ~/.local/src/st
sudo make -C ~/.local/src/st install

# dmenu: Program Menu
git clone --depth=1 https://github.com/Bugswriter/dmenu.git ~/.local/src/dmenu
sudo make -C ~/.local/src/dmenu install

# dmenu: Dmenu based Password Prompt
git clone --depth=1 https://github.com/ritze/pinentry-dmenu.git ~/.local/src/pinentry-dmenu
sudo make -C ~/.local/src/pinentry-dmenu clean install

# dwmblocks: Status bar for dwm
git clone --depth=1 https://github.com/bugswriter/dwmblocks.git ~/.local/src/dwmblocks
sudo make -C ~/.local/src/dwmblocks install

# pikaur: AUR helper
git clone https://aur.archlinux.org/pikaur.git
cd pikaur
makepkg -fsri
cd
pikaur -S libxft-bgra-git yt-dlp-drop-in
mkdir dl dox imp music pix pub code
```