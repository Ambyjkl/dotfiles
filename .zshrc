bindkey -e
bindkey "^[[H" beginning-of-line
bindkey "^[[F" end-of-line
bindkey "^[[3~" delete-char
bindkey "^[[1;3D" backward-word
bindkey "^[[1;5D" backward-word
bindkey "^[[1;3C" forward-word
bindkey "^[[1;5C" forward-word
bindkey "^[[3;3~" kill-word

altup() {
  printf '\ncd ..\n\n\n'
  cd ..
  zle reset-prompt
}
zle -N altup
altleft() {
  printf '\ncd -\n\n\n'
  cd -
  zle reset-prompt
}
zle -N altleft
bindkey "^[[1;3A" altup
# bindkey "^[[1;3C" "alt+right"
bindkey "^[[1;3D" altleft
# End of lines configured by zsh-newuser-install

# Source Prezto.
#if [[ -s "${ZDOTDIR:-$HOME}/.zprezto/init.zsh" ]]; then
#  source "${ZDOTDIR:-$HOME}/.zprezto/init.zsh"
#fi

# Customize to your needs...
#files=($HOME/Documents/test/text/*)

# alias a='aria2c'
alias nig='sudo npm i -g'
alias lll='ls -la | sort -k5hr'
alias cast='castnow --address 192.168.2.23'
alias reflect='sudo reflector --latest 30 --number 20 --sort rate --save /etc/pacman.d/mirrorlist'
alias pup='sudo pacman -Sy && sudo powerpill -Su --noconfirm && pikaur -Su --noedit --noconfirm'
alias fluidgm='fluidsynth -a pulseaudio -m alsa_seq -l -i /usr/share/soundfonts/gm.sf2'
alias fluidg='fluidsynth -a pulseaudio -m alsa_seq -l -i /usr/share/soundfonts/gbfont.sf2'
alias fluidsgm='fluidsynth -a pulseaudio -m alsa_seq -l -i /usr/share/soundfonts/SGM-V2.01.sf2'
alias fluidf='fluidsynth -a pulseaudio -m alsa_seq -l -i /usr/share/soundfonts/FluidR3_GM2-2.sf2'
alias unsilence='ffmpeg -af silenceremove=1:0:-50dB -i'
alias pokeyman='cd /home/ambareesh/Documents/Pokemon/PokemonGo-Map/ && python2 runserver.py -a ptc -u TheAzerty -p qwerty1234 -l "19.0043366,73.0158238" -st'
alias pacc='sudo pacman -Sc --noconfirm'
alias rg='rg -S'
alias reindex="balooctl clear * && balooctl index *"
alias ya="yarn add"
alias yad="yarn add --dev"
alias yd="yarn dev"
alias yl="yarn lint"
alias ylf="yarn lint:fix"
alias p='pacaur --noedit'
alias pp='pacaur --noedit --noconfirm'
alias npv='mpv --audio-pitch-correction=no -speed'
alias nano='nano -m'
alias j='fasd_cd -i'
alias git='noglob git'
alias packageSrc='archive marmo.zip src'
alias f.="find . -name"

export VISUAL=vim
export EDITOR="$VISUAL"
export SVN_EDITOR=vim
export $(dbus-launch)
export LESS=-asrRix8
export PATH="$PATH:~/.npm-global/bin:$HOME/.bin"
export AURDEST="/tmp/pacaur"

source /usr/share/doc/pkgfile/command-not-found.zsh

#cat "${files[RANDOM % ${#files[@]}]}"
#export CC=/usr/bin/gcc-5
#export CXX=/usr/bin/g++-5
export MOZ_USE_OMTC=1
setopt PROMPT_SUBST
fpath=(~/.zsh $fpath)
source <(antibody init)
antibody bundle < ~/.zsh_plugins.txt
EMOJI_CLI_KEYBIND='^q'
ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE='fg=yellow'
ZSH_AUTOSUGGEST_USE_ASYNC=y
setopt share_history
zdouble_dot_expand='true'
alias k="k -h"
alias ppp='pp -S --dbonly'
alias rgtk="GDK_DPI_SCALE= GDK_SCALE="
alias c="code ."
alias nuxt='node $(npm bin)/nuxt'
alias update-grub='grub-mkconfig -o /boot/grub/grub.cfg'
alias memgg='sudo swapoff -a && ~/memory'
alias zathura='GDK_SCALE=1 GDK_DPI_SCALE=1 zathura'
alias ma='mpv --no-video'
alias k=killall

export DBUS_SESSION_BUS_ADDRESS="unix:path=/run/user/$(id -u $NR_USERNAME)/bus"
export MAKEFLAGS="-j$(nproc)"
fortune | cowsay | ponysay
PURE_PROMPT_SYMBOL=λ
PURE_GIT_UNTRACKED_DIRTY=0
zstyle ':completion:*:*:git:*' script /usr/share/git/completion/git-completion.zsh

# OPAM configuration
. /home/amby/.opam/opam-init/init.zsh > /dev/null 2> /dev/null || true
