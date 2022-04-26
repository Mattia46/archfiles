systemctl --user import-environment DISPLAY

xmodmap ~/.Xmodmap &
picom &
exec i3
