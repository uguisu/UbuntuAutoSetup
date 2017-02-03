#!/bin/bash
##############################################################
# This shell should be execute under Ubuntu16.04 x64 as Root
##############################################################
#
# Install software list
#  1) filezilla
#  2) keepass2
#  3) terminator
#  4) codeblocks
#  5) gcc/g++
#  6) dkms
#  7) git
#  8) fcitx(sougou)
#  9) ? vsftp
# 10) shutter
# 11) vlc
# 12)
# 13) clementine
# 14) notepadqq
#
# Chaneg settings
#  1) apt-get server
#  2) ? vsftp
# 
#
##############################################################


#export JAVA_HOME=
#export http_proxy=http://192.168.1.1:80
#export https_proxy=http://192.168.1.1:80

##############################################################
# Name        : doRemoveUserLessSoft
# Description : Remove useless Soft
##############################################################
doRemoveUserLessSoft()
{
    # LibreOffice
    apt-get -y remove --purge libreoffice*
    # Amazon App
    rm -rf /usr/share/applications/ubuntu-amazon-default.desktop
    apt-get -y remove unity-webapps-common
    # All default games
    apt-get -y remove --purge aisleriot gnome-mines gnome-mahjongg gnome-sudoku
    # Cheese
    apt-get -y remove --purge cheese
    # Screenshot
    apt-get -y remove --purge gnome-screenshot
    # Default Backup software
    apt-get -y remove --purge deja-dup
    # Simple scan
    apt-get -y remove --purge simple-scan
    # rhythmbox
    apt-get -y remove --purge rhythmbox
    # clean all
    apt-get -y autoremove
}
##############################################################
# Name        : doUpdateSystem
# Description : Update system
##############################################################
doUpdateSystem()
{
    # update
    apt-get update
    # Amazon App
    apt-get -y dist-upgrade
    # clean all
    apt-get -y autoremove
    apt-get -y autoclean
}
##############################################################
# Name        : doInstallSougouIME
# Description : Update system
##############################################################
doInstallSougouIME()
{
    ## fcitx -> doInstallUserApplication()
    ## apt-get -y install fcitx libopencc1 fcitx-libs fcitx-libs-qt
    # dpkg sougou
}
##############################################################
# Name        : doNotepadqq
# Description : Update system
##############################################################
doNotepadqq()
{
    # notepadqq
    add-apt-repository ppa:notepadqq-team/notepadqq -y
    ## notepadqq -> doInstallUserApplication()
    # apt-get install notepadqq
}


##############################################################
# Name        : doInstallUserApplication
# Description : Install user applications
##############################################################
doInstallUserApplication()
{
    #  1) filezilla
    apt-get -y install filezilla
    #  2) keepass2
    apt-get -y install keepass2
    #  3) terminator
    apt-get -y install terminator
    #  4) codeblocks
    apt-get -y install codeblocks
    #  5) gcc/g++
    apt-get -y install gcc
    #  6) dkms
    apt-get -y install dkms
    #  7) git
    apt-get -y install git
    #  8) fcitx(sougou)
    apt-get -y install fcitx libopencc1 fcitx-libs fcitx-libs-qt
    #  9) ? vsftp
    # 10) shutter
    apt-get -y install shutter
    # 11) vlc
    apt-get -y install vlc
    # 12)
    # 13) clementine
    apt-get -y install clementine
    # 14) notepadqq
    apt-get -y install notepadqq
}

##############################################################
###                         Main                           ###
##############################################################
# 10) Remove useless Soft
doRemoveUserLessSoft
# 15) Update APT Repository
doNotepadqq
# 20) Update system
doUpdateSystem
# 30) Install user applications
doInstallUserApplication
