




bye(){ \

dialog --colors --title "The end" --msgbox "Thanks for using my script. <3" 16 60

exit  

}


dialog --colors --title "OMF" --yes-label "Yes" --no-label "Exit" --yesno "Do you want to install oh my fish ? (Themes)" 8 80 || bye

dialog --colors --title "The end" --msgbox "After exiting relaunch your terminal and you should be in fish. If you want to set different theme you can do it with the commands: \n \n omf install .yourtheme. \n omf theme .yourtheme. \n \n You can list available theme with the command: \n \n omf theme" 16 80
