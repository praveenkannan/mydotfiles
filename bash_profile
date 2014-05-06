CLASSPATH=$PATH:/home/automation/Documents/automation/RobotFramework/Java/bin:/home/automation/Documents/automation/robot/activation.jar:/home/automation/Documents/automation/robot/robot.jar:/home/automation/Documents/automation/robot/poi-3.6-20091214.jar:/home/automation/Documents/automation/robot/mail.jar:/home/automation/Documents/automation/robot/json.jar:/home/automation/Documents/automation/robot/jh.jar:/home/automation/Documents/automation/robot/ShapeSearchv1.jar

export SVN_EDITOR=vim
alias ls='ls -G'
export CLICOLOR=1
export LSCOLORS=gxBxhxDxfxhxhxhxhxcxcx

alias ff='find . -type f -name "*.php" -name "*.sh" -name "*.rb" -name "*.m" -name "*.h" -name "*.plist" -name "*.java" -not -name "*svn-base*" | xargs grep 2>/dev/null'

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
alias gpom="git pull --rebase origin master"
alias gp='git push'
alias gd='git diff | vim'
alias gb='git branch'
alias gba='git branch -a'
alias del='git branch -d'
alias gsi='git submodule init'
alias gsu='git submodule update'
alias gr='git remote -v'
alias gt='git'
alias glg='git log --date-order --all --graph --format="%C(green)%h%Creset %C(yellow)%an%Creset %C(blue bold)%ar%Creset %C(red bold)%d%Creset%s"'
alias glg2='git log --date-order --all --graph --name-status --format="%C(green)%h%Creset %C(yellow)%an%Creset %C(blue bold)%ar%Creset %C(red bold)%d%Creset%s"'
source /Users/praveenkannan/Code/myCommandLineUtils/git-completion.bash

# To show how many commits you are ahead or behind of the remote the branch it syncs to, in command prompt
function ahead_behind {
    curr_branch=$(git rev-parse --abbrev-ref HEAD);
    curr_remote=$(git config branch.$curr_branch.remote);
    curr_merge_branch=$(git config branch.$curr_branch.merge | cut -d / -f 3);
    git rev-list --left-right --count $curr_branch...$curr_remote/$curr_merge_branch | tr -s '\t' '|';
}
export PS1="\h:\w[\$(ahead_behind)]$"

# http://henrik.nyh.se/2008/12/git-dirty-prompt
# http://www.simplisticcomplexity.com/2008/03/13/show-your-git-branch-name-in-your-prompt/
#   username@Machine ~/dev/dir[master]$   # clean working directory
#   username@Machine ~/dev/dir[master*]$  # dirty working directory
 
function parse_git_dirty {
  [[ $(git status 2> /dev/null | tail -n1) != "nothing to commit (working directory clean)" ]] && echo "*"
}
function parse_git_branch {
  git branch --no-color 2> /dev/null | sed -e '/^[^*]/d' -e "s/* \(.*\)/[\1$(parse_git_dirty)]/"
}
export PS1='\u@\h \[\033[1;33m\]\w\[\033[0m\]$(parse_git_branch)$ '

## Colorize the grep command output for ease of use (good for log files)##
alias grep='grep --color=auto'
alias egrep='egrep --color=auto'
alias fgrep='fgrep --color=auto'
    
## wish this was built in listing functionality
alias ll='ls -l'
alias lt='ls -lart'
   
alias hisg='history|grep '

alias spacechk='du -d 1 -m'
alias ttrash='rm -rf /Users/pkannan/.Trash/*'

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


export JAVA_HOME=`/usr/libexec/java_home -v 1.7`
export JYTHON_HOME=/usr/local/Cellar/jython/2.5.3/libexec/

### Work Specific ###
export PATH=/usr/local/bin/postgresql:/Users/praveenkannan/Code/ayasdi/arcanist/bin:/Users/praveenkannan/Code/ayasdi/utilities/deploy/hadoop/files/hadoop/cdh/hbase/bin:$PATH
export PGDATA=~/postgres/data
export EDITOR=vim

alias code='cd /Users/praveenkannan/Code/ayasdi; ls -lrt;'
alias runlhost='pushd /Users/praveenkannan/Code/ayasdi > /dev/null; pushd localscripts/; ./runlhost.sh > /dev/null; popd; popd;'
alias updatecode='pushd /Users/praveenkannan/Code/ayasdi > /dev/null; pushd localscripts/; ./updatecode.sh > /dev/null; popd; popd;'
alias runadmin='pushd /Users/praveenkannan/Code/ayasdi/backend/useradmin > /dev/null; node app; popd;'
alias startpg='pg_ctl -l postgres.log start'
alias stoppg='pg_ctl stop'
alias ppsql='psql dagdb -c "$@"'
JYTHONPATH=$JYTHONPATH:/Users/praveenkannan/Code/ayasdi/automaton
#IRIS_CLIENT=/path/to/iris/client.jar e.g. /Applications/Iris/jar/Client.jar
#ANEMONE_CLIENT=/path/to/anemone/client.jar e.g. /Applications/Anemone/Iris3/Client.jar
#ANEMONE_CONFIG=path/to/anemone/config/file (see template below)
#IRIS_CONFIG=path/to/iris/config/file (see template below)

alias eclipse='/Applications/eclipse/eclipse -vmargs -Xms2g -Xmx4g'
source /Users/praveenkannan/Code/ayasdi/arcanist/resources/shell/bash-completion

######

