FROM ubuntu:latest
RUN apt-get update -y && \
    apt-get install apache2 -y && \
    apt-get install apache2-utils -y 
EXPOSE 80
COPY index.html /var/www/html/
CMD ["apache2ctl", "-D", "FOREGROUND"]
