FROM nginx:latest

COPY html /usr/share/nginx/html
RUN chmod -R a+rwX /var/cache/nginx /usr/share/nginx/html

EXPOSE 80

