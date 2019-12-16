# enable the git bash completion commands
if [ -f ~/.git-completion.sh ]; then
    source ~/.git-completion.sh
fi
# enable git unstaged indicators - set to a non-empty value
GIT_PS1_SHOWDIRTYSTATE=true
GIT_PS1_SHOWCOLORHINTS=true
GIT_PS1_SHOWSTASHSTATE=true
GIT_PS1_SHOWUNTRACKEDFILES=true
# enable showing of HEAD vs its upstream
GIT_PS1_SHOWUPSTREAM="auto"

if [ -f ~/.git-prompt.sh ]; then
    source ~/.git-prompt.sh
fi
BLACK=$(tput setaf 0)
RED=$(tput setaf 1)
GREEN=$(tput setaf 2)
YELLOW=$(tput setaf 3)
LIME_YELLOW=$(tput setaf 190)
POWDER_BLUE=$(tput setaf 153)
BLUE=$(tput setaf 4)
MAGENTA=$(tput setaf 5)
CYAN=$(tput setaf 6)
WHITE=$(tput setaf 7)
BRIGHT=$(tput bold)
NORMAL=$(tput sgr0)
BLINK=$(tput blink)
REVERSE=$(tput smso)
UNDERLINE=$(tput smul)
 
# set the prompt to show current working directory and git branch name, if it exists
 
# this prompt is a green username, black @ symbol, cyan host, magenta current working directory and white git branch (only shows if you're in a git branch)
# unstaged and untracked symbols are shown, too (see above)
# this prompt uses the short colour codes defined above
# PS1='${GREEN}\u${BLACK}@${CYAN}\h:${MAGENTA}\w${WHITE}`__git_ps1 " (%s)"`\$ '
 
# this is a cyan username, @ symbol and host, magenta current working directory and white git branch
# it uses the shorter , but visibly more complex, codes for text colours (shorter because the colour code definitions aren't needed)
# PS1='\[33[0;36m\]\u@\h\[33[01m\]:\[33[0;35m\]\w\[33[00m\]\[33[1;30m\]\[33[0;37m\]`__git_ps1 " (%s)"`\[33[00m\]\[33[0;37m\]\$ '
 
# return the prompt prefix for the second line
function set_prefix {
    BRANCH=`__git_ps1`
    if [[ -z $BRANCH ]]; then
        echo "${NORMAL}o"
    else
        echo "${UNDERLINE}+"
    fi
}
 

# PS1='${GREEN}\u${BLACK}@${CYAN}\h:${MAGENTA}\w${WHITE}`__git_ps1 " (%s)"`\$ '
PS1='\[${WHITE}\][`date "+%a, %b %d %H:%M"`]:\[${CYAN}\]\W:\[${YELLOW}\](\[${MAGENTA}\]`__git_ps1 "\[${BRIGHT}${RED}\]%s"`\[${NORMAL}${YELLOW}\])\[${NORMAL}\]\$ '
# PS1='\[\033[1;32m\]\u:\[\033[1;34m\] \W \$\[\033[0m\]'

# export PATH=$PATH:~/mongodb/bin/
# export NVM_DIR="/Users/glorytekos/.nvm"
# [ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"  # This loads nvm
