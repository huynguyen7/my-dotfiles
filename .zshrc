# Basic settings
source ~/.config/zsh/settings

# Define TERM colors 
export TERM="xterm-256color"

# Use nvim for man page
#export MANPAGER="nvim -c 'set ft=man' -"
export MANPAGER='nvim +Man!'

# !! Contents within this block are managed by 'conda init' !!
#__conda_setup="$('/Users/huynguyen/miniforge3/bin/conda' 'shell.zsh' 'hook' 2> /dev/null)"
#if [ $? -eq 0 ]; then
#    eval "$__conda_setup"
#else
#    if [ -f "/Users/huynguyen/miniforge3/etc/profile.d/conda.sh" ]; then
#        . "/Users/huynguyen/miniforge3/etc/profile.d/conda.sh"
#    else
#        export PATH="/Users/huynguyen/miniforge3/bin:$PATH"
#    fi
#fi
#unset __conda_setup

# Tell Scipy where it can find openblas(installed through homebrew)
export OPENBLAS=/opt/homebrew/opt/openblas/lib/

#THIS MUST BE AT THE END OF THE FILE FOR SDKMAN TO WORK!!!
export SDKMAN_DIR="/Users/huynguyen/.sdkman"
[[ -s "/Users/huynguyen/.sdkman/bin/sdkman-init.sh" ]] && source "/Users/huynguyen/.sdkman/bin/sdkman-init.sh"
