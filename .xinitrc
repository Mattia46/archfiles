systemctl --user import-environment DISPLAY

picom --experimental-backends &
exec i3
