FROM devopsedu/webapp

RUN apt-get update
RUN apt-get install apache2 php7.4 -y
COPY website /var/www/html/website

EXPOSE 80

CMD ["httpd", "-k", "start"]
