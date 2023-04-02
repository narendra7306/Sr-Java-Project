FROM ubuntu
RUN apt-get -y update
RUN apt-get -y install nginx
COPY facebook /var/www/html
EXPOSE 80
CMD ["nginx","-g","daemon off;"]
