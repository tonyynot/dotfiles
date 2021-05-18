### Big brain script to install arch packages. #

echo '༼ つ ◕_◕ ༽つ Updating your system. Go grab a drink, this may take a while.'

## Update packages
sudo pacman -Syyu

echo '༼ つ ͡° ͜ʖ ͡° ༽つ System update complete. Now installing your packages.'

## Developer tools
sudo pacman -S --needed git base-devel --noconfirm
sudo pacman -S vim --noconfirm
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
sudo vim +PluginInstall +qall

## Fonts
sudo pacman -S noto-fonts --noconfirm
sudo pacman -S ttf-hack --noconfirm
sudo pacman -s ttf-fira-code --noconfirm
sudo pacman -S noto-fonts-emoji --noconfirm
sudo pacman -S nerd-fonts-noto-sans-mono nerd-fonts-terminus nerd-fonts-roboto-mono --noconfirm
sudo pacman -s ttf-font-awesome --noconfirm
sudo pacman -s papirus-icon-theme --noconfirm

## System tools
sudo pacman -S gparted --noconfirim
sudo pacman -S cmake --noconfirm
sudo pacman -S neofetch --noconfirm
sudo pacman -S picom --noconfirm
sudo pacman -S lxappearance --noconfirm
sudo pacman -S flameshot --noconfirm
sudo pacman -S imagemagick --noconfirm

## Productivity
sudo pacman -S libreoffice-still --noconfirm
sudo pacman -S thunderbird --noconfirm
sudo pacman -S virtualbox linux59-virtualbox-guest-modules linux59-virtualbox-host-modules virtualbox-guest-utils virtualbox-guest-dkms virtualbox-host-dkms --noconfirm

## Terminal Emulator with ZSH
sudo pacman -S alacritty --noconfirm
sudo pacman -S zsh zsh-completions --noconfirm
git clone https://github.com/denysdovhan/spaceship-prompt.git "$ZSH_CUSTOM/themes/spaceship-prompt" --depth=1 && cd spaceship-prompt && makepkg -si && cd .. && rm -Rf spaceship-prompt-git

## yay package installer (Arch User Repo)
git clone https://aur.archlinux.org/yay.git && cd yay && makepkg -si --noconfirm && cd .. && rm -Rf yay

## Browser install
yay -S brave-bin
suo pacman -S firefox

## Multimedia
sudo pacman -S vlc --noconfirm
sudo pacman -S pulseaudio --noconfirm
sudo pacman -S projectm-pulseaudio --noconfirm
sudo pacman -S qbittorrent --noconfirm
sudo pacman -S mpd mpc ncmpcpp --noconfirm

## Install Suckless software
git clone https://git.suckless.org/dmenu && cd dmenu && sudo make clean install && cd ..

## File Navigation
sudo pacman -S ranger --noconfirm
sudo pacman -S pcmanfm --noconfirm

## X utilities
sudo pacman -S xorg-xset xorg-xrandr xorg-xpdyinfo --noconfirm 

## Security / Privacy
sudo pacman -S keepassxc --noconfirm
sudo pacman -S nextcloud --noconfirm
sudo pacman -S nextcloud-client --noconfirm
sudo pacman -S openvpn --confirm
yay -S proton-vpn-cli-git
yay -S ledger-live

## Communication
sudo pacman -S discord --noconfirm
sudo pacman -S telegram --noconfirm
sudo pacman -S nicotine+ --noconfirm
yay -S telegram-desktop-bin --noconfirm #This still has confirmation. Look into yay noconfirm tags

## Install the Bible
git clone https://github.com/lukesmithxyz/kjv.git && cd kjv && sudo make install && cd .. && rm -Rf kjv

## i3WM Config
## *Imports custom config files from dotfiles directory
sudo pacman -S i3-wm i3-gaps i3status i3lock --noconfirm 
yay -S autotiling
yay -S skippy-xd-git
yay -S i3blocks-git
sudo git clone https://github.com/vivien/i3blocks-contrib ~/.config/i3blocks && cd !$ && cp config.example config && cd ~/
sudo pacman -S feh --noconfirm
yay -S betterlockscreen && betterlockscreen -u ~/Pictures/Wallpaper
sudo pacman -S rofi --noconfirm
echo "Installing dotfiles for you based configs, sir."

# This script will automatically install configs
git clone --bare https://github.com/tonyynot/dotfiles.git $HOME/.dotfiles
function dotfiles {
       /usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME $@
   }
mkdir -p .dotfiles-backup
dotfiles checkout
if [ $? = 0 ]; then
	echo "Checked out dotfiles.";
	else
	
        echo "Backing up pre-existing dot files.";
	dotfiles checkout 2>&1 | egrep "\s+\." | awk {'print $1'} | xargs -I{} mv {} .dotfiles-backup/{}
fi;
dotfiles checkout
dotfiles config status.showUntrackedFiles no

echo 'Package installation complete. Enjoy your system, King.'
echo '
⊂_ヽ
　 ＼＼
　　 ＼( ͡° ͜ʖ ͡°)
　　　 >　⌒ヽ
　　　/ 　 へ＼
　　 /　　/　＼＼
　　 ﾚ　ノ　　 ヽ_つ
　　/　/
　 /　/|
  (　(ヽ
　|　|、＼
　| 丿 ＼ ⌒)
　| |　　) /
ノ )　　Lﾉ
(_／'
