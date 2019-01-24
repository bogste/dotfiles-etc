# Description:
#
# My custom functions.
#
# Version 1.0.0 / Date 2019-01-24
#


# Functions
function dummy () {
  echo "You're it! (:"
}

function md () {
  mkdir -p $1
  cd $1
}

function rmd () {
  rm -Rf $1
}
