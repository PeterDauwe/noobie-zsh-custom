# If you come from bash you might have to change your $PATH.
# History in cache directory:

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

if [ -d "$HOME/.bin" ] ;
  then PATH="$HOME/.bin:$PATH"
fi

if [ -d "$HOME/.local/bin" ] ;
  then PATH="$HOME/.local/bin:$PATH"
fi

sfetch

setopt GLOB_DOTS


export HISTCONTROL=ignoreboth:erasedups

#Editor of choise
export VISUAL=nano
export EDITOR="$VISUAL"


# History in cache directory:
HISTSIZE=1000
SAVEHIST=1000
HISTFILE=~/.cache/zsh/history

autoload -U compinit && compinit -u
zstyle ':completion:*' menu select
# Auto complete with case insenstivity
zstyle ':completion:*' matcher-list '' 'm:{a-zA-Z}={A-Za-z}' 'r:|[._-]=* r:|=*' 'l:|=* r:|=*'

zmodload zsh/complist
compinit
_comp_options+=(globdots)		# Include hidden files.


#Path to my zsh
ZSH_CUSTOM=$HOME/.config/shellconfig/zsh

# Read all Source configs
for f in $ZSH_CUSTOM/*; do source "$f"; done


#Theme location
source $ZSH_CUSTOM/themes/Lastbobo.zsh-theme


## Load zsh-syntax-highlighting; should be last.
#source $ZSH_CUSTOM/plugins/zsh-autocomplete/zsh-autocomplete.plugin.zsh 2>/dev/null
source $ZSH_CUSTOM/plugins/sublime/sublime.plugin.zsh 
source $ZSH_CUSTOM/plugins/zsh-autosuggestions/zsh-autosuggestions.plugin.zsh 
source $ZSH_CUSTOM/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source $ZSH_CUSTOM/plugins/zsh-history-substring-search/zsh-history-substring-search.zsh





