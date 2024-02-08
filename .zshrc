# Enable Powerlevel10k instant prompt. Should stay close to the top of $HOME/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

#######################################################################################
# First, clone Antidote if it's not already installed
[[ -d ${ZDOTDIR:-~}/.antidote ]] || git clone --depth=1 https://github.com/mattmc3/antidote.git ${ZDOTDIR:-~}/.antidote
# Ensure you have a .zsh_plugins.txt file where you can add plugins
[[ -f ${zsh_plugins:r}.txt ]] || touch ${zsh_plugins:r}.txt
# source antidote
source ${ZDOTDIR:-~}/.antidote/antidote.zsh
# initialize plugins statically with ${ZDOTDIR:-~}/.zsh_plugins.txt
antidote load
# generate ~/.zsh_plugins.zsh
antidote bundle <~/.zsh_plugins.txt >~/.zsh_plugins.zsh
#######################################################################################


# Uncomment the following line to change how often to auto-update (in days).
export UPDATE_ZSH_DAYS=30
# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
HIST_STAMPS="dd/mm/yyyy"
# Aliases
alias vi=vim
alias qstat="noglob qstat"
alias emacs="emacsclient -c"
# History
HISTFILE=$HOME/.histfile
HISTSIZE=100000
SAVEHIST=100000
unsetopt appendhistory

# Load and initialize the completion system for zsh
autoload -Uz compinit ; compinit

# `time` format
export TIMEFMT=$" %J"$'\n\n%U\tuser\n%S\tsystem\n%P\tcpu\n%M KB\tmem\n%*E\ttotal\n'

# perl
PATH="$HOME/perl5/bin${PATH:+:${PATH}}"; export PATH;
PERL5LIB="$HOME/perl5/lib/perl5${PERL5LIB:+:${PERL5LIB}}"; export PERL5LIB;
PERL_LOCAL_LIB_ROOT="$HOME/perl5${PERL_LOCAL_LIB_ROOT:+:${PERL_LOCAL_LIB_ROOT}}"; export PERL_LOCAL_LIB_ROOT;
PERL_MB_OPT="--install_base \"$HOME/perl5\""; export PERL_MB_OPT;
PERL_MM_OPT="INSTALL_BASE=$HOME/perl5"; export PERL_MM_OPT;

# doom emacs
PATH="$HOME/.emacs.d/bin:$PATH"; export PATH

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/home/swastikm/mambaforge/bin/conda' 'shell.bash' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/home/swastikm/mambaforge/etc/profile.d/conda.sh" ]; then
        . "/home/swastikm/mambaforge/etc/profile.d/conda.sh"
    else
        export PATH="/home/swastikm/mambaforge/bin:$PATH"
    fi
fi
unset __conda_setup

if [ -f "/home/swastikm/mambaforge/etc/profile.d/mamba.sh" ]; then
    . "/home/swastikm/mambaforge/etc/profile.d/mamba.sh"
fi
# <<< conda initialize <<<

# To customize prompt, run `p10k configure` or edit $HOME/.p10k.zsh.
[[ ! -f $HOME/.p10k.zsh ]] || source $HOME/.p10k.zsh
