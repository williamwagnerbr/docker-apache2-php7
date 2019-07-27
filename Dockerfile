FROM ubuntu:18.04
MAINTAINER william.wagner.br@gmail.com
ENV TZ=GB-Eire
ENV DEBIAN_FRONTEND=noninteractive
RUN apt-get update
RUN apt-get install -y apache2
RUN apt install -y php libapache2-mod-php php-mysql php-pgsql
EXPOSE 80 443
VOLUME ["/var/www", "/var/log/apache2", "/etc/apache2/sites-available", "/etc/apache2/sites-enabled"]
ENTRYPOINT ["/usr/sbin/apache2ctl", "-D", "FOREGROUND"]