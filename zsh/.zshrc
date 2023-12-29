# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# Ruby rbenv 
if [ -e "$HOME/.rbenv" ]; then
  eval "$(rbenv init - zsh)"
fi

export LANG=ja_JP.UTF-8
 
autoload -Uz colors
colors

HISTFILE=~/.zsh_history
HISTSIZE=1000
SAVEHIST=1000

setopt hist_ignore_dups
setopt hist_ignore_all_dups
setopt share_history
setopt pushd_ignore_dups
setopt no_beep

alias ls='ls -F --color=auto'
alias ll='ls -lF --color=auto'
alias la='ls -a'
alias rm='rm -i'
alias cp='cp -i'
alias mv='mv -i'
alias mkdir='mkdir -p'

# plugin manager antigen
source $HOME/antigen.zsh

antigen bundle zsh-users/zsh-syntax-highlighting
antigen bundle zsh-users/zsh-completions
antigen bundle zsh-users/zsh-autosuggestions
antigen bundle rupa/z z.sh

antigen theme romkatv/powerlevel10k
antigen apply

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
