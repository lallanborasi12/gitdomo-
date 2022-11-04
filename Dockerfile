FROM ubuntu
MAINTAINER lallan kumar

WORKDIR /home

RUN apt-get update
RUN apt-get install -y apache2
RUN apt-get install -y zip
RUN mkdir -p /var/lock/apache2
RUN mkdir -p /var/run/apache2
RUN echo "AVV media services I" > /tmp/lallan

ENV APACHE_RUN_USER www-data
ENV APACHE_RUN_GROUP www-data
ENV APACHE_PID_FILE /var/run/apache2.pid
ENV APACHE_RUN_DIR /var/run/apache2
ENV APACHE2_LOCK_DIR /var/lock/apache2
ENV APACHE2_LOG_DIR /var/log/apache2
ENV LANG C 
ENV myname Deepak Singh
COPY newfile.zip  /tmp
ADD test.tar.gz /tmp
CMD ["/usr/sbin/apache2","-D","FOREGROUND"]
EXPOSE 80
