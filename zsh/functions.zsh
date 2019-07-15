# FUNCTIONS

function backup() {
  git add --all ;
  git commit -am ':wrench: [WIP] Done for today, cya tomorrow [ci skip] :wave:' ;
  git push $@ ;
}

function gi() {
  curl -L -s https://www.gitignore.io/api/$@ ;
}

function mkcd() {
  mkdir -p $@ ;
  cd $@ ;
}

function open() {
  xdg-open $@ &;
}

function please() {
  CMD=$(history -1 | cut -d" " -f4-) ;
  sudo "$CMD" ;
}

function weather() {
  curl 'wttr.in/~'${1:-Braga}'+'$2'?'$3 ;
}

function createrep() {
  cd "/home/pedro/Code/createrep/";
  sh createrep.sh $1;
  cd "$ENV";
}

