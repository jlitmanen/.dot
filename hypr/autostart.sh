# Terminate existing instances first
pkill swaybg
pkill swayosd-server
pkill swaync
pkill waybar
# special shit for waybar

waybar -c ~/.config/hypr/waybar/config.jsonc -s ~/.config/hypr/waybar/style.css >/dev/null 2>&1 &
# Launch apps
swaybg -i ~/Pictures/Wallpaper/arch.jpg >/dev/null 2>&1 &
swayosd-server >/dev/null 2>&1 &
swaync >/dev/null 2>&1 &

dbus-update-activation-environment --systemd --all
systemctl --user start hyprland-session.target

# to shut laptop screen
# pkill kanshi
# kanshi >/dev/null 2>&1 &
#
