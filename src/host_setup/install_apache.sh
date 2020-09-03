apt-get install software-properties-common
apt-get purge -y apache2
apt autoremove -y apache2
apt-get purge -y apache2
apt-get purge -y apache2*


apt-get install -y apache2
cp -rf ../host_config/* /etc/apache2/sites-available/
a2ensite drive.vikilabs.org.conf  
a2ensite drive.vikilabs.org-ssl.conf
':
a2enmod rewrite
a2enmod headers
a2enmod env
a2enmod dir
a2enmod mime
a2enmod ssl
#a2enmod lbmethod_byrequests
a2enmod proxy
a2enmod proxy_http
a2enmod proxy_ajp
a2enmod rewrite
a2enmod deflate
a2enmod headers
a2enmod proxy_balancer        
a2enmod proxy_connect
a2enmod proxy_html
a2enmod xml2enc
service apache2 restart
:



