# -*- mode: ruby -*-
# vi: set ft=ruby :


Vagrant.configure("2") do |config|

    config.vm.define "TShare" do |sl|

        sl.vm.box = "vbox4.3-debian7"
        sl.vm.box_url = "http://cdsphp-sandbox/files/boxes/web/vbox4.3-debian7.box"

        sl.vm.provider :virtualbox do |v|
            v.name = "TShare"
            v.memory = 1024
        end

        sl.vm.network "private_network", ip: "192.168.50.22"

        sl.vm.network :forwarded_port, guest: 22, host: 2225, id: "ssh", auto_correct: false
        sl.vm.network :forwarded_port, guest: 80, host: 8085 #http-apache
        sl.vm.network :forwarded_port, guest: 3306, host: 33065 #mysql
        sl.vm.network :forwarded_port, guest: 9000, host: 9095 #xdebug
        sl.vm.network :forwarded_port, guest: 8025, host: 8029 #mailcatcher

        sl.vm.provision :shell, :path => "./conf/shell/install.sh"
        sl.vm.synced_folder "./", "/home/vagrant/src", :create=>true
        sl.vm.synced_folder "./TShare/web", "/var/www/web/"

    end
end