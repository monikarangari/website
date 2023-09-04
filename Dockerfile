FROM ubuntu:latest
RUN apt-get update -y && \
    apt-get install apache2 -y && \
    apt install –y apache2-utils 
EXPOSE 80
COPY index.html /var/www/html/
CMD [“apache2ctl”, “-D”, “FOREGROUND”]
