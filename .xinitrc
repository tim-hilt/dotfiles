#!/usr/bin/sh

[[ -f ~/.Xresources ]] && xrdb -merge ~/.Xresources

session=${1:-dwm}
case $session in
    dwm               ) insync start
                        dunst&
                        /usr/local/bin/batterywarner.sh&
                        xsetroot -solid "#161819"
			while true;
			do
			    date=$(LC_ALL=de_DE.utf8 date +'%R Uhr | %a. %d.%m.%Y')
			    bat=$(acpi | awk '{print $4}' | sed -E 's/%,?//g' | sort -r | head -n 1)
			    xsetroot -name "${date} | Bat: ${bat}%"
			    sleep 30
			done&
                        syndaemon -i .5 -d -kd
                        nm-applet&
                        blueman-applet&
                        exec dwm;;
    i3|i3wm           ) exec i3;;
    2bwm              ) xsetroot -solid "#161819"
                        compton&
                        dunst&
                        /usr/local/bin/batterywarner.fish&
                        insync start
                        udiskie&
                        2bwm&
                        exec alacritty;;
    # No known session, try to run it as command
    *                ) exec $1;;
esac
