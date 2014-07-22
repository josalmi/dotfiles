# Source Prezto.
if [[ -s "${ZDOTDIR:-$HOME}/.zprezto/runcoms/zshrc" ]]; then
  source "${ZDOTDIR:-$HOME}/.zprezto/runcoms/zshrc"
fi

if [[ "$TERM" == "xterm" ]]; then
  export TERM=xterm-256color
fi

alias irc="mosh hilla -- screen -dr"
