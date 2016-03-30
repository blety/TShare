#!/bin/sh

msg_task "Install Apache2"

    msg_subtask "Install packages"
        apt-get -y install apache2
        # some weird things here ?!
        apt-get -y purge apache2.2-common
        apt-get -y install apache2

    msg_subtask "Configure Apache2 user,group"
        sed -i "s/^export APACHE_RUN_USER=www-data$/export APACHE_RUN_USER=vagrant/g" /etc/apache2/envvars
        sed -i "s/^export APACHE_RUN_GROUP=www-data$/export APACHE_RUN_GROUP=vagrant/g" /etc/apache2/envvars
        chown vagrant /var/lock/apache2

    msg_subtask "Install /etc files"
        cp -Rf ${FILES_DIR}/etc/apache2/* /etc/apache2/

    msg_subtask "Restart Apache2"
        service apache2 restart


