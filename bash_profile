CLASSPATH=$PATH:/home/automation/Documents/automation/RobotFramework/Java/bin:/home/automation/Documents/automation/robot/activation.jar:/home/automation/Documents/automation/robot/robot.jar:/home/automation/Documents/automation/robot/poi-3.6-20091214.jar:/home/automation/Documents/automation/robot/mail.jar:/home/automation/Documents/automation/robot/json.jar:/home/automation/Documents/automation/robot/jh.jar:/home/automation/Documents/automation/robot/ShapeSearchv1.jar

export SVN_EDITOR=vi
alias ls='ls -G'
export CLICOLOR=1
export LSCOLORS=gxBxhxDxfxhxhxhxhxcxcx

alias ff='find . -type f -name "*.php" -name "*.sh" -name "*.rb" -name "*.m" -name "*.h" -name "*.plist" -not -name "*svn-base*" | xargs grep 2>/dev/null'

alias zoosrc='cd /Users/pkannan/Documents/DreamZoo/SourceCodes'
alias zombiedev='ssh dev2-zombiesmash-mobile-01'

##
# Your previous /Users/pkannan/.bash_profile file was backed up as /Users/pkannan/.bash_profile.macports-saved_2012-02-27_at_12:27:44
##

# MacPorts Installer addition on 2012-02-27_at_12:27:44: adding an appropriate PATH variable for use with MacPorts.
export PATH=/usr/local/bin:/usr/local/Cellar:/opt/local/bin:/opt/local/sbin:$PATH
# Finished adapting your PATH environment variable for use with MacPorts.

#git commands
alias gst='git status'
alias gc='git commit'
alias gco='git checkout'
alias gl='git pull'
alias gpom="git pull origin master"
alias gp='git push'
alias gd='git diff | mate'
alias gb='git branch'
alias gba='git branch -a'
alias del='git branch -d'
alias gsi='git submodule init'
alias gsu='git submodule update'
alias gr='git remote -v'
alias gt='git'

## Colorize the grep command output for ease of use (good for log files)##
alias grep='grep --color=auto'
alias egrep='egrep --color=auto'
alias fgrep='fgrep --color=auto'
    
## wish this was built in listing functionality
alias ll='ls -l'
alias lt='ls -lart'
   
alias hisg='history|grep '

alias code='cd /Users/pkannan/Documents/CommonEngine/SourceCodes/SDK/iOS'

#To auto select windows based on mouse move
defaults write com.apple.terminal FocusFollowsMouse -string YES

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*

##
# Your previous /Users/pkannan/.bash_profile file was backed up as /Users/pkannan/.bash_profile.macports-saved_2012-08-15_at_17:16:24
##

# MacPorts Installer addition on 2012-08-15_at_17:16:24: adding an appropriate PATH variable for use with MacPorts.
export PATH=/opt/local/bin:/opt/local/sbin:$PATH
# Finished adapting your PATH environment variable for use with MacPorts.

# up 4 -> go up 4 directories
up()
{
    dir=""
    if [[ $1 =~ ^[0-9]+$ ]]; then
        x=0
        while [ $x -lt ${1:-1} ]; do
            dir=${dir}../
            x=$(($x+1))
        done
    else
         dir=..
    fi
    cd "$dir";
}

