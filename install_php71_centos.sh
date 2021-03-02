#!/bin/bash
### Install PHP 7.1 on CentOS 7.3 64Bits
### http://www.shaunfreeman.name/compiling-php-7-on-centos/
### https://www.howtoforge.com/tutorial/how-to-install-php-7-on-debian/


yum -y install git gcc gcc-c++ libxml2-devel pkgconfig openssl-devel bzip2-devel curl-devel libpng-devel libjpeg-devel 
yum -y install libXpm-devel freetype-devel gmp-devel libmcrypt-devel mariadb-devel aspell-devel recode-devel libpqxx-devel
yum -y install autoconf bison re2c libicu-devel libwebp-devel wget unzip net-tools libc-client-devel libpng12-devel
yum -y install libxslt-devel


mkdir -p /opt/php-7.1
mkdir /usr/local/src/php7-build
cd /usr/local/src/php7-build
wget http://br1.php.net/get/php-7.1.0.tar.bz2/from/this/mirror -O php-7.1.0.tar.bz2
tar jxf php-7.1.0.tar.bz2
cd php-7.1.0/


./configure --prefix=/opt/php-7.1 --with-pdo-pgsql --with-zlib-dir --with-freetype-dir --enable-mbstring \
--with-libxml-dir=/usr --enable-soap --enable-intl --enable-calendar --with-curl --with-mcrypt --with-zlib \
--with-gd --with-pgsql --disable-rpath --enable-inline-optimization --with-bz2 --with-zlib --enable-sockets \
--enable-sysvsem --enable-sysvshm --enable-pcntl --enable-mbregex --enable-exif --enable-bcmath --with-mhash \
--enable-zip --with-pcre-regex --with-pdo-mysql --with-mysqli --with-mysql-sock=/var/lib/mysql/mysql.sock \
--with-xpm-dir=/usr --with-webp-dir=/usr --with-jpeg-dir=/usr --with-png-dir=/usr --enable-gd-native-ttf \
--with-openssl --with-fpm-user=apache --with-fpm-group=apache --with-libdir=lib64 --enable-ftp --with-imap \
--with-imap-ssl --with-kerberos --with-gettext --with-xmlrpc --with-xsl --enable-opcache --enable-fpm

make
make install
cp /usr/local/src/php7-build/php-7.1.0/php.ini-production /opt/php-7.1/lib/php.ini
cp /opt/php-7.1/etc/php-fpm.conf.default /opt/php-7.1/etc/php-fpm.conf
cp /opt/php-7.1/etc/php-fpm.d/www.conf.default /opt/php-7.1/etc/php-fpm.d/www.conf


## Mudar ini do PHP
for i in /opt/php-7.*/lib/php.ini;do
sed -i 's|max_execution_time = 30|max_execution_time = 120|' $i
sed -i 's|upload_max_filesize = 2M|upload_max_filesize = 32M|' $i
sed -i 's|post_max_size = 8M|post_max_size = 32M|' $i
sed -i 's|error_reporting = E_ALL & ~E_DEPRECATED|error_reporting =  E_ERROR|' $i
sed -i 's|short_open_tag = Off|short_open_tag = On|' $i
sed -i "s|;date.timezone =|date.timezone = 'America\/Sao_Paulo'|" $i
done


echo 'zend_extension=opcache.so' >> /opt/php-7.1/lib/php.ini

### Change PHP-FPM Config
sed -i "s|;pid = run/php-fpm.pid|pid = run/php-fpm.pid|" /opt/php-7.1/etc/php-fpm.conf
sed -i "s|listen = 127.0.0.1:9000|listen = 127.0.0.1:8999|" /opt/php-7.1/etc/php-fpm.d/www.conf
sed -i "s|;include=etc/fpm.d/\*.conf|include=/opt/php-7.1/etc/php-fpm.d/\*.conf|" /opt/php-7.1/etc/php-fpm.conf


echo '[Unit]
Description=The PHP 7.1 FastCGI Process Manager
After=network.target

[Service]
Type=simple
PIDFile=/opt/php-7.1/var/run/php-fpm.pid
ExecStart=/opt/php-7.1/sbin/php-fpm --nodaemonize --fpm-config /opt/php-7.1/etc/php-fpm.conf
ExecReload=/bin/kill -USR2 $MAINPID

[Install]
WantedBy=multi-user.target' > /lib/systemd/system/php-7.1-fpm.service


systemctl enable php-7.1-fpm.service
systemctl daemon-reload
systemctl start php-7.1-fpm.service