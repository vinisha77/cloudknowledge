FROM centos:latest
MAINTAINER vinshu.goudra@gmail.com
Run yum install -y httpd \
zip \
unzip
ADD https://www.free-css.com/assets/files/free-css-templates/download/page247/kindle.zip /var/www/html/
WORKDIR /var/www/html
RUN unzip kindle.zip
RUN copy -rvf markups-kindle/* .
RUN rm -rf _MACOSX cmarkups-kindle.zip
CMD ["/user/sbin/https", "-D" "FOREGROUND"]
EXPOSE 80
