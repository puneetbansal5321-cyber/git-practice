FROM ubuntu:latest

RUN apt update && apt install -y nginx \
    && rm -f /etc/nginx/sites-enabled/default

COPY nginx/default.conf /etc/nginx/conf.d/default.conf
COPY website/ /usr/share/nginx/html/

CMD ["nginx", "-g", "daemon off;"]
