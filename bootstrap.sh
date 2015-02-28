#!/usr/bin/env bash

sudo apt-get update
sudo apt-get upgrade


# install console and git
apt-get install -y php5-cli git curl

#install mysql
sudo apt-get install mysql-server php5-mysql
sudo mysql_install_db
sudo /usr/bin/mysql_secure_installation

#install nginx
echo "deb http://ppa.launchpad.net/nginx/stable/ubuntu $(lsb_release -sc) main" | sudo tee /etc/apt/sources.list.d/nginx-stable.list
sudo apt-key adv --keyserver keyserver.ubuntu.com --recv-keys C300EE8C
sudo apt-get update
sudo apt-get install nginx
sudo service nginx start

#add vagrant user to www-data group
usermod -G www-data vagrant

#configure default site
sudo rm /etc/nginx/sites-available/default
sudo cp /vagrant/configs/default.site /etc/nginx/sites-available/default

#copy site contents
cp -R /vagrant/sites/devtools.buonzz.com /home/vagrant
sudo nginx -s reload


#install php
sudo apt-get install php5-fpm

# edit and adjust the config to cgi.fix_pathinfo=0
sudo nano /etc/php5/fpm/php.ini

# edit and make sure  listen = /var/run/php5-fpm.sock
sudo nano /etc/php5/fpm/pool.d/www.conf

# Uncomment all permission lines, like:
# listen.owner = www-data
# listen.group = www-data
# listen.mode = 0660

sudo service php5-fpm restart


#upgrade PHP to 5.4
sudo apt-get install python-software-properties
sudo add-apt-repository ppa:ondrej/php5-oldstable
sudo apt-get update
sudo apt-get install php5


# install mongodb
sudo apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv 7F0CEB10
echo 'deb http://downloads-distro.mongodb.org/repo/ubuntu-upstart dist 10gen' | sudo tee /etc/apt/sources.list.d/mongodb.list
sudo apt-get update
sudo apt-get install -y mongodb-org

#install php driver
sudo apt-get install php-pear php5-dev make
sudo pecl install mongo
sudo nano /etc/php5/fpm/php.ini
# add extension=mongo.so
sudo service php5-fpm restart


# install supervisord & beanstalkd
sudo apt-get install -y supervisor
sudo aptitude install -y beanstalkd

sudo iptables -I INPUT -p tcp --dport 3306 -j ACCEPT
sudo iptables-save

sudo iptables -I INPUT -p tcp --dport 27017 -j ACCEPT
sudo iptables-save

# install mcrypt
sudo apt-get install -y php5-mcrypt
sudo php5enmod mcrypt


# Install Composer
curl -sS https://getcomposer.org/installer | php
sudo mv composer.phar /usr/local/bin/composer



