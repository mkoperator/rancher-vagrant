install:
	# skip virtual box if you already have it and vagrant
	brew cask install virtualbox
	brew cask install vagrant
	brew cask install vagrant-manager
	vagrant box add suse15sp2  ~/Downloads/SLES15-SP2-Vagrant.x86_64-15.2-virtualbox-GM.vagrant.virtualbox.box --force
init: 
	# grab the latest image from the suse website
	vagrant init suse15sp2
	sed '$ d' Vagrantfile > Vagrantfile.tmp 
	cat _vagrantconfig >> Vagrantfile.tmp
	mv -f Vagrantfile.tmp Vagrantfile

start:
	vagrant up;
stop: 
	vagrant halt;
up: start
halt: stop
destroy:
	vagrant destroy;
	rm -fR .vagrant;
	rm Vagrantfile;