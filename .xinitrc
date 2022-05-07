systemctl --user import-environment DISPLAY

[[ -f ~/.Xmodmap ]] && xmodmap ~/.Xmodmap &
picom &
exec i3
