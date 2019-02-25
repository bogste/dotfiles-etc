# Description:
#
# Goodies file for Bash non-login shells.
#
# Version 1.0.5 / Date 2019-02-07
#

# Load my aliases
if [ -f ~/.bash_aliases ]; then
  . ~/.bash_aliases
fi

# Load my functions
if [ -f ~/.bash_functions ]; then
  . ~/.bash_functions
fi

# Miscellaneous
#

# Enable Jabba
if [ -f ~/.jabba/jabba.sh ]; then
  [ -s ~/.jabba/jabba.sh ] && source ~/.jabba/jabba.sh
fi
# Auto-enable a default JDK for current shell, if .jabbarc exists
if [ -f ~/.jabbarc ]; then
  # Below needs ~/.jabbarc with some Java version (e.g. 1.8) downloaded & specified.
  export JAVA_HOME="$(jabba which --home)"
fi
