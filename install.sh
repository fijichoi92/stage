#!bin/bash
setenforce 0
yum install -y httpd
amazon-linux-extras enable php7.2
amazon-linux-extras enable lamp-mariadb10.2-php7.2 
yum install -y php-cli php-pdo php-fpm php-json php-mysqlnd mariadb
wget https://ko.wordpress.org/latest-ko_KR.tar.gz
tar xvfz latest-ko_KR.tar.gz
cp -a ./wordpress/* /var/www/html/
chown -R apache.apache /var/www/html
sed -i 's/DirectoryIndex index.html/DirectoryIndex index.php/g' /etc/httpd/conf/httpd.conf
cp /var/www/html/wp-config-sample.php  /var/www/html/wp-config.php
sed -i 's/database_name_here/test/g' /var/www/html/wp-config.php
sed -i 's/username_here/admin/g' /var/www/html/wp-config.php
sed -i 's/password_here/dinho2005!/g' /var/www/html/wp-config.php
sed -i 's/localhost/test.cv4tgr0nfb4a.ap-northeast-2.rds.amazonaws.com/g' /var/www/html/wp-config.php
echo "KHCHOI-WEB" > /var/www/html/health.html
systemctl enable httpd
systemctl start httpd