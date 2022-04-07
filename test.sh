#!/usr/bin/env bash

error() { clear; printf "ERROR:\\n%s\\n" "$1" >&2; exit 1;
}

bye(){ \
dialog --colors --title "The end" --msgbox "Thanks for using my script. <3" 16 60

exit
}


dialog --colors --title "OMF" --yes-label "Yes" --no-label "Exit" --yesno "Do you want to install oh my fish ? (Themes)" 8 80 || bye

dialog --colors --title "The end" --msgbox "After exiting relaunch your terminal and you should be in fish. If you want to set different theme you can do it with the commands: \n \n omf install .yourtheme. \n omf theme .yourtheme. \n \n You can list available theme with the command: \n \n omf theme" 16 80






echo "What distribution are you running?"
echo "1. Fedora"
echo "2. Arch"

read -p "Enter just the number:" distribution

if [ $distribution == 1 ]
  then
    echo "Fedora"
  else
    if [ $distribution == 2 ]
      then
        echo "Arch"
      else
        error "Nothing"
    fi
fi
