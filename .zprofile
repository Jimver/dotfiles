# Add ruby gems of user to path
PATH="$PATH:$(ruby -e 'puts Gem.user_dir')/bin"

if [[ ! $DISPLAY && $XDG_VTNR -eq 1 ]]; then
  exec startx
fi
