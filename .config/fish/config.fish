set EDITOR /usr/bin/vim
set CONSCRIPT_HOME "$HOME/.conscript"
set CONSCRIPT_OPTS "-XX:MaxPermSize=512M -Dfile.encoding=UTF-8"
set PYTHONENCODING utf-8
set JAVA8_HOME /Library/Java/JavaVirtualMachines/java8_latest_home/
set JAVA11_HOME /Library/Java/JavaVirtualMachines/java11_latest_home/
set JAVA_HOME $JAVA11_HOME
set PATH ~/.conscript/bin $JAVA_HOME $PATH 
alias git=hub
if status is-interactive
and not set -q TMUX
    exec tmux
end
