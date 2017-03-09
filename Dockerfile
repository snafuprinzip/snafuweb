FROM nginx:latest

COPY html /usr/share/nginx/html
RUN sed s/80/8000/g /etc/nginx/conf.d/default.conf && \
    chmod -R a+rwX /var/cache/nginx /usr/share/nginx/html

EXPOSE 8000

