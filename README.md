BAMP Builder
=============

Scripts to build BAMP Box

###Requirements

* VirtualBox or VMware
* Vagrant
* Vritual Box Vagrant Plugin

###Installation


Make sure first to install the Vagrant Plugin for VirtualBox

```
vagrant plugin install vagrant-vbguest
```

Then, in command line:

```
    git clone git@github.com:buonzz-systems/bamp-builder.git
	cd bamp-builder
	vagrant up
```

Wait until the installation is finish. Then login to the box by

```
    vagrant ssh
```

Do some random checks and make sure everything is ok. When ready package it by:

```
vagrant package --output dist/bamp-v[put version number].box
```

#### Install Redis

```
sudo apt-get update
sudo apt-get install build-essential
sudo apt-get install tcl8.5
wget http://download.redis.io/releases/redis-2.8.9.tar.gz
tar xzf redis-2.8.9.tar.gz
cd redis-2.8.9
make
make test
sudo make install
cd utils
sudo ./install_server.sh
```

### References

- https://scotch.io/tutorials/how-to-create-a-vagrant-base-box-from-an-existing-one
- http://zacvineyard.com/blog/2013/02/the-easy-way-to-install-the-mongodb-php-driver-on-ubuntu-1204
- http://serverfault.com/questions/420286/how-do-i-upgrade-from-php-5-3-to-php-5-4-6-in-ubuntu
- http://stackoverflow.com/questions/23443398/nginx-error-connect-to-php5-fpm-sock-failed-13-permission-denied
- https://www.digitalocean.com/community/tutorials/how-to-install-linux-nginx-mysql-php-lemp-stack-on-ubuntu-12-04
- https://help.github.com/articles/generating-ssh-keys/
- https://www.digitalocean.com/community/tutorials/how-to-install-and-use-redis
- https://github.com/phpredis/phpredis
- http://www.microhowto.info/howto/perform_an_unattended_installation_of_a_debian_package.html
- http://stackoverflow.com/questions/7739645/install-mysql-on-ubuntu-without-password-prompt
- https://github.com/dotless-de/vagrant-vbguest
