# Set up the prompt

autoload -Uz promptinit
promptinit
prompt adam1

setopt histignorealldups sharehistory

# Use modern completion system
#autoload predict-on
#predict-on
autoload -Uz compinit
compinit

zstyle ':completion:*' auto-description 'specify: %d'
zstyle ':completion:*' completer _expand _complete _correct _approximate
zstyle ':completion:*' format 'Completing %d'
zstyle ':completion:*' group-name ''
zstyle ':completion:*' menu select=2
#eval "$(dircolors -b)"
zstyle ':completion:*:default' list-colors ${(s.:.)LS_COLORS}
zstyle ':completion:*' list-colors ''
zstyle ':completion:*' list-prompt %SAt %p: Hit TAB for more, or the character to insert%s
zstyle ':completion:*' matcher-list '' 'm:{a-z}={A-Z}' 'm:{a-zA-Z}={A-Za-z}' 'r:|[._-]=* r:|=* l:|=*'
zstyle ':completion:*' menu select=long
zstyle ':completion:*' select-prompt %SScrolling active: current selection at %p%s
zstyle ':completion:*' use-compctl false
zstyle ':completion:*' verbose true

zstyle ':completion:*:*:kill:*:processes' list-colors '=(#b) #([0-9]#)*=0=01;31'
zstyle ':completion:*:kill:*' command 'ps -u $USER -o pid,%cpu,tty,cputime,cmd'

export JAVA_HOME="$(/usr/libexec/java_home -v 1.8)"

#alias 
alias l='ls -lF '
alias ll='ls -lashF '
alias lt='ls -lt'
alias c='clear'
alias sudo='sudo '
alias ds='find ~ -name '.DS_Store' -type f -delete -print 2>/dev/null'
alias dsr='sudo find / -name '.DS_Store' -type f -delete -print 2>/dev/null'
alias ascii='man ascii'
alias zip='zip -dc -dd '
alias egrep='egrep --color=always '
alias vim='vim -p '
alias tb="nc termbin.com 9999"
alias touchbarReset='sudo pkill TouchBarServer'


alias eyes='
echo "---------------------------------------------------------------------------------------------";
echo "---------------------------------------------------------------------------------------------";
echo "||                                                                                         ||";
echo "||                                                                                         ||";
echo "||   #####  ####### ####### ######     #       ####### ####### #    # ### #     #  #####   ||";
echo "||  #     #    #    #     # #     #    #       #     # #     # #   #   #  ##    # #     #  ||";
echo "||  #          #    #     # #     #    #       #     # #     # #  #    #  # #   # #        ||";
echo "||   #####     #    #     # ######     #       #     # #     # ###     #  #  #  # #  ####  ||";
echo "||        #    #    #     # #          #       #     # #     # #  #    #  #   # # #     #  ||";
echo "||  #     #    #    #     # #          #       #     # #     # #   #   #  #    ## #     #  ||";
echo "||   #####     #    ####### #          ####### ####### ####### #    # ### #     #  #####   ||";
echo "||                                                                                         ||";
echo "||     #    #######    #     # #     #     #####   #####  ######  ####### ####### #     #  ||";
echo "||    # #      #       ##   ##  #   #     #     # #     # #     # #       #       ##    #  ||";
echo "||   #   #     #       # # # #   # #      #       #       #     # #       #       # #   #  ||";
echo "||  #     #    #       #  #  #    #        #####  #       ######  #####   #####   #  #  #  ||";
echo "||  #######    #       #     #    #             # #       #   #   #       #       #   # #  ||";
echo "||  #     #    #       #     #    #       #     # #     # #    #  #       #       #    ##  ||";
echo "||  #     #    #       #     #    #        #####   #####  #     # ####### ####### #     #  ||";
echo "||                                                                                         ||";
echo "||                                                                                         ||";
echo "---------------------------------------------------------------------------------------------";
echo "---------------------------------------------------------------------------------------------";'

SAVEHIST=5000
HISTSIZE=5000
HISTFILE=~/.zsh_history
