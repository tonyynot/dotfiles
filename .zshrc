###### Tony's Cool Zoomer Shell config  ######
#
#
#       ̿̿ ̿'̿'\̵͇̿̿\з= ( ▀ ͜͞ʖ▀) =ε/̵͇̿̿/’̿’̿ ̿ ̿̿ ̿̿ ̿̿
#
#	   bash boomers BTFO
#
#############################################

#ufetch
neofetch

HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
bindkey -v
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename '/home/tsar/.zshrc'
autoload -Uz compinit
compinit

# End of lines added by compinstall
#
# Prompt ZSH
autoload -U promptinit; promptinit
prompt spaceship


##### Aliases for the Zoomer shell #####
#--------------------------------------#

## dotfiles ##
alias v='sudo -E vim'
alias zshconfig='v ~/.zshrc'
alias bootstrap='v ~/.config/bootstrap.sh'
alias termconfig='v ~/.config/alacritty/alacritty.yml'
alias zsource='source ~/.zshrc'
alias vimconfig='v ~/.vimrc'
alias dotfiles='/usr/bin/git --git-dir=$HOME/.dotfiles --work-tree=$HOME'

## Package management ##
alias p='sudo pacman -S'
alias y='yay -S'
alias pr='sudo pacman -Rs'
alias pu='sudo pacman -Syu'
	
## Git ##
alias gp='git add . && git commit -m "auto push" && git push'
alias dp='dotfiles add . && dotfiles commit -m "auto push" && dotfiles push'
alias ds='dotfiles status'
alias gs='git status'

## i3 ##
alias i3-config='v ~/.config/i3/config'
alias i3-logout='i3-msg exit'
alias i3-reload='i3-msg reload'
alias newlock='betterlockscreen -u ~/Pictures/Wallpaper/*'

## System ##
alias monitors='xrandr -q | grep " connected" | cut -d ' ' -f1'
alias vpn='sudo protonvpn c -f'

## Curls ##
alias weather='curl http://wttr.in/allentown'
alias corunka='curl https://corona-stats.online/states/us'
alias moon='curl wittr.in/moon'
alias crypto='curl rate.sx'
alias btc='curl rate.sx/btc'
alias eth='curl rate.sx/eth'

alias todo='v todo.txt'
