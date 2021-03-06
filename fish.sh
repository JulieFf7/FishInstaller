#!/usr/bin/env bash

error() { \
    clear; printf "ERROR:\\n%s\\n" "$1" >&2; exit 1;
}

echo "######################################################"
echo "#####        Installing dependencies            ######"
echo "######################################################"
sudo dnf install dialog util-linux-user || error "Failed installing dependencies"


welcome(){ \
  dialog --colors --title "Welcome" -msgbox "This scrypt will install fish and set is as your deafault shell. Note that this is only for Fedora linux. Do not run this scrypt as root " 16 60

  dialog --colors --title "Welcome" --yes-label "Yes" --no-label "Exit" --yesno "Do you want to continue?" 8 80

}
welcome || error "Exiting"



yesfish(){ \
  dialog --colors --title "Fish" --yes-label "Yes" --no-label "Exit" --yesno "Do you want to install Fish?" 8 80

}
yesfish || error "Exiting"


installfish(){ \

  sudo dnf install fish 

  }
installfish || error "Failed installing fish"

setfish(){ \
  echo /usr/bin/fish | sudo tee -a /etc/shells

   chsh -s /usr/bin/fish

  }
setfish || error "Failed to set fish as default shell"

dialog --colors --title "OMF" --yes-label "Yes" --no-label "Exit" --yesno "Do you want to install oh my fish ? (Themes)" 8 80 

installomf(){ \
  curl https://raw.githubusercontent.com/oh-my-fish/oh-my-fish/master/bin/install

  }
installomf || error "Failed to install omf"

dialog --colors --title "The end" --msgbox "After exiting relaunch your terminal and you should be in fish. If you want to set different theme you can do it with the commands: \n \n omf install .yourtheme. \n omf theme .yourtheme. \n \n You can list available theme with the command: \n \n omf theme" 16 80





echo  " ██╗██╗   ██╗██╗     ██╗███████╗███████╗███████╗███████╗███████╗██╗   ██╗███████╗███╗   ██╗
        ██║██║   ██║██║     ██║██╔════╝██╔════╝██╔════╝██╔════╝██╔════╝██║   ██║██╔════╝████╗  ██║
        ██║██║   ██║██║     ██║█████╗  █████╗  █████╗  ███████╗█████╗  ██║   ██║█████╗  ██╔██╗ ██║
   ██   ██║██║   ██║██║     ██║██╔══╝  ██╔══╝  ██╔══╝  ╚════██║██╔══╝  ╚██╗ ██╔╝██╔══╝  ██║╚██╗██║
   ╚█████╔╝╚██████╔╝███████╗██║███████╗██║     ██║     ███████║███████╗ ╚████╔╝ ███████╗██║ ╚████║
    ╚════╝  ╚═════╝ ╚══════╝╚═╝╚══════╝╚═╝     ╚═╝     ╚══════╝╚══════╝  ╚═══╝  ╚══════╝╚═╝  ╚═══╝  "
