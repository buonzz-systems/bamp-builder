BAMP Builder
=============

Scripts to build BAMP Box

###Requirements

* VirtualBox or VMware
* Vagrant

###Installation

In command line:

```
    git clone git@github.com:buonzz-systems/bamp-builder.git
	cd bamp-builder
	vagrant up
```

Wait until the installation is finish. Then login to the box by

```
    vagrant ssh
```

Now, execute and copy-paste manually the items under bootstrap.sh
This really needs to be manually done so you can see the details.

### References

- https://scotch.io/tutorials/how-to-create-a-vagrant-base-box-from-an-existing-one
- http://zacvineyard.com/blog/2013/02/the-easy-way-to-install-the-mongodb-php-driver-on-ubuntu-1204
- http://serverfault.com/questions/420286/how-do-i-upgrade-from-php-5-3-to-php-5-4-6-in-ubuntu
- http://stackoverflow.com/questions/23443398/nginx-error-connect-to-php5-fpm-sock-failed-13-permission-denied
- https://www.digitalocean.com/community/tutorials/how-to-install-linux-nginx-mysql-php-lemp-stack-on-ubuntu-12-04
- https://help.github.com/articles/generating-ssh-keys/
