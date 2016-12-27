echo in /Users/sabram/dev/scripts/bash_profile_shared.sh
echo sourcing ~/.bash_profile_ext
source ~/.bash_profile_ext

export SCRIPTS="/Users/sabram/dev/scripts"
alias vibp='vi $SCRIPTS/bash_profile_shared.sh'
alias viBP='vi ~/.bash_profile'
alias vibpext='vi ~/.bash_profile_ext'
alias vibplc='vi ~/.bash_profile_lc'
alias catbp='cat $SCRIPTS/bash_profile_shared.sh'
alias srcbp='source ~/.bash_profile'
alias lessbp='less $SCRIPTS/bash_profile_shared.sh'
alias vilaunch="sudo vi /etc/launchd.conf"
alias catlaunch="cat /etc/launchd.conf"
alias Docs="cd ~/Documents/"
alias del="cd ~/Documents/del"
alias tl="cd ~/dev/testlab"
alias dev="cd ~/dev"

##########
#mvn start
##########
alias mt="mvn test"
alias mc="mvn clean"
alias mi="mvn install"
alias mci="mvn clean install"
alias mcis="mvn clean install -Dmaven.test.skip=true"
alias mciu="mvn clean install -U"
alias mcius="mvn clean install -U -Dmaven.test.skip=true"
alias mis="mvn install -Dmaven.test.skip=true"
alias j="mvn jetty:run -Djetty.port=8080"
alias jp="mvn jetty:run -Dlc.profile=lcperf -Djetty.port=8080"
alias t="mvn tomcat7:run"
alias tdev="mvn tomcat7:run  -Dlc.profile=lcdev"
alias tdemo="mvn tomcat7:run  -Dlc.profile=demo"
alias t1="mvn tomcat7:run -Dtomcat.port=8081"
alias tp="mvn tomcat7:run -Dlc.profile=lcperf"
alias adhoc="mvn tomcat7:run -Dspring.profiles.active=nodeAdHoc"
alias dtree="mvn dependency:tree"
##########
#mvn end
##########


##########
# git
##########
source ~/git-completion.bash
alias glog='git log origin/development..development'
alias glog2='git log origin/develop..develop'
alias gdiff='git diff origin/development..development'
alias gdiff2='git diff origin/develop..develop'
git config --global alias.co checkout
alias vigc="vi ~/.gitconfig"
alias catgc="cat ~/.gitconfig"
alias s='git status'
# add git branch to prompt
# http://codeinthehole.com/writing/pull-requests-and-other-good-practices-for-teams-using-github/
function parse_git_branch {
    git branch --no-color 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/(\1) /'
}
PS1="\[\e[32m\]\$(parse_git_branch)\[\e[34m\]\h:\W \$ \[\e[m\]"
export PS1
##########
# git END
##########

source ~/.xsh
