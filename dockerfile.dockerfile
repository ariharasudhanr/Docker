from ubuntu:20.04
env DEBIAN_FRONTEND=noninteractive
env TZ-Etc/UTC
run apt-get update && \
   apt-get install -y apache2 tzdata
copy index.html /var/www/html/index.html
expose 80
cmd ["apachectl", "-D", "FOREGROUND"]