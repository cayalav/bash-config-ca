#Before configs clone the P10K

##ADD THIS TO BASHRC IF IT DOES NOT CHANGE TO ZSH with the <chsh -s $(which zsh) username> command
#if [ "$SHELL" != "/usr/bin/zsh" ]
#then
#    export SHELL="/usr/bin/zsh"
#    exec /usr/bin/zsh
#fi

#1. Clone the repository:
#git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k 

if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

#2 Set ZSH_THEME="powerlevel10k/powerlevel10k" in ~/.zshrc.

#Add here your $USER_NAME
export ZSH="/home/{$USER_NAME}/.oh-my-zsh"

ZSH_THEME="powerlevel10k/powerlevel10k"

plugins=(git zsh-autosuggestions z kubectl)

ZSH_DISABLE_COMPFIX=true


alias makeall="make reset deps plan"


source $ZSH/oh-my-zsh.sh

[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

typeset -g POWERLEVEL9K_INSTANT_PROMPT=quiet
