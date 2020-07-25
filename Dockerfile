FROM nginx:1.19.1

COPY ssl /etc/nginx/ssl

COPY nginx.conf /etc/nginx/nginx.conf

COPY src /var/www/html

EXPOSE 80
EXPOSE 443
