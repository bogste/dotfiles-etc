# Description:
#
# Goodies file for non-login shells.
#
# Version 1.0.1 / Date 2019-01-24
#

# Load my aliases
if [ -f "~/.bash_aliases" ]; then
  . ~/.bash_aliases
fi

# Load my functions
if [ -f "~/.bash_functions" ]; then
  . ~/.bash_functions
fi

# Miscellaneous
if [ -f "~/.jabba/jabba.sh" ]; then
  [ -s "~/.jabba/jabba.sh" ] && source "~/.jabba/jabba.sh"

  if [ -f ~/.jabbarc ]; then
    # Below needs ~/.jabbarc with some Java version (e.g. 1.8) downloaded & specified.
    export JAVA_HOME="$(jabba which --home)"
  fi
fi
