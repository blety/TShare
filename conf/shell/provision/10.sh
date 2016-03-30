#!/bin/sh

msg_task "Updating wkhtmltopdf"
    sudo apt-get -y remove wkhtmltopdf
    wget -O wkhtmltox-0.12.2.1_linux-wheezy-i386.deb http://sourceforge.net/projects/wkhtmltopdf/files/0.12.2.1/wkhtmltox-0.12.2.1_linux-wheezy-i386.deb
    sudo dpkg -i wkhtmltox-0.12.2.1_linux-wheezy-i386.deb
    sudo apt-get -f -y install
    sudo rm -f wkhtmltox-0.12.2.1_linux-wheezy-i386.deb
