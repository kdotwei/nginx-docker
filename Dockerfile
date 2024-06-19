FROM debian:bookworm

WORKDIR /app

RUN apt update
RUN apt upgrade -y
RUN apt install -y nginx

COPY ./www /var/www
COPY ./nginx /etc/nginx

CMD ["nginx", "-g", "daemon off;"]