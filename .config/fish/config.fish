# Environment Variables
set -x SHELL /usr/bin/fish
set -x BROWSER firefox
set -x EDITOR emacsclient -a emacs
set -x VISUAL emacsclient -a emacs
set -gx QT_QPA_PLATFORMTHEME qt5ct
set -gx PATH /home/tim/bin $PATH
set -gx PKG_CONFIG_PATH /usr/lib/pkgconfig $PKG_CONFIG_PATH
set -gx _JAVA_AWT_WM_NONREPARENTING 1

# eval (python -m virtualfish)

# Abbreviations
abbr r 'ranger --choosedir=$HOME/.rangerdir; set LASTDIR (cat $HOME/.rangerdir); cd $LASTDIR'
abbr ranger 'ranger --choosedir=$HOME/.rangerdir; set LASTDIR (cat $HOME/.rangerdir); cd $LASTDIR'
abbr zm 'zathura ~/Studium/3.Semester/Mathematik3/Formelsammlung/Mathe3Formelsammlung.pdf&; disown (jobs -lp); exit'
abbr ze 'zathura ~/Studium/3.Semester/Elektronik/Formelsammlung/ElektronikFormelsammlung.pdf&; disown (jobs -lp); exit'
abbr zs 'zathura ~/Studium/3.Semester/SignaleUndSysteme/Formelsammlung/FormelsammlungSuS.pdf&; disown (jobs -lp); exit'
abbr zd 'zathura ~/Studium/3.Semester/Digitaltechnik2/Zusammenfassung/DT2_Zusammenfassung.pdf&; disown (jobs -lp); exit'
abbr wb 'env GTK_THEME=adwaita mysql-workbench&; disown (jobs -lp); exit'
abbr cc 'setxkbmap -layout de -option ctrl:nocaps'
abbr up 'sudo pacman -Syu'
abbr pac 'sudo pacman'
abbr pacman 'sudo pacman'
abbr format_usb 'sudo mkfs.vfat -F 32 /dev/sda'
abbr iso_to_usb 'dd bs=4M if=path/to/iso of=/dev/sdx status=progress oflag=sync'
abbr ni 'nmcli device wifi list'
abbr mon '/bin/bash /usr/local/bin/monitor.sh'
abbr moff '/bin/bash /usr/local/bin/monitoroff.sh'
abbr compress_pdf 'gs -sDEVICE=pdfwrite -dCompatibilityLevel=1.4 -dPDFSETTINGS=/screen -dNOPAUSE -dQUIET -dBATCH -sOutputFile='
abbr suspend 'systemctl suspend'
abbr cmx 'find . -type f -exec chmod -x {} +'
abbr mpv 'mpv --player-operation-mode=pseudo-gui'
abbr battery 'upower -i /org/freedesktop/UPower/devices/battery_BAT0'
abbr untar 'tar -C ./ -xvf'
abbr pip_upgrade 'sudo pip list --outdated --format=freeze | grep -v '^\-e' | cut -d = -f 1  | xargs -n1 sudo pip install -U'
abbr pycharm '/opt/pycharm-2019.1.1/bin/pycharm.sh&; set PID (jobs -lp); disown $PID; exit'
abbr pandoc_beamer 'pandoc -t beamer --pdf-engine=xelatex --slide-level=2 -H header.tex Präsentation.
md -o Präsentation.pdf'
abbr combine_pdf 'pdfnup --a4paper --keepinfo --nup 1x2 --frame true --scale 1 --no-landscape --outfile output.pdf input.pdf'
abbr cds 'cd ~/Studium/4.Semester'
abbr cdl 'cd ~/Literatur/'
abbr cdd 'cd ~/Downloads/'
abbr cdg 'cd ~/git/'
abbr cdll 'cd ~/Literatur/LaTeX/'
abbr vim 'nvim'
abbr iv 'nvim ~/.config/nvim/init.vim'
# abbr toggle_decorations /home/tim/git/toggle_decorations/toggle_decorations (wmctrl -lp | grep (xprop -root | grep _NET_ACTIVE_WINDOW | head -1 | awk '{print $5}' | sed 's/,//' | sed 's/^0x/0x0/') | awk '{print $1;}')
abbr td '/home/tim/git/toggle_decorations/toggle_decorations'
abbr wa 'chromium --app=https://web.whatsapp.com --new-window&; disown (jobs -lp); exit'
abbr jl 'jupyter lab --no-browser&; sleep 1; surf (jupyter notebook list | sed "s/Currently running servers://g;s/?.*//g" | tr -d "\n")&; sleep 2; disown (jobs -p) && exit'
abbr rdb "kill (ps -aux | grep dwm | sed '/dwmbar/!d' | awk '{print $2}') && /home/tim/scripts/dwmbar.sh& && disown (jobs -lp) && exit"

abbr pq "pacman -Q | fzy | awk '{print \$1}'"
abbr pr "sudo pacman -Rns (pacman -Q | fzy | awk '{print \$1}')"
abbr k "kill (ps -auxk -pcpu | fzy | awk '{print \$2}')"
abbr speedtest 'curl -s https://raw.githubusercontent.com/sivel/speedtest-cli/master/speedtest.py | python -'
