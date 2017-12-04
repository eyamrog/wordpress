#!/bin/bash
yum -y update
yum -y install httpd24 php71 php71-mysqlnd stress
mv /etc/httpd/conf/httpd.conf /etc/httpd/conf/httpd.conf.orig
aws s3 cp s3://eyamrog-bucket/wordpress/httpd24.conf /etc/httpd/conf/httpd.conf
aws s3 cp s3://eyamrog-bucket/wordpress/albhealthcheck.html /var/www/html/
aws s3 cp s3://eyamrog-bucket/wordpress/.htaccess /var/www/html/
wget https://wordpress.org/latest.tar.gz
tar -xzf ./latest.tar.gz
cp -r ./wordpress/* /var/www/html/
groupadd www
usermod -a -G www ec2-user
usermod -a -G www apache
chown -R root:www /var/www/
chmod 2775 /var/www/
find /var/www/ -type d -exec sudo chmod 2775 {} +
find /var/www/ -type f -exec sudo chmod 0644 {} +
chkconfig httpd on
service httpd start