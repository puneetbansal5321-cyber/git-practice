FROM ubuntu:latest

RUN apt update && apt install -y nginx \
    && rm -f /etc/nginx/sites-enabled/default

CMD ["nginx", "-g", "daemon off;"]
